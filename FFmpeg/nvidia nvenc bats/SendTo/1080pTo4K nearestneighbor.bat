ffmpeg -hwaccel cuda -hwaccel_output_format cuda -threads 8 -i %1 -vf scale_cuda=3840:2160:1 -c:v hevc_nvenc -preset p7 -rc constqp -qp 18 -c:a copy "%~dpn1 (4K).mp4"
pause

::QP18 is recommended, go higher to decrease filesize and lower to increase quality
::you need FFmpeg 4.4 or newer