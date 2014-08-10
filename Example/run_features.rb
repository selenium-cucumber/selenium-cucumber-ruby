
system("cucumber -f html -o result_firefox.html")
system("cucumber BROWSER=chrome -f html -o result_chrome.html")
system("cucumber BROWSER=ie -f html -o result_ie.html")