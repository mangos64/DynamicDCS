const _ = require('lodash');
const fs = require('fs');
const path = require('path');

const CACHE_TEMPLATES = false;

const templateCache = {};
const templateFileDirectory = './templates';

const getTemplateFromFile = function (templateName) {
	let templateString;

	if (templateName) {
		// Check to see if the file has already been read,
		// as we don't want to perform expensive file operations
		// every time someone tries to spawn something.
		let possibleCachedTemplate;
		if (CACHE_TEMPLATES) {
			possibleCachedTemplate = _.get(templateCache, templateName);
		}

		if (possibleCachedTemplate) {
			console.log('Loading unit template from cache');
			templateString = possibleCachedTemplate;
		} else {
			console.log("Unit template doesn't exist in cache, loading from file");
			try {
				const filePath = path.join(__dirname, `${templateFileDirectory}/${templateName}.lua`);

				// Read the template string from the file
				templateString = fs.readFileSync(filePath, 'utf-8');

				// Store the template string in memory for access later
				templateCache[templateName] = templateString;
			} catch (err) {
				console.log('Failed to load unit template file: ', err);
			}
		}
	}

	return templateString;
};

_.assign(exports, {
	getTemplateFromFile: getTemplateFromFile
});
