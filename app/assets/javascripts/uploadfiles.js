$(function () {
	Dropzone.autoDiscover=false;

	$('#my-dropzone').dropzone({
		// maxFilesize: 2,
		addRemoveLinks: true,
		paramName: 'uploadfile[video]'
	});
});