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

    b = Business.create(
        business_name: "Matka Botanicals",
        category: "skincare",
        one_liner: "Handmade luxury skincare",
        business_email: "#{first_name}@#{business_name}.com",
        business_phone: "867-5309",
        description: "Matka Botanicals is a Vancouver Island based vegan beauty brand founded by Nicolina Kolster, dedicated to providing clean and cruelty free solutions to the beauty market while actively defending animal rights through education, awareness, and monthly donations. 

        At Matka we religiously believe in a simplified skincare routine with fast-acting and long-lasting results. Our products are vegan, cruelty-free, and made with love and care in small batches with high performing and 100% plant-based ingredients. We love playing scientists with everything nature has to offer, creating original formulas from scratch, tested on real people - never animals!
        
        Matka is the Finnish word for journey - a never ending journey to design, research, source, formulate, create and provide products you can trust and that are safe for you, your little ones, the animals, and the planet. We pride ourselves with environmental friendly packaging, recycleble materials where possible, cruelty-free practices, and petrolium free, ocean safe, and sustainably sourced ingredients. 1% of our monthly proceeds are donated to Humane Canada.",
        shop_online: true,
        website: "https://matkabotanicals.com/shop",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5baaed5577b903135793f279/a35cd0f8-4cf5-4bd4-b084-3d1cd6935dfd/Marja+sample+thank+you+card+%2821+x+24+in%29-4-min.png",
    )

    b.likers = users.shuffle.slice(0, rand(users.count))
end

businesses = Business.all

