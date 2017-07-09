BASE_URL = "https://therapists.psychologytoday.com/rms/prof_results.php?sid=1499561046.1827_32152&city=San+Francisco&state=CA&rec_next="
API_URL = "https://pt-scrape-api.herokuapp.com//?url="

def extract_therapist_urls(url)
  page = Nokogiri::HTML(open(url))
  page.css('.result-name').each{|div| @therapist_urls << div["href"]}
end

def query_api(url)
  response = HTTParty.get(API_URL+url)
  @data << response
end


@data = []

# generate a list of urls to grab profiles from
@therapist_urls = []
# list_urls = (1..1861).step(20).map{|num| BASE_URL + (num.to_s)}
list_urls = (1..61).step(20).map{|num| BASE_URL + (num.to_s)}
list_urls.each{|url|extract_therapist_urls(url)}


#Query API and generate therapists
@therapist_urls.each do |url|
  response = query_api(url)
  therapist = Therapist.new
  if response[:data] != "invalid search criteria"
    if response[:data][:client_ethnicities] != "none provided"
      response[:data][:client_ethnicities].each do |ethnicity|
       ClientEthnicities.find_or_create(name: ethnicity)

       #create many to many relationship
      end
    end
    response[:data][:client_languages]
    response[:data][:client_categories]
    response[:data][:target_issues]
    response[:data][:issues]
  end


  #CREATE MDOELS FOR EACH OF THE API CALLS

end
