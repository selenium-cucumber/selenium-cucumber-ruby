To Run this project

Pre-requisites :
You must have selenium-cucumber and appium setup on your machine.
If you dont have required setup please make it refering "http://seleniumcucumber.info/android/" and follow below steps.

- Connect test device to your machine
- Open Command prompt
- Hit command "adb devices" to verify device is connected
- Change current directory to this project (HinduCalendar) directory
- Start appium server
- To get output on console hit following command on console
-- cucumber PLATFORM=android APP_PATH=HinduCalendar.apk
- To get output in html file hit following command on console
-- cucumber PLATFORM=android APP_PATH=HinduCalendar.apk -f html -o Results.html

Note:
This example is tested on nexus 5, Samsung S3,S4 so if you run this example on other devices you may get failure, as native date time picker is different on different devices. 
You can make changes in code to make it pass.