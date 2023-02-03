# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
namespace :dev do
  desc 'Configurando ambiente de desenvolvimento e teste'
  task setup: :environment do
    puts 'Zerando a base...'

    `rails db:drop db:create db:migrate`

    puts 'Base zerada com sucesso!'
    puts ' '

    puts 'Cadastrando Usuários!'

    9.times do |_i|
      password = Faker::Internet.password(min_length: 8)
      User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        role: 1,
        password: password,
        password_confirmation: password
      )
    end
    puts 'Usuários cadastrados com sucesso!'
    puts ' '

    puts 'Cadastrando Livros!'

    50.times do |_i|
      Book.create!(
        title: Faker::Book.title,
        description: Faker::Marketing.buzzwords,
        category: Faker::Book.genre,
        author: Faker::Book.author,
        publication_date: Faker::Date.birthday(min_age: 1, max_age: 65),
        publishing_company: Faker::Book.publisher
      )
    end
    puts 'Livros cadastrados com sucesso!'
    puts ' '

    puts 'Cadastrando Reservas!'

    100.times do |_i|
      Reservation.create!(
        booking_date: Faker::Date.forward(days: 0),
        return_date: Faker::Date.forward(days: 5),
        booking_status: [0, 1, 2].sample,
        book: Book.all.sample,
        user: User.all.sample
      )
    end
    puts 'Reservas cadastradas com sucesso!'
  end
end
# rubocop:enable Metrics/BlockLength
