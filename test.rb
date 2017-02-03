require "selenium-webdriver"

counter = 0
loadTimes = []

while counter < 100

  startTime = Time.now()

  driver = Selenium::WebDriver.for :firefox
  driver.manage.delete_all_cookies
  #driver.get("http:<URL>")
  driver.get("<URL>")

  finishTime = Time.now()
  totalTime = finishTime - startTime
  loadTimes << totalTime

  counter = counter +1
  driver.quit();
end

sumOfLoadTimes = 0.0
loadTimes.each {|e| sumOfLoadTimes += e}

averageLoadTime = sumOfLoadTimes / loadTimes.size


puts("average load time  #{averageLoadTime}")
puts("this script loaded the requested page #{loadTimes.size} times")
