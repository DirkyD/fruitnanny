#!/bin/bash
gst-launch-1.0 -v libcamerasrc name=src ! video/x-raw,width=960,height=540,framerate=30/1 ! videoconvert ! jpegenc! rtpjpegpay ! udpsink host=127.0.0.1 port=5004
