require 'selenium-cucumber'

When(/^I tap on Date button$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/datePicker1"]
end

Then(/^I should see Date picker$/) do
  step %[element having id "android:id/content" should be present]
end

When(/^I select Date as "(.*?)" "(.*?)" "(.*?)"$/) do |date, month, year|
  set_date(date)
  set_month(month)
  set_year(year)
end 

Then(/^I should see Date button text as "(.*?)"$/) do |date|
  step %[element having id "com.alokmandavgane.hinducalendar:id/datePicker1" should have text as "#{date}"]
  
end

When(/^I tap on Time button$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/timePicker1"]
end

Then(/^I should see Time picker$/) do
  step %[element having id "android:id/content" should be present]
end

When(/^I enter Time as "(.*?)":"(.*?)" "(.*?)"$/) do |hour, min, am_pm|
  set_min(min)
  set_hour(hour)  
  set_am_pm(am_pm)
end

Then(/^I should see Time button text as "(.*?)"$/) do |time_text|
  step %[element having id "com.alokmandavgane.hinducalendar:id/timePicker1" should have text as "#{time_text}"]
end

When(/^I tap on more options arrow$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/more_options"]
end

Then(/^I should see Save Kundali option$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/save_kundali" should be present]
end

When(/^I tap on Save Kundali option$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/save_kundali"]
end

Then(/^I should see Enter name overlay$/) do
  step %[element having id "android:id/content" should be present]
end

Then(/^I enter name as "(.*?)"$/) do |name|
  step %[I enter "#{name}" into input field having xpath "//android.widget.EditText[@index=0]"]
end

When(/^I tap on Ok button$/) do
  step %[I click on element having id "android:id/button1"]
end

Then(/^I should see Name on info page as "(.*?)"$/) do |arg1|
  step %[I wait for 3 sec]
end

When(/^I swipe to Kundali tab$/) do
  #step %[I swipe from element having xpath "//android.widget.TextView[@text='Info']" to element having xpath "//android.widget.TextView[@text='Kundali']"]
  #step %[I swipe from co-ordinates "1053","1325" to co-ordinates "24","1238"]
  step %[I swipe from element having xpath "//android.view.View[@index=1]" to element having xpath "//android.view.View[@index=0]"]
  #step %[I swipe from co-ordinates "800","630" to co-ordinates "24","695"]
  step %[I wait for 3 sec]
end

Then(/^I should see Kundali$/) do
  step %[element having xpath "//android.view.View[@index=2]" should be present]
  step %[I wait for 3 sec]
end

When(/^I swipe to Kundali\(South\. Ind\.\)$/) do
  
  step %[I swipe from co-ordinates "800","630" to co-ordinates "24","695"]
end

Then(/^I should see South\. Ind\. Kundali$/) do
  step %[element having xpath "//android.view.View[@index=2]" should be present]
  step %[I wait for 3 sec]
end

When(/^I swipe to dasha$/) do
  step %[I swipe from co-ordinates "800","630" to co-ordinates "24","695"]
  step %[I wait for 3 sec]
end

Then(/^I should see mahadasha details$/) do
  step %[element having xpath "//android.view.View[@index=0]" should be present]
end

Then(/^I should see Open Kundali option$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/history_kundali" should be present]
end

When(/^I tap on Open Kundali option$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/history_kundali"]
end

Then(/^I should get Kundali overlay with SeleniumCucumber Kundali$/) do
  #step %[element having xpath "android.widget.FrameLayout[@index=0]" should be present]
  step %[element having id "com.alokmandavgane.hinducalendar:id/name" should have text as "SeleniumCucumber"]
end

When(/^I tap on SeleniumCucumber Kundali$/) do
  step %[I click on element having id "com.alokmandavgane.hinducalendar:id/name"]
end

Then(/^I should see text as "(.*?)"$/) do |longpress_delete|
  step %[element having id "com.alokmandavgane.hinducalendar:id/textView" should have text as "#{longpress_delete}"]
end

Then(/^I should see SeleniumCucumber Kundali is open$/) do
  step %[I should see Date button text as "20 May 2020"]
end

When(/^I Long tap on SeleniumCucumber Kundali$/) do
  step %[I long tap on element having id "com.alokmandavgane.hinducalendar:id/name" for "3" sec]
end

Then(/^I should get pop up with text "(.*?)"$/) do |message|
  step %[element having id "android:id/message" should have text as "#{message}"]
end

Then(/^I should not see SeleniumCucumber Kundali under Open Kundali overlay$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/name" should not be present]
end

When(/^I press back button of device twice$/) do
  step %[I navigate back]
  step %[I navigate back]
  step %[I wait for 2 sec]
end


def set_date(date)
  date = date.to_i
    if $device_name != 'GOOGLE NEXUS 5'
      sleep 2
      ele_day = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
      #puts ele_day
      ele_day = ele_day[0]
      #puts ele_day
      if ele_day.text.to_i == date
        #puts "equal"        
      else
        if ele_day.text.to_i < date
          begin
            increase_date_by_one
          end while ele_day.text.to_i != date          
        else
          begin
            decrease_date_by_one
          end while ele_day.text.to_i != date
        end
      end
    else
      #puts "In NEXUS 5"
      ele_day = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
      #puts ele_day
      ele_day = ele_day[1]
      #puts ele_day
      #puts ele_day.text.to_i
      #puts date
      if ele_day.text.to_i == date
        #step %[I click on element having id "android:id/button1"]
      else
        if ele_day.text.to_i < date 
          begin
            increase_date_by_one
          end while ele_day.text.to_i != date
          #step %[I click on element having id "android:id/button1"]
        else
          begin
            decrease_date_by_one
          end while ele_day.text.to_i != date
          #step %[I click on element having id "android:id/button1"]
        end
      end
    end
end

def set_month(month)
  if $device_name != 'GOOGLE NEXUS 5'
    ele_cur_month = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    ele_cur_month = ele_cur_month[1]
    #puts ele_cur_month.text
    if ele_cur_month.text != "#{month}"
      begin
        increase_month_by_one
      end while ele_cur_month.text != "#{month}"
    end
  else
    ele_cur_month = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    ele_cur_month = ele_cur_month[0]
    if ele_cur_month.text != "#{month}"
      begin
        increase_month_by_one
      end while ele_cur_month.text != "#{month}"
    end
  end
end

def set_hour(hour)
  #puts "in set_hour"
  hour = hour.to_i
  #puts hour
    cur_hour = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    cur_hour = cur_hour[0]
    if cur_hour.text.to_i == hour
      puts ""
    else
      if cur_hour.text.to_i < hour
        begin
          increase_hour_by_one
        end while cur_hour.text.to_i != hour
      else
        begin
          decrease_hour_by_one
        end while cur_hour.text.to_i != hour
      end
    end
end

def set_min(min)
  #puts "in set_min"
  min = min.to_i
  #puts min
    cur_min = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    cur_min = cur_min[1]
    if cur_min.text.to_i == min
      puts ""
    else
      if cur_min.text.to_i < min
        begin
          increase_min_by_one
        end while cur_min.text.to_i != min
      else
        begin
          decrease_min_by_one
        end while cur_min.text.to_i != min
      end
    end
end

def increase_date_by_one
  if $device_name != 'GOOGLE NEXUS 5'
    sleep 2
    ele_day = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
    ele_day = ele_day[0]
  
    if ele_day.text == "01"
      ele_day.click
      ele_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
      ele_month = ele_month[1]
      ele_month.click
    else
      ele_day.click
    end  
  else
    ele_day = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
    ele_day = ele_day[1]
    if ele_day.text == "01"
      ele_day.click
      ele_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
      ele_month = ele_month[0]
      ele_month.click
    else
      ele_day.click
    end
  end
end

def decrease_date_by_one
  if $device_name != 'GOOGLE NEXUS 5'
    cur_date = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    cur_date = cur_date[0]
    cur_date = cur_date.text
      if cur_date == "01"
        cur_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
        cur_month = cur_month[1]
        cur_month.click
        dec_date = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
        dec_date = dec_date[0]
        dec_date.click
      else
        dec_date = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
        dec_date = dec_date[0]
        dec_date.click
      end
  else
    dec_date = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
    dec_date = dec_date[1]
    cur_date = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
    cur_date = cur_date[1]
    cur_date = cur_date.text
    if cur_date == "01"
      cur_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
      cur_month = cur_month[0]
      cur_month.click
      dec_date = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
      dec_date = dec_date[1]
      dec_date.click
    else
      dec_date = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
      dec_date = dec_date[1]
      dec_date.click
    end
  end
end

def increase_month_by_one
  if $device_name != 'GOOGLE NEXUS 5'
    sleep 2
    ele_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
    ele_month = ele_month[1]
    ele_month.click
  else
    ele_month = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
    ele_month = ele_month[0]
    ele_month.click
  end
end

def increase_year_by_one
  ele_year = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
  ele_year = ele_year[2]
  ele_year.click
end

def decrease_year_by_one
  ele_year = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
  ele_year = ele_year[2]
  ele_year.click
end

def set_year(year)
  year = year.to_i
  ele_year = $driver.find_elements(:xpath, "//android.widget.EditText[@index=1]")
  ele_year = ele_year[2]
  #puts ele_year
  if ele_year.text.to_i == year
    #puts "equal"
    step %[I click on element having id "android:id/button1"]
  else
    if ele_year.text.to_i < year
      begin
        increase_year_by_one
      end while ele_year.text.to_i != year
        step %[I click on element having id "android:id/button1"]
    else
      begin
        decrease_year_by_one
      end while ele_year.text.to_i != year
      step %[I click on element having id "android:id/button1"]
    end
  end
end

def increase_hour_by_one
  ele_hour = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
  ele_hour = ele_hour[0]
  ele_hour.click
end

def decrease_hour_by_one
  ele_hour = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
  ele_hour = ele_hour[0]
  ele_hour.click
end

def increase_min_by_one
  ele_min = $driver.find_elements(:xpath, "//android.widget.Button[@index=2]")
  ele_min = ele_min[1]
  ele_min.click
end

def decrease_min_by_one
  ele_min = $driver.find_elements(:xpath, "//android.widget.Button[@index=0]")
  ele_min = ele_min[1]
  ele_min.click
end

def set_am_pm(am_pm)
  #puts "In AM+PM"
  if am_pm == 'AM'
    begin
      $driver.find_element(:xpath, "//android.widget.EditText[@text='AM']").displayed?
      step %[I click on element having id "android:id/button1"]
    rescue
      $driver.find_element(:xpath, "//android.widget.Button[@index=0]").click
      step %[I click on element having id "android:id/button1"]
    end
  else
    begin
      $driver.find_element(:xpath, "//android.widget.EditText[@text='PM']").displayed?
      step %[I click on element having id "android:id/button1"]
    rescue
      $driver.find_element(:xpath, "//android.widget.Button[@index=1]").click
      step %[I click on element having id "android:id/button1"]
    end
  end
end


