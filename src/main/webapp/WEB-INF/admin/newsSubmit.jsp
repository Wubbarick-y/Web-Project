<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>

    <!-- 引入 css -->
    <link href="https://unpkg.com/@wangeditor/editor@latest/dist/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">
    <style>

        html,
        body {
            background-color: #fff;
            height: 100%;
            overflow: hidden;
            color: #333;
        }

        #top-container {
            border-bottom: 1px solid #e8e8e8;
            padding-left: 30px;
            display: flex;
        }

        #editor-toolbar {
            width: 1350px;
            background-color: #FCFCFC;
            margin: 0 auto;
        }

        #content {
            height: calc(100% - 40px);
            background-color: rgb(245, 245, 245);
            overflow-y: auto;
            position: relative;
        }

        #editor-container {
            width: 850px;
            margin: 30px auto 150px auto;
            background-color: #fff;
            padding: 20px 50px 50px 50px;
            border: 1px solid #e8e8e8;
            box-shadow: 0 2px 10px rgb(0 0 0 / 12%);
        }

        #title-container {
            padding: 20px 0;
            border-bottom: 1px solid #e8e8e8;
        }

        #title-container input {
            font-size: 30px;
            border: 0;
            outline: none;
            width: 100%;
            line-height: 1;
        }

        #editor-text-area {
            min-height: 900px;
            margin-top: 20px;
        }

    </style>
</head>

<body>
<div id="top-container">
    <span style="font-size:1.4rem;display: inline-block">
        <strong>新闻发布</strong>
    </span>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#submitModal" style="width: 6rem;margin-left: auto;">
        提交
    </button>

    <%--modalSTART--%>
    <div class="modal fade" id="submitModal" tabindex="-1" role="dialog" aria-labelledby="submitModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="submitModalLabel">请确认</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    当您点下按钮后，新闻将会被推送到学院首页。请您仔细确认后，点击发送按钮。
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">我再想想</button>
                    <button type="button" class="btn btn-primary" id="announcementSubmit">发送</button>
                </div>
            </div>
        </div>
    </div>
    <%--modalEND--%>

</div>

<div style="border-bottom: 1px solid #e8e8e8;">
    <div id="editor-toolbar"></div>
</div>
<div id="content">
    <div id="editor-container">
        <div id="title-container">
            <input placeholder="文章标题" type="text" id="title">
        </div>
        <div id="editor-text-area"></div>
    </div>
</div>



<!-- 引入 js -->
<script src="https://unpkg.com/@wangeditor/editor@latest/dist/index.js"></script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/shards.min.js"></script>
<script>
    $(()=>{

            const E = window.wangEditor
            // 切换语言
            const LANG = location.href.indexOf('lang=en') > 0 ? 'en' : 'zh-CN'
            E.i18nChangeLanguage(LANG)

            const editorConfig = {
                placeholder: 'Type here...',
                scroll: false, // 禁止编辑器滚动
                MENU_CONF: {
                    uploadImage: {
                        fieldName: 'your-fileName',
                        base64LimitSize: 10 * 1024 * 1024 // 10M 以下插入 base64
                    }
                },
                onChange(editor) {
                    console.log(editor.getHtml())
                }

            }

            // 先创建 editor
            const editor = E.createEditor({
                selector: '#editor-text-area',
                content: [],
                // html: '',
                config: editorConfig
            })

            // 创建 toolbar
            const toolbar = E.createToolbar({
                editor,
                selector: '#editor-toolbar',
                config: {
                    excludeKeys: 'fullScreen',
                }
            })

            // 点击空白处 focus 编辑器
            document.getElementById('editor-text-area').addEventListener('click', e => {
                if (e.target.id === 'editor-text-area') {
                    editor.blur()
                    editor.focus(true) // focus 到末尾
                }
            })

            $("#title").change(function (){
                console.log($(this).val())
            })

            $("#announcementSubmit").click(function () {
                $.post("newsSubmit",{
                    title:$("#title").val(),
                    html:editor.getHtml(),
                    detail:editor.getText()
                },()=>{
                    alert("发送成功！即将回到首页");
                    window.location.href='index';
                });

            })

        }
    )
</script>
</body>
</html>