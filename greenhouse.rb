file_data = File.read("greenhouse.txt").gsub(/^\s+/,'')
filtred0 = file_data.gsub(/(^<(div|span).+timeline.+$|^<\/?(small|span|div|a)>$)\s+/,'')
filtred1 = filtred0.gsub(/^<a.+races\/(\d{7})".+>\s+/,'\1|')
filtred2 = filtred1.gsub(/([A-Z0-9]{2,3})\s-\s([A-Za-z]+)$\s+/,'\1|\2|')
filtred3 = filtred2.gsub(/(.+)UK\s.<strong>(\d{2}.\d{2})<.strong>.\sBR\s.<strong>(\d{2}.\d{2})<.strong>.\s-\s(\d{3}m)/,'\1\2|\3|\4|')
filtred4 = filtred3.gsub(/\s+^<span.+>([A-Za-z!\s]+)<.span>/,'\1')
puts filtred4
# ["user1", "user2", "user3"]
