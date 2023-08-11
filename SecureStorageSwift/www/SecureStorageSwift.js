var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'SecureStorageSwift', 'coolMethod', [arg0]);
};

exports.echo = function(arg0, success, error) {
    exec(success, error, "SecureStorageSwift", "echo", [arg0]);
  };
  
//   exports.echojs = function(arg0, success, error) {
//     if (arg0 && typeof(arg0) === 'string' && arg0.length > 0) {
//       success(arg0);
//     } else {
//       error('Empty message!');
//     }
// };

// Empty constructor
function SecureStorageSwift() {}

// The function that passes work along to native shells
// Message is a string, duration may be 'long' or 'short'
SecureStorageSwift.prototype.show = function(message, duration, successCallback, errorCallback) {
  var options = {};
  options.message = message;
  options.duration = duration;
  cordova.exec(successCallback, errorCallback, 'SecureStorageSwift', 'show', [options]);
}

// Installation constructor that binds ToastyPlugin to window
SecureStorageSwift.install = function() {
  if (!cordova.plugins) {
    cordova.plugins = {};
  }
  cordova.plugins.SecureStorageSwift = new SecureStorageSwift();
  return cordova.plugins.SecureStorageSwift;
};