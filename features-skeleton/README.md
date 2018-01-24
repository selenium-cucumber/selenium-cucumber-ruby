ABC-Automation
======================

++INITIAL SETUP++

Requirements:

* Ruby 2.0.0
* Devkit for Ruby 2.0.0
* Bundler gem

Other requirements:

* Notepad++ (Text Editor)  –  Alternative to RubyMine, which is paid
* Ansicon  – to get colored output on Windows
* Chrome driver – Chrome driver for selenium.
* Internet explorer driver – Internet explorer driver for selenium.

Step by Step guide for installation:
1.	Download and install ruby using “RubyInstaller.exe” downloaded from the link mentioned above.
2.	Check ruby installation by running “ruby -v” in command prompt.
3.	Download development kit from the link mentioned above.
4.	Extract the compressed file downloaded in step 3 and move the folder containing the files to any location, say: C:/DevKit
5.	From command prompt navigate to the folder discussed in step 4, and run command “ruby dk.rb init”.
6.	And then run command “ruby dk.rb install” to bind it to ruby installations in your path. In case the initialization of dev kit fails to detect the path of Ruby installation, add it manually to the ‘config.yml’ file under DevKit folder like: “- C:/Ruby200-x64”.
7.	Check if gem library is install by running “gem -v”.
8.	Now, install ‘Bundler’ gem by running the following command “gem install bundler” and then run command "bundle install" from root folder of the project to install all dependencies like selenium-cucumber, cucumber, gherkin, selenium-webdriver etc.
9.	Run the command “gem list” to verify that all the 12 gems got installed including cucumber, gherkin & selenium-webdriver.
10.	To use chrome and Internet explorer browsers, add their driver’s path in the system variable. E.g. create a directory “webdrivers” in let’s say “C:\” keep driver’s executable file downloaded from the links http://selenium-release.storage.googleapis.com/index.html?path=2.51/ & http://chromedriver.storage.googleapis.com/index.html?path=2.21/ respectively in it and set “webdrivers” directory path in system variable.
11.	To set system variable, right-click on ‘Computer’ from windows menu, click on properties. Click on ‘Advance system settings’ link in left pane to open system properties window and further navigate to the ‘Advanced’ tab it. Click on ‘Environment Variables’ button to open its window. Under ‘System Variables’ look for “Path” variable and double-click to open it. Just paste the path of your webdriver directory in the end after putting a semi-colon like – ; C:\webdrivers.
12.	Download Ansicon from the link - https://github.com/adoxa/ansicon/downloads.
13.	Extract the compressed file downloaded in step 12 and move the files (files under x86 for 32-bit machine and x64 for 64-bit machine) to any location, say: “C:/Ansicon” and set directory path in system variable. Alternatively, open the commend window and navigate to directory path and permanently install it by running the command “ansicon -i”. This will give you a colored output in command prompt when any cucumber feature is executed.
14. Download and install Notepad++ from the link -  https://notepad-plus-plus.org/download. It is recommended with a Syntax Highlighter for Notepad++ which can be downloaded from here - https://github.com/famished-tiger/gherkin-highlighting
15. Extract the syntax highlighter and the copy the folder named "gherkin-highlighting-master" under 'C:\Program Files (x86)\Notepad++'.
16. Launch Notepad++ now and select 'Language > Define your language...' and Import the "feature_udl" file from folder 'C:\Program Files (x86)\Notepad++\gherkin-highlighting-master'
17. Click on Language again and select 'Gherkin'. Restart Notepad++ and you are all set to roll.

The project root folder contains some batch files to run the cucumber feature tests locally or on a remote host in parallel (with help of jobs scheduled in task scheduler on remote machine). Apart from that there are two major folders:

1. reports - all result reports in html format gets saved to this folder in a sub-folder structure organized by different browsers.
2. features - this is the main folder where all the cucumber features and ruby files live. Here follows an explanation of feature skeleton:
Explaining feature skeleton:

 ./features
        |
        |__step_definitions (this folder contains all the ruby files where the custom steps written in cucumber feature are automated. Recommended to create separate file for each corresponding feature file for simplicity & maintenance but all steps can be automated in a single file as well)
        |     |_custom_steps_abc.rb
		|		........
		|		........
		|		........
		|		........
        |     |_custom_steps_xyz.rb
		|
        |__support (this folder contains the environment file in which local, mobile or browserstack execution parameters are defined and selenium webdriver is instantiated, hooks for defining before & after action (if any) and a custom error handling file for handling browserstack input parameter errors)
        |     |_env.rb
        |     |_hooks.rb
        |     |_browserstack_parameters_error_handling_methods.rb
		|
		|__properties (this folder contains all the properties file in which the web elements type and value is defined to be used in custom steps for easier maintenance)
        |     |_abc_properties.rb
		|		........
		|		........
        |     |_xyz_properties.rb
		|
        |__expected_images (folder for placing expected images for a image comparison test, if any)
        |
        |__actual_images (folder where actual images get stored for image comparison test, if any)
        |
        |__image_difference (folder where result images depicting difference in images get stored for image comparison test, if any)
        |
        |__screenshots (folder where screenshots taken during test execution get stored, if any)
        |
        |__abc.feature (feature files are stored under features folder directly. It is recommended to write one feature file for a particular feature/epic)
			.........
			.........
			.........
			.........
        |__xyz.feature	
		
Running Cucumber features:

For local execution, run the batch scripts in the root folder for each Cucumber feature. Multiple batch scripts can be executed to run parallel tests in different browsers. Remote execution will call a task in scheduler to run the feature test in all the listed browsers in parallel. User can also run manually by writing commands like:
cucumber feature/share.feature BROWSER=chrome --tags ~@fail

For execution on mobile devices make sure Appium is running and then define PLATFORM=android BROWSER=chrome (or native) in case of android and PLATFORM=iOS Browser=native while running a particular feature instead of defining desktop browsers. Additional --tags can be defined if only certain tests cases meant for mobile should be executed

For execution on browserstack.com define at least while running test through command or batch file: REMOTE_EXECUTION=yes (by default it is no)

By default test will run on Firefox 44.0 on Windows 7 with 1024x768 resolution. It can be changed by defining following manually, for example:

REMOTE_BROWSER=Chrome
BROWSER_VERSION=48.0
OS_TYPE='OS X'
OS_VERSION='El Capitan'
RESOLUTION=1280x800