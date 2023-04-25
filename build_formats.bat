@echo off

RMDIR /S /Q all_format_media
MKDIR all_format_media

ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx264 -profile:v baseline -level 5.2 -c:a copy all_format_media\cut_480x320_264_8bit_baseline.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx264 -profile:v main -level 5.2 -c:a copy all_format_media\cut_480x320_264_8bit_main.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx264 -profile:v high -level 5.2 -c:a copy all_format_media\cut_480x320_264_8bit_high.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx264 -pix_fmt yuv420p10le -profile:v high10 -c:a copy all_format_media\cut_480x320_264_10bit_high10.mp4

ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx265 -profile:v main -level 5.2 -c:a copy all_format_media\cut_480x320_265_8bit_main.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx265 -profile:v msp -level 5.2 -c:a copy all_format_media\cut_480x320_265_8bit_msp.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libx265 -pix_fmt yuv420p10le -profile:v main10 -level 5.2 -c:a copy all_format_media\cut_480x320_265_10bit_main10.mp4

ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libvpx-vp9 -profile:v 0 -c:a copy all_format_media\cut_480x320_vp9_8bit_profile_0.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libvpx-vp9 -pix_fmt yuv420p10le -profile:v 2 -c:a copy all_format_media\cut_480x320_vp9_10bit_profile_2.mp4

ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libaom-av1 -c:a copy all_format_media\cut_480x320_av1_8bit.mp4
ffmpeg-2023-04-24\ffmpeg.exe -y -i cut_480x320.mp4 -c:v libaom-av1 -pix_fmt yuv420p10le -c:a copy all_format_media\cut_480x320_av1_10bit.mp4



