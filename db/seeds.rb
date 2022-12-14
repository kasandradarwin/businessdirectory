Like.destroy_all
# Tagging.destroy_all
# Tag.destroy_all
# Question.destroy_all
# Answer.destroy_all
User.destroy_all

PASSWORD = "password123"

super_user = User.create(
    first_name: "Admin",
    last_name: "User",
    email: "admin@user.com",
    password: PASSWORD,
    # admin?: true
)

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
    first_name: "Sarah",
    last_name: "Finnley",
    email: "#{first_name}@#{last_name}.com",
    password: PASSWORD,
    # admin?: false
    )
end

users = User.all

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    created_at = Faker::Date.backward(days: 365 * 5)
    business_name = "Local Business"

    b = Business.create(
        business_name: business_name,
        category: Faker::ChuckNorris.fact,
        one_liner: Faker::ChuckNorris.fact,
        business_email: "#{first_name}@#{business_name}.com",
        business_phone: "555-555-5555",
        description: "locally owned business",
        shop_online: true,
        website: "www.#{business_name}.com",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
    )

    b.likers = users.shuffle.slice(0, rand(users.count))
end

businesses = Business.all

