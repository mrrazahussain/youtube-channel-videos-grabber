# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([{email: 'mr.raza.hussain@gmail.com',password: 'password',password_confirmation: 'password'},{email: 'raiejazahmad@gmail.com',password: 'password',password_confirmation: 'password'}])
# CATEGORIES DATA

categories= [
    {
        title: 'FUNNY TV SHOWS'
    },
    {
        title: 'NEWS CHANNELS'
    },
    {
        title: 'DRAMAS'
    }
]
Category.create! categories

# CHANNELS DATA

cat_id = Category.where(title: 'NEWS CHANNELS').first.id

channels = [
    {
        name: 'DD News',
        channel_id: 'UCKwucPzHZ7zCUIf7If-Wo1g',
        category_id: cat_id
    },
    {
        name: 'IBN7',
        channel_id: 'UCPP3etACgdUWvizcES1dJ8Q',
        category_id: cat_id
    },
    {
        name: 'Zee News',
        channel_id: 'UCIvaYmXn910QMdemBG3v1pQ',
        category_id: cat_id
    },

]
Channel.create! channels

