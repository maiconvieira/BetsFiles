file_data = File.read("greenhouse_html.txt").gsub(/^\s+/,'')
filtred0 = file_data.gsub(/(^<(div|span).+timeline.+$|^<\/?(small|span|div|a)>$)\s+/,'')
filtred1 = filtred0.gsub(/^<a.+races\/(\d{7})".+>\s+/,'\1|')
filtred2 = filtred1.gsub(/([A-Z0-9]{2,3})\s-\s([A-Za-z]+)$\s+/,'\1|\2|')
filtred3 = filtred2.gsub(/(.+)UK\s.<strong>(\d{2}.\d{2})<.strong>.\sBR\s.<strong>(\d{2}.\d{2})<.strong>.\s-\s(\d{3}m)/,'\1\2|\3|\4|')
filtred4 = filtred3.gsub(/\s+^<span.+>([A-Za-z!\s]+)<.span>/,'\1')

newtext = ""

time = Time.now
time_stamp = time.strftime("%Y%m%d")

File.write("greenhouse_temp.txt", filtred4, mode: "w+")
File.foreach("greenhouse_temp.txt") do |line|
  if /^\d{7}.A(4|5|6|7).[A-Za-z]+.\d{2}.\d{2}.\d{2}.\d{2}.4(5|6|7|8)\dm.+$/.match?(line)
    newtext << line
  end
end

File.write("greenhouse_races.txt", time_stamp, mode: "a")
File.write("greenhouse_races.txt", "\n========\n", mode: "a")
File.write("greenhouse_races.txt", newtext, mode: "a")
File.write("greenhouse_races.txt", "==================================================\n", mode: "a")

puts "File Updated!"
