﻿(function () {
    bender.loadExternalPlugin("exportpdf", "/apps/plugin/"); CKEDITOR.plugins.load("exportpdf", function () {
        function c(a, b) { var c = exportPdfUtils.getDefaultConfig("unit", a || {}); bender.editorBot.create({ name: "editor" + Date.now(), config: c, startupData: "\x3cp\x3eHello World!\x3c/p\x3e" }, function (a) { b && b(a.editor) }) } var b = function () {
            var a = sinon.fakeServer.create(), b = 0; a.respondWith(function (a) {
                "/incremental_token" === a.url ? (a.respond(200, {}, "sample-token-value" + b), b += 1) : "/empty-token" === a.url ? a.respond(200,
                    {}, "") : a.respond(200, {}, "sample-token-value")
            }); return a
        }(), d; bender.test({
            setUp: function () { bender.tools.ignoreUnsupportedEnvironment("exportpdf"); d = sinon.stub(CKEDITOR.plugins.exportpdf, "downloadFile") }, tearDown: function () { d.restore() }, "test token is fetched if tokenUrl is correct": function () {
                c({ exportPdf_tokenUrl: "/custom-url" }, function (a) {
                    a.on("exportPdf", function (a) { assert.areEqual(a.data.token, "sample-token-value", "Token value is incorrect.") }, null, null, 17); b.respond(); a.execCommand("exportPdf");
                    b.respond()
                })
            }, "test authentication header is added if token is provided": function () { c({ exportPdf_tokenUrl: "/custom-url" }, function (a) { b.respond(); a.execCommand("exportPdf"); b.respond(); assert.areEqual("sample-token-value", b.requests[b.requests.length - 1].requestHeaders.Authorization, "Authorization token was not set properly.") }) }, "test console.warn is called if tokenUrl is not provided": function () {
                CKEDITOR.once("log", function (a) {
                    a.cancel(); assert.areEqual("exportpdf-no-token-url", a.data.errorCode,
                        "There should be URL error log.")
                }); c({ exportPdf_tokenUrl: "" })
            }, "test console.warn is called on POST request if token is empty": function () { CKEDITOR.once("log", function (a) { a.cancel(); assert.areEqual("exportpdf-no-token", a.data.errorCode, "`exportpdf-no-token` should occur.") }); c({ exportPdf_tokenUrl: "/empty-token" }, function (a) { b.respond(); a.execCommand("exportPdf"); b.respond() }) }, "test console.warn is called on POST request if token was not fetched at all": function () {
                CKEDITOR.once("log", function (a) {
                    a.cancel();
                    assert.areEqual("exportpdf-no-token", a.data.errorCode, "`exportpdf-no-token` should occur.")
                }); c({ exportPdf_tokenUrl: "/custom-url" }, function (a) { a.execCommand("exportPdf"); b.respond() })
            }, "test token refreshes in the declared intervals": function () {
                CKEDITOR.once("instanceCreated", function (a) { a.editor.exportPdfTokenInterval = 200 }); c({ exportPdf_tokenUrl: "/incremental_token" }, function (a) {
                    b.respond(); setTimeout(function () {
                        resume(function () {
                            b.respond(); a.on("exportPdf", function (a) {
                                assert.areNotSame(a.data.token,
                                    "sample-token-value0", "Token was not refreshed.")
                            }, null, null, 17); a.execCommand("exportPdf"); b.respond()
                        })
                    }, 500); wait()
                })
            }, "test file is downloaded also without token": function () { c({ exportPdf_tokenUrl: "/empty-token" }, function (a) { b.respond(); a.execCommand("exportPdf"); b.respond(); sinon.assert.calledOnce(d); assert.pass() }) }
        })
    })
})();