require 'faker'

places_data = [
  {
    name: 'Paris',
    main_picture: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/800px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg',
    description: 'Discover the cultural and architectural wonders of the City of Light',
  },
  {
    name: 'Swiss Alps',
    main_picture: 'https://strapi-images-prod.s3.us-west-1.amazonaws.com/zermatt-matterhorn-switzerland-shutterstock_1298208013_44fea015e5.jpeg',
    description: 'Hit the slopes in the Swiss Alps',
  },
  {
    name: 'Maldives',
    description: 'Relax on the sandy beaches of the Maldives',
    main_picture: 'https://www.hollywoodreporter.com/wp-content/uploads/2023/03/Maldives-ArrivalJetty-9-H-2023.jpg?w=1024',
  },
  {
    name: 'Athens',
    description: 'Explore the ancient wonders of Athens',
    main_picture: 'https://cdn.britannica.com/66/102266-050-FBDEFCA1/acropolis-city-state-Greece-Athens.jpg',
  },
  {
    name: 'Kenyan Safari',
    description: 'Discover wildlife on a Kenyan safari',
    main_picture: 'https://i0.wp.com/relaxaroundtheworld.com/wp-content/uploads/2021/10/Kenya-Safari.jpg?fit=1440%2C700&ssl=1',
  },
  {
    name: 'The Rockies',
    description: 'Escape to the tranquility of the Rockies',
    main_picture: 'https://lp-cms-production.imgix.net/2021-12/GettyImages-1136325182.jpg',
  },
  {
    name: 'Amazon Rainforest',
    description: 'Experience the lush beauty of the Amazon',
    main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp',
  },
  {
    name: 'Bali',
    description: 'Relax in the pristine waters of Bali',
    main_picture: 'https://balidave.com/wp-content/uploads/2022/11/best-hotel-bali.jpeg',
  },
  {
    name: 'Tokyo',
    description: 'Marvel at the vibrant energy of Tokyo',
    main_picture: 'https://i0.wp.com/touristjourney.com/wp-content/uploads/2020/02/jezael-melgoza-layMbSJ3YOE-unsplash-scaled.jpg?fit=2560%2C1661&ssl=1',
  },
  {
    name: 'Sahara Desert',
    description: 'Explore the dunes of the Sahara',
    main_picture: 'https://www.intrepidtravel.com/adventures/wp-content/uploads/2017/05/FU8A0260-88x450.jpg',
  },
]

places_data.each do |place_data|
  place = Place.create(place_data)
    case place.name
    when 'Paris'
      travel = Travel.create(
        name: 'Explore the Charm of Paris',
        image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
        price: Faker::Number.decimal(l_digits: 2),
        trip_duration: Faker::Number.between(from: 1, to: 15),
        group_size: Faker::Number.between(from: 1, to: 20),
        rating: Faker::Number.between(from: 1, to: 5),
        travel_type: 'cultural',
        place_id: place.id
      )
    when 'Swiss Alps'
      travel = Travel.create(
        name: 'Alpine Adventure Escapes',
        image: 'https://i.pinimg.com/736x/1f/e7/8f/1fe78fdf26caea2a98a4a9c8872efa60.jpg',
        price: Faker::Number.decimal(l_digits: 2),
        trip_duration: Faker::Number.between(from: 1, to: 15),
        group_size: Faker::Number.between(from: 1, to: 20),
        rating: Faker::Number.between(from: 1, to: 5),
        travel_type: 'skiing',
        place_id: place.id
      )
  when 'Maldives'
    travel = Travel.create(
      name: 'Beach Paradise',
      image: 'https://i0.hippopx.com/photos/140/199/675/veligandu-island-maldives-ocean-island-preview.jpg',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'beach',
      place_id: place.id
    )
  when 'Athens'
    travel = Travel.create(
      name: 'Ancient Athenian Odyssey',
      image: 'https://images.unsplash.com/photo-1605153322277-dd0d7f608b4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXRoZW5zfGVufDB8fDB8fHww&w=1000&q=80',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'history',
      place_id: place.id
    )
  when 'Kenyan Safari'
    travel = Travel.create(
      name: 'Savannah Serenity Safaris',
      image: 'https://ivhq.imgix.net/images/map/ivhq-volunteer-abroad-region-africa-hero.jpg?auto=format,compress',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'safari',
      place_id: place.id
    )
  when 'The Rockies'
    travel = Travel.create(
      name: 'Rocky Mountain Explorer Expeditions',
      image: 'https://live.staticflickr.com/1584/26413306660_626c3d4e21_b.jpg',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'mountain',
      place_id: place.id
    )
  when 'Amazon Rainforest'
    travel = Travel.create(
      name: 'Tropical Rainforest Treks',
      image: 'https://images.unsplash.com/photo-1599582964755-971498d2b4a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YW1hem9uJTIwZm9yZXN0fGVufDB8fDB8fHww&w=1000&q=80',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'rainforest',
      place_id: place.id
    )
  when 'Bali'
    travel = Travel.create(
      name: 'Bali Bliss Escapes',
      image: 'https://images.unsplash.com/photo-1616484173745-07f25fd0547f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFsaSUyQyUyMGluZG9uZXNpYXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'beach',
      place_id: place.id
    )
  when 'Tokyo'
    travel = Travel.create(
      name: 'City of Lights Tranquil Journeys',
  image: 'https://images.unsplash.com/photo-1503899036084-c55cdd92da26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dG9reW98ZW58MHx8MHx8fDA%3D&w=1000&q=80',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'city',
      place_id: place.id
    )
  when 'Sahara Desert'
    travel = Travel.create(
      name: 'Sands Expeditions',
      image: 'https://i.pinimg.com/736x/82/bc/bd/82bcbd37e159cfc3251929c629f8b835.jpg',
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'desert',
      place_id: place.id
    )
  end
end
