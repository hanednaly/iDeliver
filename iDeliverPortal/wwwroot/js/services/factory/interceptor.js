(function (app) {
    app.factory("interceptor", ['$log', '$q', 'commonService', function ($log, $q, commonService) {
        $log.debug('$log is here to show you that this is a regular factory with injection');

        let anonymous = ['login','html'];

        var interceptor = {
            request: function (config) {
                var token = sessionStorage.getItem('token');
                if (!anonymous.some(v => config.url.includes(v))) {
                    if (!token) {
                        commonService.redirect();
                    }
                    else {
                        config.headers["Authorization"] = "bearer " + token;
                    }
                }
                return config;
            },

            requestError: function (config) {                
                commonService.redirect();
            },

            response: function (res) {
                return res;
            },

            responseError: function (res) {
                $q.reject(res)
                return res;
            }
        };

        return interceptor;
    }])
})(angular.module("iDeliver"));