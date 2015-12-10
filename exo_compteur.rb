text = "Un homme nourrissait une chèvre et un âne. Or la chèvre bla bla bla..."
=begin
* Créer un hash pour stocker les mots
* Obtenir un tableau des mots de notre texte (split())
* Itérer sur le tableau précédent
  * Remplir le hash
* Afficher les informations

** Organiser les mots pour sortir les mots les plus fréquents
=end

frequence = Hash.new(0)
mots = text.tr('.,":', '').downcase.split (' ')
mots.each do |mot|
	frequence[mot] += 1
end

frequence = frequence.sort_by { |mot, count| count}
frequence.reverse!
first = frequence.first
puts "Le mot qui apparait le plus souvent est le mot : \"#{first[0]}\" qui apparait #{first[1]} fois."

frequence.each do |mot|
	puts "Le mot \"#{mot[0]}\" apparait #{mot[1]} fois."
end
