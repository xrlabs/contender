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
        name: 'Article',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'title', type: 'text', regex: '/${abc}../i' },
                { name: 'introduction', type: 'text', length: { minimum: 4, maximum: 8 } },
                { name: 'content', type: 'text' }
            ],
            locals: [
                { language: 'en' },
                { language: 'de' },
                { language: 'fr' }
            ]
        })
    },
    {
        name: 'Judge',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'name', type: 'text' },
                { name: 'company', type: 'text' },
                { name: 'occupation', type: 'text' }
            ]
        })
    },
    {
        name: 'Mentor',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'name', type: 'text' },
                { name: 'company', type: 'text' },
                { name: 'occupation', type: 'text' }
            ]
        })
    }
])

vitago.content_types.create([
    {
        name: 'Personal',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'name', type: 'text' },
                { name: 'email', type: 'email' },
                { name: 'password', type: 'password' }
            ] 
        })
    },
    {
        name: 'Medikamente',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'Medikament', type: 'text' },
                { name: 'Art-Nr.', type: 'text' },
                { name: 'Haltbarkeitsdatum', type: 'text' }
            ],
            locals: [
                { language: 'de' }
            ]
        })
    },
    {
        name: 'Räume',
        fields: ActiveSupport::JSON.encode({
            fields: [
                { name: 'number', type: 'text' },
                { name: 'patient', type: 'text' },
                { name: 'nurse', type: 'text' }
            ]
        })
    }
])

puts "Successfully created Spaces & Content Types!"