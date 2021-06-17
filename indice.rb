require 'fileutils'

File.foreach("01_indice") do |line|
  d = line.chomp.split(',')
  archive = d[0] + d[1] + d[2] + '-' + d[3] + '-' + d[4] + '-' + d[5] + d[6]
  link =  'https://greyhoundbet.racingpost.com/#result-meeting/track_id=' + d[3] + '&r_date=' + d[0] + '-' + d[1] + '-' + d[2] + '&r_time=' + d[5] + ':' + d[6]

  File.open(archive, 'w') { |file| file.write(link) }

end

# 2021,01,02,11,Romford,12,31
# https://greyhoundbet.racingpost.com/#result-meeting/track_id=13&r_date=2021-01-01&r_time=08:12
