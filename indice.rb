require 'fileutils'

File.foreach("01_indice") do |line|
  d = line.split(',')
  archive = '/archive/' + d[0] + d[1] + d[2] + '-' + d[3] + '-' + d[4] + '-' + d[5] + d[6]
  link =  "https://greyhoundbet.racingpost.com/#result-meeting/track_id=" + d[3] + "&r_date=" + d[0] + "-" + d[1] + "-" + d[2] + "&r_time=" + d[5] + ":" + d[5]

  File.write(archive, link, mode: "a")

end

#FileUtils.remove_dir("/2021/",true)
#FileUtils.remove_dir("/2021-teste/",true)
#FileUtils.remove_dir("/test/",true)

# 2021,01,02,11,Romford,12:31
# https://greyhoundbet.racingpost.com/#result-meeting/track_id=50&r_date=2021-05-12&r_time=08:12
