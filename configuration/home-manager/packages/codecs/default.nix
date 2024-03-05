{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    ffmpeg-full
    openh264
    mediastreamer
    mediastreamer-openh264
    gst_all_1.gst-libav
    gst_all_1.gstreamer
  ];
}
