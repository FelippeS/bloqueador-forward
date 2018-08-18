
#Dir.chdir "../Programa"

paises = File.readlines('../Programa/teste_codigo.txt').map do |line|
	  line.split.map(&:to_s)
	end

#Dir.chdir '../Programa/all-zones'
#p Dir.pwd
arq_codigos = File.new("codigos.txt", "w")

paises.each do |item|

	if !File.file?('../Programa/all-zones/'+item[-1].downcase+'.zone')
		puts item[-1]
	end
		 arq_codigos.puts item[-1].downcase


end
arq_codigos.close

arq_escrita = File.new("nomes_paises.txt", "w")
arq_marcadores = File.new("marcadores.txt", "w")

text=File.open('../Programa/teste_codigo.txt').read
#text.gsub!(/\r\n?/, "\n")
text.each_line do |line|

	arq_marcadores.puts 0
	arq_escrita.puts line[0..line.size-4]

end



arq_marcadores.close
arq_escrita.close #fecha arquivo