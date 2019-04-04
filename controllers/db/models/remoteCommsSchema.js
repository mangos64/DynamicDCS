/*
 * DDCS Licensed under AGPL-3.0 by Andrew "Drex" Finegan https://github.com/afinegan/DynamicDCS
 */

const mongoose = require('mongoose');

// Schema defines how chat messages will be stored in MongoDB
const RemoteCommsSchema = new mongoose.Schema(
	{
		_id: {
			type: String,
			required: true
		},
		isInSRS: {
			type: Boolean,
			default: false
		},
		isInDiscord: {
			type: Boolean,
			default: false
		},
		SRSData: {
			type: Object
		},
	},
	{
		timestamps: true, // Saves createdAt and updatedAt as dates. createdAt will be our timestamp.
		upsert: true
	}
);

module.exports = RemoteCommsSchema;
