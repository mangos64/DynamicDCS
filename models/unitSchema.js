const mongoose = require('mongoose'),
	Schema = mongoose.Schema;

// Schema defines how chat messages will be stored in MongoDB
const UnitSchema = new Schema({
	_id: Number,
	unitId: {
		type: Number,
		required: true
	},
	groupId: {
		type: Number,
		required: true
	},
	type: {
		type: String,
		required: true
	},
	coalition: {
		type: Number,
		min: 1,
		max: 2,
		required: true
	},
	category: {
		type: String,
		required: true
	},
	country: {
		type: String,
		required: true
	},
	latLonLoc: {
		type: [Number],
		index: '2dsphere'
	},
	alt: {
		type: Number,
		required: true
	},
	hdg: {
		type: Number,
		min: 0,
		max: 359,
		required: true
	},
	life: {
		type: Number,
		required: true
	},
	maxLife: {
		type: Number
	},
	speed: {
		type: Number
	},
	name: {
		type: String
	},
	groupName: {
		type: String
	},
	playername: {
		type: String
	},
	playerOwnerId: {
		type: Number
	},
	enabled: {
		type: Boolean,
		default: true
	},
	dead: {
		type: Boolean,
		default: false
	}
},
	{
		timestamps: true, // Saves createdAt and updatedAt as dates. createdAt will be our timestamp.
		upsert: true
	}
);

module.exports = UnitSchema;
