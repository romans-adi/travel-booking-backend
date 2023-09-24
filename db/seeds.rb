require 'faker'

places_data = [
  {
    name: 'Explore the Charm of Paris',
    main_picture: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg/800px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques%2C_Paris_ao%C3%BBt_2014_%282%29.jpg',
    description: 'Discover the cultural and architectural wonders of the City of Light',
  },
  {
    name: 'Swiss Alps',
    main_picture: 'https://strapi-images-prod.s3.us-west-1.amazonaws.com/zermatt-matterhorn-switzerland-shutterstock_1298208013_44fea015e5.jpeg',
    description: 'Hit the slopes in the Swiss Alps',
  },
  {
    name: 'Beach Paradise',
    description: 'Relax on the sandy beaches of the Maldives',
    main_picture: 'https://www.hollywoodreporter.com/wp-content/uploads/2023/03/Maldives-ArrivalJetty-9-H-2023.jpg?w=1024',
  },
  {
    name: 'Historical Athens',
    description: 'Explore the ancient wonders of Athens',
    main_picture: 'https://cdn.britannica.com/66/102266-050-FBDEFCA1/acropolis-city-state-Greece-Athens.jpg',
  },
  {
    name: 'Safari Adventure',
    description: 'Discover wildlife on a Kenyan safari',
    main_picture: 'https://i0.wp.com/relaxaroundtheworld.com/wp-content/uploads/2021/10/Kenya-Safari.jpg?fit=1440%2C700&ssl=1',
  },
  {
    name: 'Mountain Retreat',
    description: 'Escape to the tranquility of the Rockies',
    main_picture: 'https://lp-cms-production.imgix.net/2021-12/GettyImages-1136325182.jpg',
  },
  {
    name: 'Tropical Rainforest',
    description: 'Experience the lush beauty of the Amazon',
    main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp',
  },
  {
    name: 'Island Paradise',
    description: 'Relax in the pristine waters of Bali',
    main_picture: 'https://balidave.com/wp-content/uploads/2022/11/best-hotel-bali.jpeg',
  },
  {
    name: 'City of Lights',
    description: 'Marvel at the vibrant energy of Tokyo',
    main_picture: 'https://i0.wp.com/touristjourney.com/wp-content/uploads/2020/02/jezael-melgoza-layMbSJ3YOE-unsplash-scaled.jpg?fit=2560%2C1661&ssl=1',
  },
  {
    name: 'Desert Adventure',
    description: 'Explore the dunes of the Sahara',
    main_picture: 'https://www.intrepidtravel.com/adventures/wp-content/uploads/2017/05/FU8A0260-88x450.jpg',
  },
]

places_data.each do |place_data|
  place = Place.create(place_data)
    case place.name
    when 'Explore the Charm of Paris'
      travel = Travel.create(
        price: Faker::Number.decimal(l_digits: 2),
        trip_duration: Faker::Number.between(from: 1, to: 15),
        group_size: Faker::Number.between(from: 1, to: 20),
        rating: Faker::Number.between(from: 1, to: 5),
        travel_type: 'cultural',
        place_id: place.id
      )
    when 'Swiss Alps'
      travel = Travel.create(
        price: Faker::Number.decimal(l_digits: 2),
        trip_duration: Faker::Number.between(from: 1, to: 15),
        group_size: Faker::Number.between(from: 1, to: 20),
        rating: Faker::Number.between(from: 1, to: 5),
        travel_type: 'skiing',
        place_id: place.id
      )
  when 'Beach Paradise'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'beach',
      place_id: place.id
    )
  when 'Historical Athens'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'history',
      place_id: place.id
    )
  when 'Safari Adventure'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'safari',
      place_id: place.id
    )
  when 'Mountain Retreat'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'mountain',
      place_id: place.id
    )
  when 'Tropical Rainforest'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'rainforest',
      place_id: place.id
    )
  when 'Island Paradise'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'beach',
      place_id: place.id
    )
  when 'City of Lights'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'city',
      place_id: place.id
    )
  when 'Desert Adventure'
    travel = Travel.create(
      price: Faker::Number.decimal(l_digits: 2),
      trip_duration: Faker::Number.between(from: 1, to: 15),
      group_size: Faker::Number.between(from: 1, to: 20),
      rating: Faker::Number.between(from: 1, to: 5),
      travel_type: 'desert',
      place_id: place.id
    )
  end
end
