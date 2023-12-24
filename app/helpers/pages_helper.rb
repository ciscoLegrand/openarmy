module PagesHelper
  def random_user
    response = HTTParty.get('https://randomuser.me/api/')
    user = {
      author: "#{response['results'][0]['name']['first']} #{response['results'][0]['name']['last']}",
      avatar: response['results'][0]['picture']['large'],
      title: Faker::Lorem.sentence(word_count: rand(3..5).truncate(30)),
      comment: Faker::Lorem.paragraph(sentence_count: rand(10..20)).truncate(250),
      stars: rand(3..5)
    }
    user
  end
end
