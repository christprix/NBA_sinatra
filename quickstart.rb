require 'sinatra'
require 'httparty'

API_KEY = 'AIzaSyAfeFKuxuFZJb4U0F8aeoHB4cTHGrGp2QE'

get '/search' do
  query = params['hawks vs heat'] # The search query from the URL

  # Make the API request to YouTube's search endpoint
  response = HTTParty.get("https://www.googleapis.com/youtube/v3/search?key=#{API_KEY}&q=#{query}")

  # Handle the response (you may want to parse JSON)
  if response.code == 200
    # You can process the JSON response here
    json_response = JSON.parse(response.body)
    # Display the results or do something with them
    p json_response['items'].map { |item| item['snippet']['title'] }.join("<br>")
  else
    "Error: #{response.code}"
  end
end
