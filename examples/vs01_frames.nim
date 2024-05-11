import ffmpeg6
import std/[strformat]

# for frame in openAV("media/sample-5s.mp4").video[0].onlyKeyFrames.getFrames:
#   frame.savePpm(&"media/sampleframe-{frame.index:0>4.4}.ppm")

openAV("media/sample-5s.mp4").video[0].frame[30].savePPM("media/sampleframe-33.ppm")

## TODO: openAV("media/sample-5s.mp4").saveAV("media/sample-5s.mkv")

