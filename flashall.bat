mfastboot.exe getvar max-sparse-size
mfastboot.exe oem fb_mode_set
mfastboot.exe flash partition gpt.bin
mfastboot.exe flash bootloader bootloader.img
mfastboot.exe flash modem NON-HLOS.bin
mfastboot.exe flash fsg fsg.mbn
mfastboot.exe erase modemst1
mfastboot.exe erase modemst2
mfastboot.exe flash dsp adspso.bin
mfastboot.exe flash logo logo.bin
mfastboot.exe flash boot boot.img
mfastboot.exe flash recovery recovery.img
mfastboot.exe flash system system.img_sparsechunk.0
mfastboot.exe flash system system.img_sparsechunk.1
mfastboot.exe flash system system.img_sparsechunk.2
mfastboot.exe flash system system.img_sparsechunk.3
mfastboot.exe flash system system.img_sparsechunk.4
mfastboot.exe flash vendor vendor.img
mfastboot.exe flash oem oem.img
mfastboot.exe erase cache
mfastboot.exe erase userdata
mfastboot.exe erase DDR
mfastboot.exe oem fb_mode_clear
