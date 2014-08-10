@ECHO OFF
cucumber -f html -o result_firefox.html
cucumber BROWSER=chrome -f html -o result_chrome.html
cucumber BROWSER=ie -f html -o result_ie.html