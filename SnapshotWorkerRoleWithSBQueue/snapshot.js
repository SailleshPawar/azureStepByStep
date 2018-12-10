var webPage = require('webpage');
system = require('system')
var page = webPage.create();
phantom.onError = function (ex) {
    console.log(ex);
    phantom.exit();
}
page.viewportSize = {
    width: 1920,
    height: 1080
};
var address = system.args[1];
//console.log(address);
page.open(address, function (status) {
    try {
        var base64 = page.renderBase64('PNG');
     console.log(base64);
        phantom.exit();
    }
    catch (ex) {
        console.log(console.log(ex));
        phantom.exit();
    }
});



