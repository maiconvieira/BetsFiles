File.foreach("01_indice") do |line|
  d = line.split(',')
  year_dir = '/' + d[0] + 'teste'
  Dir.mkdir(year_dir) unless Dir.exist?(year_dir)
  month_dir = '/' + d[0] + '/' + d[1]
  Dir.mkdir(month_dir) unless Dir.exist?(month_dir)
end
