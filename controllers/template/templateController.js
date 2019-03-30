const _ = require('lodash');
const fs = require('fs');
const path = require('path');

const templateCache = {};
const templateFileDirectory = './templates';

const getTemplateFromFile = function (templateName) {
	if (!templateName) {
		return; // Template name
	}

	// Check to see if the file has already been read,
	// as we don't want to perform expensive file operations
	// every time someone tries to spawn something.
	let templateString;
	const possibleCachedTemplate = _.get(templateCache, templateName);
	if (possibleCachedTemplate) {
		console.log("Loading unit template from cache");
		templateString = possibleCachedTemplate;
	} else {
		console.log("Unit template doesn't exist in cache, loading from file");
		try {
			const filePath = path.join(__dirname, `${templateFileDirectory}/${templateName}.lua`);
			templateString = fs.readFileSync(filePath, 'utf-8'); // Read the template string from the file
			templateCache[templateName] = templateString; // Store the template string in memory for access later
		} catch (err) {
			console.log("Failed to load unit template file: ", err);
		}
	}

	return templateString;
}

_.assign(exports, {
	getTemplateFromFile: getTemplateFromFile
})