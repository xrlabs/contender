# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create the Admin Account
admin = User.create(
    email: 'admin@example.com',
    password: 'alpine123'    
)

puts "Successfully created admin"

dolan = Space.create(name: 'Dolan')
vitago = Space.create(name: 'ViTaGo')

dolan.content_types.create([
    {
        name: 'Article'
    },
    {
        name: 'Judge'
    },
    {
        name: 'Mentor'
    }
])

vitago.content_types.create([
    {
        name: 'Personal'
    },
    {
        name: 'Medikamente'
    },
    {
        name: 'Räume'
    }
])

puts "Successfully created Spaces & Content Types!"