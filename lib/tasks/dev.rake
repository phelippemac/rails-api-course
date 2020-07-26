namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Cadastrando tipos de contatos'
    kinds = %w[Comercial Amigo Conhecido]
    kinds.each do |kind|
      Kindness.create!(
        description: kind
      )
    end
    puts 'Tipos finalizados'

    puts 'Cadastrando contatos aleatórios'
    100.times do
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
        kindness: Kindness.all.sample
      )
    end
    puts 'Cadastros finalizados'
  end
end
