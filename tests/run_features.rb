require 'selenium-webdriver'

puts ARGV[0]

OS = RUBY_PLATFORM

  system("bundle install")

if ARGV.length == 0

  puts "\n\n\t######  Running all features on firefox browser  ######\n\n"
  system('cucumber')

  puts "\n\n\t######  Running all features on chrome browser  ###### \n\n"
  system('cucumber BROWSER=chrome')

  if OS.to_s == 'windows'
    puts "Running all features on internet explorer browser  ###### \n\n"
    system('cucumber BROWSER=ie')
  elsif OS.to_s == 'mac'
    puts "Running all features on safari browser  ###### \n\n"
    system('cucumber BROWSER=safari')
  end

elsif ARGV.shift == 'html'

  puts "\n\n\t######  Running all features on firefox browser  ###### \n\n"
  puts "Output result stored in \"result_firefox.html\""
  system('cucumber -f html -o result_firefox.html')

  puts "\n\n\t######  Running all features on chrome browser  ###### \n\n"
  puts "Output result stored in \"result_chrome.html\""
  system('cucumber BROWSER=chrome -f html -o result_chrome.html')

  if OS.to_s == 'windows'
    puts "\n\n\t######  Running all features on internet explorer browser  ###### \n\n"
    puts "Output result stored in \"result_ie.html\""
    system('cucumber BROWSER=ie -f html -o result_ie.html')
  elsif OS.to_s == 'mac'
    puts "\n\n\t######  Running all features on safari browser  ###### \n\n"
    puts "Output result stored in \"result_safari.html\""
    system('cucumber BROWSER=safari -f html -o result_safari.html')
  end
end
