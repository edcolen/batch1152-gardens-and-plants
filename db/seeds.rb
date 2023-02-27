puts 'Cleaning database...'
Garden.destroy_all
Plant.destroy_all
Tag.destroy_all

garden1 = Garden.create!(
  name: 'Jardim Secreto',
  banner: 'https://cdn.britannica.com/42/91642-050-332E5C66/Keukenhof-Gardens-Lisse-Netherlands.jpg'
)

garden2 = Garden.create!(
  name: 'Jardim Marajoara',
  banner: 'https://img.freepik.com/free-photo/garden-flowers-mae-fah-luang-garden-locate-doi-tung-chiang-rai-thailand_335224-968.jpg?w=2000'
)

Plant.create!(
  name: 'Cacto',
  image:
   'https://portalvidalivre.com/uploads/content/image/49361/Design_sem_nome__19_.jpg',
  garden: garden1
)
Plant.create!(
  name: 'Maria Joana',
  image:
   'https://img.migalhas.com.br/gf_Base/empresas/miga/imagens/299E480E716CA819CDAAF8E634EEC81427CC_maconha.png',
  garden: garden1
)
Plant.create!(
  name: 'Tulipa',
  image: 'https://www.infoescola.com/wp-content/uploads/2010/05/tulipa_645862144.jpg',
  garden: garden1
)

tags = %w[flor fruto arbusto fumável venenosa]

tags.each do |tag|
  Tag.create!(name: tag)
end

puts 'Seeds done!'
