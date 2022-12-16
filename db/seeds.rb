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


    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    created_at = Faker::Date.backward(days: 365 * 5)

    b = Business.create([{
        business_name: "Matka Botanicals",
        category: "skincare",
        one_liner: "Handmade luxury skincare",
        business_email: "info@matkabotanicals.com",
        business_phone: "2506405224
        ",
        description: "Matka Botanicals is a Vancouver Island based vegan beauty brand founded by Nicolina Kolster, dedicated to providing clean and cruelty free solutions to the beauty market while actively defending animal rights through education, awareness, and monthly donations. 

        At Matka we religiously believe in a simplified skincare routine with fast-acting and long-lasting results. Our products are vegan, cruelty-free, and made with love and care in small batches with high performing and 100% plant-based ingredients. We love playing scientists with everything nature has to offer, creating original formulas from scratch, tested on real people - never animals!
        
        Matka is the Finnish word for journey - a never ending journey to design, research, source, formulate, create and provide products you can trust and that are safe for you, your little ones, the animals, and the planet. We pride ourselves with environmental friendly packaging, recycleble materials where possible, cruelty-free practices, and petrolium free, ocean safe, and sustainably sourced ingredients. 1% of our monthly proceeds are donated to Humane Canada.",
        shop_online: true,
        website: "https://matkabotanicals.com/shop",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5baaed5577b903135793f279/a35cd0f8-4cf5-4bd4-b084-3d1cd6935dfd/Marja+sample+thank+you+card+%2821+x+24+in%29-4-min.png",

},
    {
        business_name: "Basic Batches Bagels",
        category: "food",
        one_liner: "Hand rolled, Boiled and Baked Bagels",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "Hand rolled, Boiled and Baked Bagels",
        shop_online: false,
        website: "Hand rolled, Boiled and Baked Bagels",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://handletheheat.com/wp-content/uploads/2016/08/how-to-make-bagels-recipe-SQUARE.jpg",
    },

    {
        business_name: "Wild Chocolate Tree",
        category: "Food",
        one_liner: "Small-batch craft chocolate",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8795309",
        description: "Wild Chocolate Tree is a small-batch craft chocolate company located in Nanaimo, B.C. (Vancouver Island).  

        This is the kind of chocolate that you can feel good about eating every day.  It’s made with organic heirloom cacao and sweetened with organic maple sugar. 
        
        These chocolates are made from the Arriba Nacional variety of cacao.  This is considered one of the finest varieties of cacao with it’s complex fruity and floral flavours.  
        
        I carefully select all of my ingredients to keep things as pure, healthy, and delicious as possible.  You can eat them for dessert or for breakfast! My favorite way is with my morning coffee or as an evening treat along with a hot cup of chaga tea. I hope that you enjoy them as much as I do! ",
        shop_online: true,
        website: "https://www.wildchocolatetree.com/shop-1",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5df1c95f7cfa163022afff02/1577593626891-1471W9F1AWTJB27L6D8L/Copy%2Bof%2BWild.jpg",
    },

    {
        business_name: "LOJO Undies",
        category: "clothing",
        one_liner: "Soft, comfy, breathable undies, designed and sewn in BC",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "Launching Late Summer/ Early Fall 2023, LoJo Undies is an eco-friendly, sustainable line of women's underwear designed and manufactured right here in British Columbia, Canada",
        shop_online: true,
        website: "https://lojoundies.com/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0601/1122/5029/files/LOGO-LOJO-01_180x.png?v=1636309319",
    },

    {
        business_name: "Scout Soap",
        category: "skincare",
        one_liner: "hand, body and dish soap, handmade in Nanaimo",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: " Located in Nanaimo BC, on Vancouver Island, Scout Soap is handmade in small batches from only natural ingredients, plant-based butters and oils, and handcrafted to cleanse thoroughly while nourishing the skin. 

        Our soap is scented with pure essential oils and naturally coloured with mineral rich clays, roots and plant infusions. 
        
        Free from animal products, palm oil, synthetics, preservatives, or anything artificial.
        
        Many of the toppings are home-grown organic herbs and flowers.",
        shop_online: true,
        website: "https://www.scoutsoapco.ca/shop",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5fd276beddcfa0625ddeafcd/2c823fb7-de82-46ef-b7f8-b981b50935df/logo+1.png?format=1500w",
    },

    {
        business_name: "Vancouver Island Sea Salt",
        category: "food",
        one_liner: "Hand harvested, small batch pacific sea salt",
        business_email: "sales@canadianseasalt.com",
        business_phone: "8675309",
        description: "The pristine shorelines of Vancouver Island create the perfect “merroir” for crafting a world class sea salt. We work hard to make our salt but there’s no question that the most special thing about it is where it comes from.

        Located on a stunning 400 acre farm with over 2 km of untouched ocean frontage on Oyster Bay, our salt harvestry sits halfway between the vibrant shellfish coast of Comox and the ‘Salmon Capital of the World’, Campbell River. The surrounding waters are glacier fed and bordered by old growth forests. This brings a unique blend of minerals to our salt while keeping our water source clean and unspoiled.
        
        During high tides we collect water at the exact point where the currents from the South of Vancouver Island meet the strong, cold currents from the North, making for a spectacular blending of tides and minerals that are constantly in motion.",
        shop_online: true,
        website: "https://canadianseasalt.com/shop-vancouver-island-sea-salt/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0252/6576/6463/files/Vancouver_Island_Sea_Salt_Logo_2_480x480.png?v=1605815404",
    },

    {
        business_name: "Cowichan Pasta Company",
        category: "food",
        one_liner: "Pasta made with locally sourced ingredients",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "The Cowichan Pasta Company was born from a simple idea; Great Pasta made from 100% British Columbia ingredients. We are blessed to live in this region and experience all that the land and sea have given us. We offer our best to you.",
        shop_online: true,
        website: "https://cowichan-pasta-online.myshopify.com/collections/online-shop",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/1034/2373/t/2/assets/logo.png?v=29851833800031242781445543693",
    },

    {
        business_name: "True Grain",
        category: "food",
        one_liner: "Bakery using locally milled, organic grains",
        business_email: "baker@truegrain.ca",
        business_phone: "250-871-6600",
        description: "At True Grain, this is the philosophy that guides everything we do. For us, it’s all about reconnecting people with their food.

            Since first opening our doors in the picturesque seaside village of Cowichan Bay in 2004, we’ve poured our passion into creating the very best local, handcrafted, organic bread and pastries (and cookies – we make delicious cookies). Over time, our bakeries have become destinations for bread lovers living and visiting beautiful British Columbia. 
            It starts of course, with the grain itself. We use 100 % BC-farmed organic grain for everything we bake. From ancient grains like Einkorn, Emmer, Rye, Khorasan and Spelt, to heritage wheat like Canada’s own Red Fife, we buy directly from organic farmers close to home.
            
            We stay “true to the grain” by stone milling all our ancient and heritage grains into fresh, nutrient rich flour. Each day our talented bakers make hundreds of loaves and pastries by hand, using tried and tested European-inspired recipes.  We don’t skimp on quality, and we never cut corners. The result is bread that is wholesome, full of flavour, and is simply a joy to eat.
            
            When we step back, we see the network our passion has helped to create: a sustainable, BC-based food system made up of organic farmers, talented tradespeople, and you – our customers, our community members, our friends.",
        shop_online: true,
        website: "https://www.truegrain.ca/collections/cowichan-bakery-pick-up",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/1786/0595/files/True_Grain_Logo_Black_300x147.png?v=1620156074",
    },

    {
        business_name: "Cowichan Station Creamery",
        category: "food",
        one_liner: "locally produced cheese",
        business_email: "info@cowichancream.ca",
        business_phone: "2507103007",
        description: "We are a vertically integrated cheese company.   We grow the grass, milk the cows, make the cheese and sell directly to the consumer.",
        shop_online: true,
        website: "https://cowichancream.ca/vending-machine/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cowichancream.ca/sitepad-data/uploads/2021/12/logo-symbol.png",
    },

    {
        business_name: "Promise Valley Farm",
        category: "food",
        one_liner: "farm and creamey making yogurt and cheese",
        business_email: "info@promisevalleyfarm.ca",
        business_phone: "8675309",
        description: "
        Promise Valley Farm + Creamery is a small, family-run organic dairy farm located in the beautiful Cowichan Valley on Vancouver Island.",
        shop_online: true,
        website: "https://www.promisevalleyfarm.ca/farm-store",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://static.wixstatic.com/media/0a71bb_1f35303293384ccf8e7d710b486eafdb~mv2.png/v1/fill/w_548,h_314,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ORGANIC-PVF-Logo-BlackTransperent.png",
    },
    {
        business_name: "Westwood Leather",
        category: "leatherwork",
        one_liner: "Handmade leather wallets, dog collars, journal covers, etc",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "Westwood Leather Co was born from a love of thoughtful design, quality construction, and a rejection of fast fashion.

        I started working with leather recently after years of studying and working in the apparel industry, where quality is often overlooked in favour of low prices and speedy trend-focused production. My interests shifted toward Japanese selvedge denim and other garments and accessories that are designed to outlive the wearer.
        
        Leathercraft, for me, is the perfect marriage of handmade quality and functional design. I cut and sew every item by hand and strive to make my items as polished as possible while celebrating the unique character of the leather. I think every hide tells a story and I am honoured to turn these amazing raw materials into things that are equally useful as they are beautiful.
        
        I create every item at my home studio on Vancouver Island in beautiful British Columbia, Canada, where I am inspired every day by the shapes and colours of the nature that surrounds me. My items are all proudly Made in Canada with leather sourced only from ethical tanneries in the USA & Europe.
        ",
        shop_online: true,
        website: "https://westwoodleather.com/collections/all",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0531/4369/9646/files/Westwood_Logotype_-_White_200px-03.png?v=1634249482",
    },

    
])

    # b.likers = users.shuffle.slice(0, rand(users.count))


businesses = Business.all

