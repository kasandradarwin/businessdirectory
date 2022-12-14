Like.destroy_all
User.destroy_all
Market.destroy_all
Classified.destroy_all


PASSWORD = "password123"

# super_user = User.create(
#     first_name: "Admin",
#     last_name: "User",
#     email: "admin@user.com",
#     password: PASSWORD,
#     # admin?: true
# )

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
    first_name: first_name,
    last_name: last_name,
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
        business_phone: "2506405224",
        description: "Matka Botanicals is a Vancouver Island based vegan beauty brand founded by Nicolina Kolster, dedicated to providing clean and cruelty free solutions to the beauty market while actively defending animal rights through education, awareness, and monthly donations. 

        At Matka we religiously believe in a simplified skincare routine with fast-acting and long-lasting results. Our products are vegan, cruelty-free, and made with love and care in small batches with high performing and 100% plant-based ingredients. We love playing scientists with everything nature has to offer, creating original formulas from scratch, tested on real people - never animals!
        
        Matka is the Finnish word for journey - a never ending journey to design, research, source, formulate, create and provide products you can trust and that are safe for you, your little ones, the animals, and the planet. We pride ourselves with environmental friendly packaging, recycleble materials where possible, cruelty-free practices, and petrolium free, ocean safe, and sustainably sourced ingredients. 1% of our monthly proceeds are donated to Humane Canada.",
        shop_online: true,
        website: "https://matkabotanicals.com/shop",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5baaed5577b903135793f279/a35cd0f8-4cf5-4bd4-b084-3d1cd6935dfd/Marja+sample+thank+you+card+%2821+x+24+in%29-4-min.png",
        spotlight_photo: "https://images.squarespace-cdn.com/content/v1/5baaed5577b903135793f279/1644082542189-25LMY3FA0LEY87DI8GCO/product+sets+%281+of+2%29.jpg",
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
        spotlight_photo:"https://handletheheat.com/wp-content/uploads/2016/08/how-to-make-bagels-recipe-SQUARE.jpg",
    },

    {
        business_name: "Wild Chocolate Tree",
        category: "food",
        one_liner: "Small-batch craft chocolate",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8795309",
        description: "Wild Chocolate Tree is a small-batch craft chocolate company located in Nanaimo, B.C. (Vancouver Island).  

        This is the kind of chocolate that you can feel good about eating every day.  It???s made with organic heirloom cacao and sweetened with organic maple sugar. 
        
        These chocolates are made from the Arriba Nacional variety of cacao.  This is considered one of the finest varieties of cacao with it???s complex fruity and floral flavours.  
        
        I carefully select all of my ingredients to keep things as pure, healthy, and delicious as possible.  You can eat them for dessert or for breakfast! My favorite way is with my morning coffee or as an evening treat along with a hot cup of chaga tea. I hope that you enjoy them as much as I do! ",
        shop_online: true,
        website: "https://www.wildchocolatetree.com/shop-1",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://images.squarespace-cdn.com/content/v1/5df1c95f7cfa163022afff02/1577593626891-1471W9F1AWTJB27L6D8L/Copy%2Bof%2BWild.jpg",
        spotlight_photo:"https://images.squarespace-cdn.com/content/v1/5df1c95f7cfa163022afff02/1661740603152-CT706YU9B3DEQZ6C5H23/DSC_0759.jpg",
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
        spotlight_photo:"https://cdn.shopify.com/s/files/1/0601/1122/5029/files/LOGO-LOJO-01_180x.png?v=1636309319",
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
        spotlight_photo:"https://images.squarespace-cdn.com/content/v1/5fd276beddcfa0625ddeafcd/1648157197296-KYMV8MXB0W257GGLT3JQ/IMG-2122.jpeg",
    },

    {
        business_name: "Vancouver Island Sea Salt",
        category: "food",
        one_liner: "Hand harvested, small batch pacific sea salt",
        business_email: "sales@canadianseasalt.com",
        business_phone: "8675309",
        description: "The pristine shorelines of Vancouver Island create the perfect ???merroir??? for crafting a world class sea salt. We work hard to make our salt but there???s no question that the most special thing about it is where it comes from.

        Located on a stunning 400 acre farm with over 2 km of untouched ocean frontage on Oyster Bay, our salt harvestry sits halfway between the vibrant shellfish coast of Comox and the ???Salmon Capital of the World???, Campbell River. The surrounding waters are glacier fed and bordered by old growth forests. This brings a unique blend of minerals to our salt while keeping our water source clean and unspoiled.
        
        During high tides we collect water at the exact point where the currents from the South of Vancouver Island meet the strong, cold currents from the North, making for a spectacular blending of tides and minerals that are constantly in motion.",
        shop_online: true,
        website: "https://canadianseasalt.com/shop-vancouver-island-sea-salt/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0252/6576/6463/files/Vancouver_Island_Sea_Salt_Logo_2_480x480.png?v=1605815404",
        spotlight_photo:"https://cdn.shopify.com/s/files/1/1605/2033/products/VancouverIslandWhiskySmokedSeaSaltonSwitchGroceryCanada_1600x.jpg?v=1592926856",
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
        spotlight_photo:"https://cdn.shopify.com/s/files/1/1034/2373/products/DSC_0785_grande.jpg?v=1589243584",
    },

    {
        business_name: "True Grain",
        category: "food",
        one_liner: "Bakery using locally milled, organic grains",
        business_email: "baker@truegrain.ca",
        business_phone: "250-871-6600",
        description: "At True Grain, this is the philosophy that guides everything we do. For us, it???s all about reconnecting people with their food.

            Since first opening our doors in the picturesque seaside village of Cowichan Bay in 2004, we???ve poured our passion into creating the very best local, handcrafted, organic bread and pastries (and cookies ??? we make delicious cookies). Over time, our bakeries have become destinations for bread lovers living and visiting beautiful British Columbia. 
            It starts of course, with the grain itself. We use 100 % BC-farmed organic grain for everything we bake. From ancient grains like Einkorn, Emmer, Rye, Khorasan and Spelt, to heritage wheat like Canada???s own Red Fife, we buy directly from organic farmers close to home.
            
            We stay ???true to the grain??? by stone milling all our ancient and heritage grains into fresh, nutrient rich flour. Each day our talented bakers make hundreds of loaves and pastries by hand, using tried and tested European-inspired recipes.  We don???t skimp on quality, and we never cut corners. The result is bread that is wholesome, full of flavour, and is simply a joy to eat.
            
            When we step back, we see the network our passion has helped to create: a sustainable, BC-based food system made up of organic farmers, talented tradespeople, and you ??? our customers, our community members, our friends.",
        shop_online: true,
        website: "https://www.truegrain.ca/collections/cowichan-bakery-pick-up",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/1786/0595/files/True_Grain_Logo_Black_300x147.png?v=1620156074",
        spotlight_photo:"https://cdn.shopify.com/s/files/1/1786/0595/files/Multi_hearth_480x480.jpg?v=1623868162",
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
        spotlight_photo:"https://cowichancream.ca/sitepad-data/uploads/2022/12/prevost.jpg",
    },

    {
        business_name: "Promise Valley Farm",
        category: "food",
        one_liner: "farm and creamery making yogurt and cheese",
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
        spotlight_photo:"https://static.wixstatic.com/media/0a71bb_9e117234672a473ba2d889b4cd318edf~mv2.jpg/v1/fill/w_980,h_1686,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/0a71bb_9e117234672a473ba2d889b4cd318edf~mv2.jpg",
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
        logo_url: "https://scontent.fyvr1-1.fna.fbcdn.net/v/t39.30808-6/305574680_425215613043967_8131444453552406170_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Ht7-M-0snTgAX9DidOU&_nc_ht=scontent.fyvr1-1.fna&oh=00_AfDouA5h_nyPgoJwQyNFezRAL5CByDUZXXdfRgmtxbCQcA&oe=63A49746",
        spotlight_photo:"https://cdn.shopify.com/s/files/1/0531/4369/9646/products/WestwoodLeatherCo-NaturalCardholder-Straightcopy.jpg?v=1658250612&width=713",
    },
    {
        business_name: "Drumroaster Coffee",
        category: "food",
        one_liner: "locally roasted and packages coffee",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "The Oglend family has been involved in the coffee industry for a really, really long time. Geir installed his first espresso machine in 1972, making our collective time involved with coffee around 70 years. Geir continued in the industry, owning a number of cafes and learning to expertly repair espresso machines and successfully build sustainable, community-focused, vibrant businesses. Carsen and Courtney both grew up working in cafes and today, have expanded their knowledge into different facets of Drumroaster Coffee. Carsen has evolved from a cruise ship/session musician into a coffee roaster, focusing on ethically sourcing and purchasing exceptionally nice coffees. Courtney, after some years in University, decided she preferred teaching over taking notes and now conducts all of our barista training programmes. Patricia works furtively behind the scenes, perfecting recipes for the treats to go with your coffee and keeping everyone efficiently organized.

        Last but certainly not least is local fly-fishing celebrity, Andy, whose organizational prowess in our roastery, friendliness, and beard, rounds out our management team.
        
        Our mission today is to provide you with really great coffee.",
        shop_online: true,
        website: "https://www.drumroaster.com/coffees",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0330/7333/files/drumroasterlogo_large.jpg?v=1496943864",
        spotlight_photo:"https://images.squarespace-cdn.com/content/v1/551b257ee4b072084061481f/1628626345109-JQLS93KMCIESFI1BGX5N/DRM_8510.jpg",
    },

    {
        business_name: "Huddy Buddies",
        category: "clothing",
        one_liner: "Handmade soft sole slippers made with mom and baby in mind. ",
        business_email: "kasandradarwin@gmail.com",
        business_phone: "8675309",
        description: "Every mother knows that when you first have a baby they sleep a lot. I have a really hard time sitting still so I thought I would start up a hobby. While my new baby Hudson slept I began to teach myself how to crochet. Soon enough winter rolled around and I was on the search for an easy way to keep my little guy's feet warm. I made my first pair of crochet slippers which I was complimented on and continually asked where I had bought them. When I informed mothers that I had made them they told me I should start selling them...so I took my first order and Huddy Buddies was started. ",
        shop_online: true,
        website: "https://www.huddybuddies.com/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://static.wixstatic.com/media/a4386e_f9b402b4b13e4049b791d185a47799ca~mv2.png/v1/fill/w_446,h_258,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/HUDDY-buddies-blk-frame.png",
        spotlight_photo:"https://static.wixstatic.com/media/a4386e_f7039bd284994197b97ef2a39daa9e55~mv2.jpg/v1/fill/w_1254,h_890,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/a4386e_f7039bd284994197b97ef2a39daa9e55~mv2.jpg",
    },
    
    {
        business_name: "Island Fresh Authentic Mexican",
        category: "food",
        one_liner: "Island handmade sauces, inspired by authentic Mexican recipes.",
        business_email: "admin@islandersfreshauthenticmexican.com",
        business_phone: "778-269-2922",
        description: "I am Lily Rechon-Reguet, I am a Canadian citizen with a Mexican background. I moved from Mexico to Vancouver in 2006 at 24 years old. In Vancouver, I studied as a Web Designer and System Developer at BCIT and worked in the food industry. Married to a lovely French guy Thierry, I had the opportunity to live and work in the food industry in France for three years, where I learned new food processing techniques.

        In Mexico, I went to the University of Industrial Engineering. I had the opportunity to work for 6 years in a candy factory; which involved the development of new products, also the production and sales department as part of the team.
        
        When I returned from France, I discovered that many people had a desire for Mexican food. Then I decided to make my line of fresh Mexican salsas that allows people to create their dishes with a Mexican taste. At this moment Islanders Fresh Authentic Mexican Sauce has been born. Our family business is based on making and selling fresh, traditional salsas, using authentic traditional Mexican recipes with fresh whole food and local ingredients. Keeping the salsas free of Chemicals, Gluten, Dairy, Artificial flavours, and Colours, MSG, and no sugar added. Giving to our consumers a healthy, 100% authentic and unique Mexican taste.
        
        If you can't visit Mexico now, I invite you to have a little piece of Mexico on your plate. Enjoy!",
        shop_online: true,
        website: "https://islandersfreshauthenticmexican.com/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://cdn.shopify.com/s/files/1/0578/6396/2796/files/7df6c0_b8d5ee190f7e404aa930ea69d0f6132b_mv2_d_5400_5400_s_4_2.png?v=1627356694",
        spotlight_photo:"https://cdn.shopify.com/s/files/1/0578/6396/2796/products/sassy-tomato-mexican-salsa_576x.jpg?v=1652321736",
    },
    {
        business_name: "Woodfire Spice",
        category: "food",
        one_liner: "Natural, small batch, quality spices",
        business_email: "sharon@woodfirespice.ca",
        business_phone: "250 247 0095",
        description: "Woodfire Spice.Ca
        was born out of a passion for blending individual flavours together to create easy to use spice blends for everyday use.
        
        Why Woodfire?
        What we believe sets our spices apart from the rest is the 40 years of chef experience that has created them.
        We receive excellent feedback from customers who say our spices are in a class of their own.
        
        Quality Assured
        Only top quality ingredients are used in our spice blends.
        
        Small Batch Production
        Spices are hand-blended in small batches to ensure quality and freshness.
        
        Freshness Preserved
        Our spices are packed and sealed in aluminum tins to protect them from exposure to sunlight,
        often the cause of most damage to spices.
        
        All Natural
        All of our blends are gluten-free with no msg, additives, preservatives or fillers.",
        shop_online: true,
        website: "https://www.woodfirerestaurant.ca/woodfire-spice/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://www.woodfirerestaurant.ca/wp-content/uploads/2022/11/woodfire_spices_logo_cmyk-300x300.png",
        spotlight_photo:"https://www.woodfirerestaurant.ca/wp-content/uploads/2022/08/CM2A8200_websize.jpg",
    },
    {
        business_name: "Yeshi Dressing",
        category: "food",
        one_liner: "delicious, small batch, gluten-free nutritional yeast salad dressing",
        business_email: "admin@yeshidressing.com",
        business_phone: "8675309",
        description: "Community and family are very important to us at Yeshi. We currently make and distribute Yeshi from a small community on Vancouver Island, Canada. Most of our staff started as customers who love our products and wanted to be part of the Yeshi community. Our brand is inclusive, conscious of allergies, the environment, and our community.

        It???s important to us to be part of the greater good.
        
        ",
        shop_online: true,
        website: " https://yeshidressing.com/products/original-dressing/",
        created_at: created_at,
        updated_at: created_at,
        user: users.sample, 
        logo_url: "https://yeshidressing.com/wp-content/uploads/2021/08/logo-green.svg",
        spotlight_photo:"https://yeshidressing.com/wp-content/uploads/2021/08/P9220305-300x225.jpg",
    },
])


Market.create([{

    title: "Commercial Street Night Market",
    description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

    The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.
    
    This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.
    
    We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.
    
    The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
    address: "Commercial Street",
    start_time: "Thu, 22 Dec 2022 16:00:00.000000000 UTC +00:00",
    end_time: "Fri, 23 Dec 2022 16:00:00.000000000 UTC +00:00",
    user: users.sample,

       
},
{

title: "Downtown Weekend Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Fri, 23 Dec 2022 16:00:00.000000000 UTC +00:00",
end_time: "Sun, 25 Dec 2022 16:00:00.000000000 UTC +00:00",
user: users.sample,

   
},
{

title: "Monday Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Mon, 26 Dec 2022 16:00:00.000000000 UTC +00:00",
    end_time: "Mon, 26 Dec 2022 19:00:00.000000000 UTC +00:00",
    user: users.sample,

   
},
{

title: "Mid-Week Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Wed, 28 Dec 2022 16:00:00.000000000 UTC +00:00",
end_time: "Wed, 28 Dec 2022 19:00:00.000000000 UTC +00:00",
user: users.sample,
   
},

{

title: "Mid-Week Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Wed, 04 Jan 2023 16:00:00.000000000 UTC +00:00",
end_time: "Wed, 04 Jan 2023 19:00:00.000000000 UTC +00:00",
user: users.sample,
   
},

{

title: "Mid-Week Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Wed, 11 Jan 2023 16:00:00.000000000 UTC +00:00",
end_time: "Wed, 11 Jan 2023 19:00:00.000000000 UTC +00:00",
user: users.sample,
   
},

{

title: "Mid-Week Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Wed, 18 Jan 2023 16:00:00.000000000 UTC +00:00",
end_time: "Wed, 18 Jan 2023 19:00:00.000000000 UTC +00:00",
user: users.sample,
},

{

title: "Mid-Week Market",
description: "The Commercial Street Night Market brings life, colour and the sounds of summer to downtown Nanaimo. Over 11 weeks, the Market will host nearly 200 artisan vendors, more than a dozen food trucks, 50-60 musical entertainers, and a kids??? zone creating a festive family vibe. Weekly entertainment features include Romper Room Climbing Wall, Face Painting, Craig the Magician, Akron the Barbarian, Playbriola, CHLY DJ Booth, Funkanometry, Ice Carving, and more exciting surprises.

The Night Market was created to bring locals and tourists into the heart of our city to showcase our local restaurants and businesses. The artisan vendors help demonstrate the creative community you???ll find in the mid-Island.

This year, we offer complimentary Park N??? Ride bus service in partnership with BC Transit and North Town Centre. Buses leave North Town???s parking lot (by Montana???s) every hour starting at 4:30 and return on the hour.

We???ve also introduced a free and secure Bike Valet Service in collaboration with Hub City Cycles Community Co-op. The compound is on Wharf Street just below Commercial Street.

The Commercial Street Night Market is located on the traditional, unceded territory of Snuneymuxw First Nation and we pay respect for the opportunity to live, work, and host this event on their land.",
address: "Commerical Street",
start_time: "Wed, 25 Jan 2023 16:00:00.000000000 UTC +00:00",
end_time: "Wed, 25 Jan 2023 19:00:00.000000000 UTC +00:00",
user: users.sample,
   
},

])

Classified.create!([{

    title: "Looking to collab on an instagram giveaway",
    category: "Contest Collaboration",
    description: "Hey fellow makers! I am the owner of LOJO Undies, and I'm looking for some collaborators to participate in an instagram giveaway with me",
    contact_info: " Call me - 867-5309",
    user: users.sample, 
},
{
    title: "Christmas Order Help",
    category: "Paid Job",
    description: "Hey fellow makers! I'm looking for a little extra help packaging orders this Christmas season, will pay $20 per hour, approximately 10 hours per week",
    contact_info: " text me - 867-5309",
    user: users.sample, 
       
},
{
    title: "Market booth attendant",
    category: "Paid Gig",
    description: "Hey Fellow Makers! I signed up for a market the weekend of January 15th, but I double-booked! I'm looking for someone to sub in for me. Will provide paid training probably 10 hours in total at $25 per hour. May be opportunity for future work.",
    contact_info: "Email me - info@lojoundies.com", 
    user: users.sample, 
},
{
    title: "Looking to collab on an instagram giveaway for Valentines day",
    category: "Contest Collaboration",
    description: "Hey fellow makers! I am the owner of LOJO Undies, and I'm looking for some collaborators to participate in an instagram giveaway with me",
    contact_info: " Call me - 867-5309", 
    user: users.sample, 
},
{
    title: "Overstock",
    category: "Sell",
    description: "Hey Fellow Makers! I accidentally made way too much skin cream, and I'm looking to sell it at a discounted rate. Please email for more details",
    contact_info: " Call me - 867-5309",
    user: users.sample, 
       
},
{
    title: "Extra Set of Hands for Market",
    category: "Paid Gig",
    description: "Hey fellow makers! I'm looking for an extra pair of hands for the Commercial street night market next weekend, $16 an hour, probably 10 hours in total.",
    contact_info: " Text me - 867-5309",
    user: users.sample, 
       
}])

    # b.likers = users.shuffle.slice(0, rand(users.count))


markets = Market.all
businesses = Business.all
classifieds = Classified.all
puts markets.errors.full_messages
puts "****************************************"
puts businesses.errors.full_messages
puts "****************************************"
puts classifiedss.errors.full_messages






