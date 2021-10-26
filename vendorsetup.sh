rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/media
rm -rf hardware/qcom-caf/msm8998/display

git clone https://github.com/jaichiranjeeva/platform_hardware_qcom_audio.git -b 12.x-caf-msm8998 hardware/qcom-caf/msm8998/audio
git clone https://github.com/jaichiranjeeva/platform_hardware_qcom_display.git -b 12.x-caf-msm8998 hardware/qcom-caf/msm8998/display
git clone https://github.com/jaichiranjeeva/platform_hardware_qcom_media.git -b 12.x-caf-msm8998 hardware/qcom-caf/msm8998/media

#temporay to remove bpf checks

rm -rf system/netd
rm -rf system/bpf

git clone https://github.com/jaichiranjeeva/platform_system_netd.git -b 12.x system/netd
git clone https://github.com/jaichiranjeeva/platform_system_bpf.git -b 12.x system/bpf

rm -rf devi*/a*/X*/v*.sh
