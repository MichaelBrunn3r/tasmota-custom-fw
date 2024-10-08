smartmeter port:
    cp smartmeter.h ./Tasmota/tasmota/user_config_override.h
    cd Tasmota; platformio run -e tasmota --target upload --upload-port {{port}}