!function(e, t, a) {
    function o(e) {
        var t = -1
            , a = [" kB", " MB", " GB", " TB", "PB", "EB", "ZB", "YB"];
        do
            e /= 1024,
                t++;
        while (e > 1024);return Math.max(e, .1).toFixed(1) + a[t]
    }
    e(function() {
        !function() {
            var t = []
                , a = e(".xvideo-form-validation").find('[type="submit"]')
                , i = new plupload.Uploader({
                runtimes: "flash",
                browse_button: "apv-btn-pickfile",
                container: document.getElementById("xvideo-upload-video-file-drop-area"),
                url: xvideoData.upload_url,
                drop_element: document.getElementById("xvideo-upload-video-file-drop-area"),
                max_retries: 3,
                chunk_size: "900kb",
                unique_names: !0,
                headers: {
                    "X-CSRF-TOKEN": e('meta[name="csrf-token"]').attr("content"),
                    "X-Requested-With": "XMLHttpRequest"
                },
                filters: {
                    max_file_size: "500mb",
                    prevent_duplicates: !0,
                    mime_types: [{
                        title: "Video files",
                        extensions: "mov,avi,mp4,wmv"
                    }]
                },
                flash_swf_url: "/vendor/jildertmiedema/laravel-plupload/js/Moxie.swf",
                silverlight_xap_url: "/vendor/jildertmiedema/laravel-plupload/js/Moxie.xap",
                init: {
                    PostInit: function() {
                        e(".xvideo-fileremove-container").attr("data-id", "").hide(),
                            e("#apv-btn-removeFile").click(function(t) {
                                var a = e(t.currentTarget).parent().attr("data-id");
                                i.removeFile(a),
                                    e("#upload-speed").text("0 MB"),
                                    e("#total-upload-size").text("0 MB"),
                                    e("#current-upload-size").text("0 MB"),
                                    e(".progress-bar").removeClass("progress-bar-success").addClass("xvideo-progress"),
                                    e("#xvideo-upload-name").text("请上传文件"),
                                    e(".xvideo-filepicker-container").find("a").removeAttr("disabled").end().removeClass("fix-hidden")
                            })
                    },
                    FilesAdded: function(t, a) {
                        e(".progress > .progress-bar").attr("data-transitiongoal", 0).progressbar(),
                            e("#xvideo-current-percent").show(),
                            plupload.each(a, function(t) {
                                e("#total-upload-size").text(o(t.size)),
                                    e("#xvideo-upload-name").text(t.name),
                                    e("#current-upload-size").text(t.loaded),
                                    i.start()
                            })
                    },
                    FilesRemoved: function(t, a) {
                        plupload.each(a, function(t) {
                            e("#" + t.id).remove()
                        })
                    },
                    UploadProgress: function(t, a) {
                        e(".btn-upload-video").attr("disabled", "disabled"),
                            e(".xvideo-filepicker-container").find("a").attr("disabled", "disabled"),
                            e(".progress-bar").removeClass("xvideo-progress"),
                            t.disableBrowse(!0),
                            e(".progress > .progress-bar").attr("data-transitiongoal", a.percent).progressbar({
                                update: function(a) {
                                    e("#upload-speed").text(o(t.total.bytesPerSec)),
                                        e("#current-upload-size").text(o(t.total.loaded))
                                }
                            })
                    },
                    ChunkUploaded: function(t, a, o) {
                        200 === o.status && o.offset < o.total && e("#xvideo-current-percent").html("-> " + Math.floor(o.offset / o.total * 100, -2) + "%")
                    },
                    FileUploaded: function(t, a, o) {
                        e("#apv-btn-pickfile").removeAttr("disabled"),
                            e(".progress > .progress-bar").attr("data-transitiongoal", 0),
                            e(".progress-bar").addClass("progress-bar-success"),
                            e("#xvideo-upload-name").html("文件上传成功"),
                            e("#xvideo-current-percent").hide(),
                            e(".btn-upload-video").removeAttr("disabled"),
                            e('[name="id"]').val(JSON.parse(o.response).result.id),
                            t.disableBrowse(!1)
                    },
                    Error: function(e, t) {
                        "-600" == t.code ? show_diy_layer("文件大小不能大于500mb") : show_diy_layer(t.message)
                    }
                }
            });
            i.init(),
                _.delay(function() {
                    function o() {
                        for (var o = t.length - 1; o >= 0; o--) {
                            if ("true" !== e(t[o]).attr("data-is-valid")) {
                                a.attr("disabled", "disabled");
                                break
                            }
                            a.removeAttr("disabled")
                        }
                    }
                    function r(e, t) {
                        e.forEach(function(e, a) {
                            var o = e.closest(".form-group")
                                , i = o.find(".help-block").hide();
                            t && i.hide(),
                            e.is('[type="file"]') || d(e, o, i)
                        })
                    }
                    function d(e, t, a) {
                        l(e, t, a)
                    }
                    function n(e) {
                        return "" === e || void 0 === e
                    }
                    function s(e, t) {
                        return e.length > t
                    }
                    function l(t, a, i) {
                        t.on("keyup input propertychange focusin focusout", function(r) {
                            function d() {
                                n(t.val()) && !n(f) ? (t.attr("data-is-valid", !1),
                                    u(i, a, e(l))) : h && s(t.val(), h) ? (t.attr("data-is-valid", !1),
                                    u(i, a, e(l))) : (t.attr("data-is-valid", !0),
                                    v(i, a))
                            }
                            var l = this
                                , p = e(r.currentTarget)
                                , f = p.attr("nullmsg")
                                , h = parseInt(e(this).attr("maxlength"));
                            switch (r.type) {
                                case "focusin":
                                    v(i, a),
                                        c(i, a, e(this));
                                    break;
                                case "focusout":
                                case "keyup":
                                case "input":
                                case "propertychange":
                                    d()
                            }
                            o()
                        })
                    }
                    function c(e, t, a) {
                        var o = e.find(">span.xyvideo-icon-checkmark")
                            , i = e.find(">span.xyvideo-icon-cancel3")
                            , r = a.attr("tipmsg") || "请填写合适的内容";
                        e.show(),
                            o.show(),
                            o.find(".ib").text(r),
                            i.hide(),
                            t.removeClass("has-error").addClass("has-success")
                    }
                    function u(e, t, a) {
                        var o = e.find(">span.xyvideo-icon-checkmark")
                            , i = e.find(">span.xyvideo-icon-cancel3")
                            , r = a.attr("nullmsg") || "";
                        a.attr("errormsg") || "";
                        e.show(),
                            o.hide(),
                            i.show(),
                            i.find(".ib").text(r),
                            t.removeClass("has-success").addClass("has-error")
                    }
                    function v(e, t) {
                        var a = e.find(">span.xyvideo-icon-checkmark")
                            , o = e.find(">span.xyvideo-icon-cancel3");
                        e.hide(),
                            a.hide(),
                            o.hide(),
                            t.removeClass("has-error has-success")
                    }
                    e(".xvideo-form-validation *").filter(":input").each(function(a, o) {
                        var i = e(o);
                        "hidden" !== i.attr("type") && "button" !== i.attr("type") && "submit" !== i.attr("type") && "xvideo-upload-video-tag_tag" !== i.attr("id") && t.push(i)
                    }),
                        i.bind("StateChanged", function() {
                            i.files.length && i.total.uploaded ? (e('input[type="file"]').attr("data-is-valid", !0),
                                o()) : (e('input[type="file"]').attr("data-is-valid", !1),
                                o())
                        }),
                        r(t, !0),
                        a.on("click", function(t) {
                            t.preventDefault();
                            var a = e(".xvideo-form-validation");
                            return i.files.length && i.total.uploaded ? void e.ajax({
                                url: "/v/store?" + a.serialize(),
                                type: "POST",
                                success: function(e) {
                                    e.result ? window.location.href = "/v/video-upload-tips/1" : window.location.href = "/v/video-upload-tips/0"
                                }
                            }) : (show_diy_layer("上传视频文件不能为空哦"),
                                !1)
                        }),
                        e('input[type="checkbox"]').iCheck({
                            checkboxClass: "icheckbox_square-pink"
                        }).on("ifClicked", function(t) {
                            t.currentTarget.checked ? (e(t.currentTarget).attr("data-is-valid", !1),
                                o()) : (e(t.currentTarget).attr("data-is-valid", !0),
                                o())
                        })
                }, 500)
        }()
    }),
        e(".xvideo-upload-tags-btn").on("click", function(t) {
            e(".xvideo-upload-dialog").removeClass("hide")
        }),
        e(".xvideo-upload-close").on("click", function(t) {
            e(".xvideo-upload-dialog").addClass("hide")
        }),
        e(".tag-content").on("click", function(t) {
            return e(".tag-content.active").length >= 5 && !e(t.currentTarget).hasClass("active") ? void e(".xvideo-upload-tips").removeClass("hide") : (e(".xvideo-upload-tips").addClass("hide"),
                void (e(t.currentTarget).hasClass("active") ? e(t.currentTarget).removeClass("active") : e(t.currentTarget).addClass("active")))
        }),
        e(".btn-upload-choose").on("click", function(t) {
            5 == e(".tag-content.active").length ? (e(".xvideo-upload-tags-btn").attr("disabled", "true"),
                e(".xvideo-upload-tags-btn").css("background-color", "#a7a7a7")) : (e(".xvideo-upload-tags-btn").removeAttr("disabled"),
                e(".xvideo-upload-tags-btn").removeAttr("background-color")),
                e("div").remove(".xvideo-uploadu-tags-content");
            var a = "";
            e(".tag-content.active").each(function() {
                var t = '<div class="xvideo-uploadu-tags-content"><div class="tags-content-close"></div>' + this.innerText + "</div>";
                e(t).appendTo(".xvideo-uploadu-tags-container"),
                    a = "" == a ? this.innerText : a + "," + this.innerText
            }),
                e(".xvideo-upload-dialog").addClass("hide"),
                e("#xvideo-upload-video-tag").val(a),
                console.log(e("#xvideo-upload-video-tag").val())
        }),
        e(".xvideo-uploadu-tags-container").on("click", ".tags-content-close", function(t) {
            e(t.currentTarget).closest(".xvideo-uploadu-tags-content").remove(),
                e(".xvideo-upload-tags-btn").removeAttr("disabled"),
                e(".xvideo-upload-tags-btn").removeAttr("style");
            var a = e(e(t.currentTarget).closest(".xvideo-uploadu-tags-content"))[0].innerText
                , o = e("#xvideo-upload-video-tag").val().split(",");
            o.splice(jQuery.inArray(a, o), 1),
                e("#xvideo-upload-video-tag").val(o.toString()),
                e(".tag-content.active").each(function() {
                    a == this.innerText && e(this).removeClass("active")
                })
        }),
        e('input[type="radio"]').iCheck({
            radioClass: "iradio_square-pink"
        })
}($, window.riot, window);
