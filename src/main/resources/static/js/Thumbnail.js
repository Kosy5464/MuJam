var file = document.querySelector('#getfile');

file.onchange = function(){
    var fileList = file.files;

    var reader = new FileReader();
    reader.readAsDataURL(fileList[0]);

    reader.onload = function(){
        document.querySelector('#preview').src = reader.result;
    };
};