file_data = File.read("greyhound_archive.txt").gsub(/^<div.+results_latest">[A-Za-z\s]+.+<\/h2>/,'')
file_filtred0 = file_data.gsub(/<h3\s[a-z]+="[a-z]+">[A-Z]+<.h3>|<ul\s[a-z]+="[A-Za-z\s]+">\s+/,'')
file_filtred1 = file_filtred0.gsub(/<li>\s+<a\shref="#[a-z]+.[a-z_=]+\d{1,3}[a-z&;_=]+\d{4}.\d{2}.\d{2}[a-z&;_=]+\d{2}.\d{2}"\s[A-Za-z-="_\s]+>\s+/,'')
file_filtred2 = file_filtred1.gsub(//,'')
file_filtred3 = file_filtred2.gsub(//,'')
file_filtred4 = file_filtred3.gsub(//,'')
puts file_filtred1
