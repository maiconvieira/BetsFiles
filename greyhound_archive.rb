file_data = File.read("greyhound_archive.txt").gsub(/^<div.+results_latest">[A-Za-z\s]+.+<\/h2>/,'')
regex0 = file_data.gsub(/<h3\s[a-z]+="[a-z]+">[A-Z]+<.h3>|<ul\s[a-z]+="[A-Za-z\s]+">\s+/,'')
regex1 = regex0.gsub(/<li>\s+[<a-z\s="#]+.[a-z]+.[a-z0-9_=&;]+.\d{2}.\d{2}[a-z&;_=]+\d{2}.\d{2}["\sa-z]+.[a-z="_a\s]+.[a-z="]+[A-Za-z"\s=]+.[a-z]+.[a-z">\s]+<h4>([A-Za-z]+)<.h4>[\sa-z0-9<>]+.[a-z0-9<>\s]+.[a-z<>\s="]+.[a-z]+.[a-z]+.[a-z\s]+.[a-z<>"\s=]+.[a-z]+.[a-z]+.[a-z">\s=]+/,'\1|')
regex2 = regex1.gsub(/(a>\s+)<.[a-z<>\s]+.[a-z<>\s]+.li>\s+(<.ul><.div>|<.ul>|)/,'\1')
regex3 = regex2.gsub(/>\d{1,2}.\d{2}<.a>(\s+)/,'\1|')
regex4 = regex3.gsub(/.<a\shref="(#[a-z]+.[a-z]+.[a-z]+.[a-z_=\d&;]+.\d{2}.\d{2}[a-z&;_=]+(\d{2}.\d{2}))"\s+/,'|\2|\1|')

#puts regex4

aFile = File.new("racingpost_archive_links.txt", "a+")
if aFile
   aFile.syswrite(regex4)
   puts "File Updated!"
else
   puts "Unable to open file!"
end
