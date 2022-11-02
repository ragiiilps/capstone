/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	config.toolbarGroups = [
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'basicstyles', groups: [ 'basicstyles' ] },
		{ name: 'insert', groups: [ 'insert' ] }
	];

    // config.Flmngr = {
    //     urlFileManager: 'https://fm.flmngr.com/fileManager',
    //     urlFiles: 'https://fm.flmngr.com/files/'
    // }
	config.removeButtons = 'SpecialChar, Image,Find,SelectAll,Scayt,Replace,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,CopyFormatting,RemoveFormat,Subscript,Superscript,NumberedList,BulletedList,Indent,Outdent,Blockquote,CreateDiv,JustifyLeft,JustifyRight,JustifyBlock,Language,BidiRtl,JustifyCenter,BidiLtr,Link,Unlink,Anchor,Flash,PageBreak,Iframe,Smiley,HorizontalRule,Styles,TextColor,BGColor,ShowBlocks,Format,Font,FontSize,About,Save,Templates,NewPage,Preview,Print';
	config.format_tags = 'p;h1;h2;h3;pre';
	config.extraPlugins = 'eqneditor','imageuploader','filebrowser','uploadimage', "file-manager";
	config.allowedContent = true;
	
	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';
	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode = CKEDITOR.ENTER_BR;
	config.filebrowserBrowseUrl = '/ckfinder/ckfinder.html';
	config.filebrowserUploadUrl = '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserImageBrowseUrl = 'ckfinder/ckfinder.html';
	config.filebrowserImageUploadUrl = '/media/uploads/';
	// config.filebrowserBrowseUrl= '/apps/ckfinder/3.4.5/ckfinder.html';
	// config.filebrowserImageBrowseUrl= '/apps/ckfinder/3.4.5/ckfinder.html?type=Images';
	// config.filebrowserUploadUrl= '/apps/ckfinder/3.4.5/core/connector/php/connector.php?command=QuickUpload&type=Files';
	// config.filebrowserImageUploadUrl= '/apps/ckfinder/3.4.5/core/connector/php/connector.php?command=QuickUpload&type=Images';
};

