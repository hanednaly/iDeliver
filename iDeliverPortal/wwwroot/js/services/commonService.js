(function (app) {
    'use strict';
    app.factory('commonService', ['$log', 'appsettings', function ($log, appsettings) {
        this.redirect = function (path) {
            if (path) {
                window.location.href = appsettings.baseUrl + path;
            } else {
                sessionStorage.removeItem('token');
                window.location.href = appsettings.baseUrl;
            }
        };

        return {
            redirect: this.redirect
        };
    }]);
})(angular.module("iDeliver"));