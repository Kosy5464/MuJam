var _CANVAS = document.querySelector("#video-canvas"), //영상 캡처 보여주는 부분
    _CTX = _CANVAS.getContext("2d"),
    _VIDEO = document.querySelector("#main-video"); //동영상 띄우는 부분 가져오쥬?

//영상 선택후 업로드하는 부분
document
    .querySelector("#video_upload")
    .addEventListener("change", function () {
        /*    if (
                ["video/mp4"].indexOf(
                    document.querySelector("#video_upload").files[0].type
                ) == -1
            ) {
                alert("Error : Only MP4 format allowed");
                return;
            }
    */
        // 비디오 띄우는 소스 가져오쥬? 사실 잘몰라 보이는데로 씀
        document
            .querySelector("#main-video source")
            .setAttribute(
                "src",
                URL.createObjectURL(
                    document.querySelector("#video_upload").files[0]
                )
            );

        // 비디오 보여줌
        _VIDEO.load();
        _VIDEO.style.display = "inline";

        // 오오 시간 가져오는 부분~
        _VIDEO.addEventListener("loadedmetadata", function () {
            console.log(_VIDEO.duration);
            /*var video_duration = _VIDEO.duration,
                duration_options_html = "";
              for (var i = 0; i < Math.floor(video_duration); i = i + 4) {
                  duration_options_html +=
                      '<option value="' + i + '">' + i + "</option>";
              }*/
            /*document.querySelector(
                "#set-video-seconds"
            ).innerHTML = duration_options_html;
*/
            // 셀렉박스로 시간(초) 선택하도록 보여주는 부분
            document.querySelector("#thumbnail-container").style.display =
                "block";

            // 비디오 화면 크기랑 같게 캡처 이미지 보여주는 부분/여기 조절하면 보기 좋게 크기 맞출수 있겠다.
            // 이거 쓸 시간에 그냥 내가 할 걸 그랬나 미안
            _CANVAS.width = _VIDEO.clientWidth;
            _CANVAS.height = _VIDEO.clientHeight;
        });
    });

document
    .querySelector("#set-video-seconds")
    .addEventListener("change", function () {
        /*_VIDEO.currentTime = document.querySelector(
            "#set-video-seconds"
        ).value;*/
        // Seeking might take a few milliseconds, so disable the dropdown and hide download link
        document.querySelector("#set-video-seconds").disabled = true;
        document.querySelector("#get-thumbnail").style.display = "none";
    });

// Seeking video to the specified duration is complete <<해석해 잘 모르겠어
// 동영상 몇분짜리인지 파악하고 N초 단위로 끊는 작업을 완료했을때?
document
    .querySelector("#main-video")
    .addEventListener("timeupdate", function () {
        // Re-enable the dropdown and show the Download link
        // 드롭다운이 활성화되고 다운로드 링크가 보임
        document.querySelector("#set-video-seconds").disabled = false;
        document.querySelector("#get-thumbnail").style.display = "inline";
    });

//기존에 썸네일 다운로드를 눌러야 미리보기 썸네일 이미지가 나왔는데 드랍박스에서 초를 선택하면 미리보기 이미지가 나오게하는 코드 추가

document
    .querySelector("#set-video-seconds")
    .addEventListener("click", function () {
        _CTX.drawImage(_VIDEO, 0, 0,  _VIDEO.clientWidth, _VIDEO.clientHeight);
    });


// 이미지 다운로드 하는 부분!
document
    .querySelector("#get-thumbnail")
    .addEventListener("click", function () {

        document
            .querySelector("#get-thumbnail")
            .setAttribute("href", _CANVAS.toDataURL());
        document
            .querySelector("#get-thumbnail")
            .setAttribute("download", "thumbnail.png");
        console.log('123');
    });


// tab부분
$('.nav-tabs a').click(function(){
    $(this).tab('show');
})


//썸네일 이미지 미리보기 부분
var file = document.querySelector('#thumbnail_upload');

file.onchange = function () {
    var fileList = file.files ;

    // 읽기
    var reader = new FileReader();
    reader.readAsDataURL(fileList [0]);

    //로드 한 후
    reader.onload = function  () {
        document.querySelector('#preview').src = reader.result ;
    };
};
//여기까지 썸네일 업로드 부분
