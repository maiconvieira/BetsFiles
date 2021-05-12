file_data = File.read("greyhound_archive.txt").gsub(/^<div.+results_latest">[A-Za-z\s]+.+<\/h2>/,'')
file_filtred0 = file_data.gsub(/<h3\s[a-z]+="[a-z]+">[A-Z]+<.h3>|<ul\s[a-z]+="[A-Za-z\s]+">\s+/,'')
file_filtred1 = file_filtred0.gsub(/<li>\s+[<a-z\s="#]+.[a-z]+.[a-z0-9_=&;]+.\d{2}.\d{2}[a-z&;_=]+\d{2}.\d{2}["\sa-z]+.[a-z="_a\s]+.[a-z="]+[A-Za-z"\s=]+.[a-z]+.[a-z">\s]+<h4>([A-Za-z]+)<.h4>[\sa-z0-9<>]+.[a-z0-9<>\s]+.[a-z<>\s="]+.[a-z]+.[a-z]+.[a-z\s]+.[a-z<>"\s=]+.[a-z]+.[a-z]+.[a-z">\s=]+/,'\1|')
file_filtred2 = file_filtred1.gsub(/(a>\s+)<.[a-z<>\s]+.[a-z<>\s]+.li>\s+/,'\1')
file_filtred3 = file_filtred2.gsub(/>\d{1,2}.\d{2}<.a>(\s+)/,'\1')
file_filtred4 = file_filtred3.gsub(/[<>a-z\s="]+(#.[a-z]+.[a-z]+.[a-z]+.[a-z_=]+(\d{7})[a-z&;_=]+(\d{1,3})[a-z&;_=]+((\d{4}).(\d{2}).(\d{2}))[a-z&;_=]+(\d{2}.\d{2}))">\d{1,2}.\d{2}<./,'')
puts file_filtred2
