(function (angular) {
	'use strict';

	function SocketFactory (socketFactory) {
		var mySocket = socketFactory();
		mySocket.forward('srvUnitUpd'); //stream of unit updates
		mySocket.forward('error'); //forward socket errors
		return mySocket;
	}
	SocketFactory.$inject = [
		'socketFactory'
	];

	angular
		.module('dynamic-dcs.socketFactory', [
			'btford.socket-io'
		])
		.factory('mySocket', SocketFactory)
	;
}(angular));

