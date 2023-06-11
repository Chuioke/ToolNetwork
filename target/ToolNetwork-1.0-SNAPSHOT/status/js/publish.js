$(function(){
    $('.upload-button').on('change', '#fileCh', function() {
        let fileName = $(this).val().split('\\').pop();
        alert(fileName)
        if (fileName==""){
            $('#file-name').text("选择文件")
        }else{
            $('#file-name').text(fileName);
        }
    });
    tinymce.init({
        selector: '#tinymce-editor',
        language: 'zh_CN',
        toolbar: ' heading | undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify' +
            ' | bullist numlist outdent indent | link image | clear',
        plugins: 'advlist autolink lists link image charmap preview anchor table fullscreen help',
        branding: false,
        height: 700,
        setup:function (editor){
            editor.ui.registry.addButton('clear',{  //注册一个名为clear的按钮,定义行为
                text:'清空内容',    //标题
                onAction:function (){   //点击触发行为
                    editor.setContent('')//清空编译器
                }
            }),
            editor.ui.registry.addMenuButton('heading', {
                text: '标题',
                fetch: function(callback) { //菜单点击时触发,并指定回调函数
                    let items = [   //定义菜单项的内容
                        { type: 'menuitem', text: '标题 1', onAction: function() { editor.execCommand('mceInsertContent', false, '<h1></h1>'); } }, //editor.execCommand(内容插入到编辑器,表示不替换选中内容，内容)
                        { type: 'menuitem', text: '标题 2', onAction: function() { editor.execCommand('mceInsertContent', false, '<h2></h2>'); } },
                        { type: 'menuitem', text: '标题 3', onAction: function() { editor.execCommand('mceInsertContent', false, '<h3></h3>'); } }
                    ];
                    callback(items); //将菜单项数组传递给回调函数
                }
            });
        }
    });
})