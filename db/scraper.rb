require "open-uri"
require "nokogiri"

def ebscraper(user)
  url = "https://www.britannica.com/browse/Philosophers/1"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)

  urlsarray = []
  html_doc.search(".font-weight-bold.font-16").each do |element|
    urlsarray << "https://www.britannica.com#{element.attribute("href").value}"
  end

  # urlsarray = ["https://www.britannica.com/biography/Ramana-Maharshi", "https://www.britannica.com/biography/Paul-Ricoeur", "https://www.britannica.com/biography/Saadia-ben-Joseph", "https://www.britannica.com/biography/Straton-of-Lampsacus"]

  urlsarray.each do |url|
    doc = Nokogiri::HTML(URI.open(url).read, nil, "utf-8")
    firstquery = doc.at('dt:contains("Born")').next_element.search(".fact-item").first.text.gsub("c.", "").gsub(/\(.*/, "").rstrip unless doc.at('dt:contains("Born")').nil?
    secondquery = doc.at('dt:contains("Died")').next_element.search(".fact-item").first.text.gsub("c.", "").gsub(/\(.*/, "").rstrip unless doc.at('dt:contains("Died")').nil?
    firstdate = doc.at('dt:contains("Born")').nil? ? "invalid" : firstquery
    seconddate = doc.at('dt:contains("Died")').nil? ? "invalid" : secondquery
    name = doc.search("h1").text
    description = doc.search(".topic-paragraph").first.text.gsub("  ", " ")
    picture_url = doc.search(".card-media").attribute("href").nil? ? "invalid" : doc.search(".card-media").attribute("href").value
    firstdate = firstdate.split[0] if firstdate.include?("or")
    seconddate = seconddate.split[0] if seconddate.include?("or")
    firstdate = "January 1, #{firstdate}" if (firstdate.split.length == 1 || (firstdate.split.length == 2 || firstdate.split.length[1] == "BCE")) && firstdate != "invalid"
    seconddate = "January 1, #{seconddate}" if (seconddate.split.length == 1 || (seconddate.split.length == 2 || seconddate.split.length[1] == "BCE")) && seconddate != "invalid"
    p url
    p name
    p description
    p firstdate
    p seconddate
    p picture_url
    event = Hash.new
    if firstdate != "invalid"
      event = {
        name: name,
        description: description,
        start_date: Date.parse(firstdate, false),
        user: user
      }
      event[:end_date] = Date.parse(seconddate, false) unless seconddate == "invalid"
    end
    # event.photo.attach(io: File.open(picture_url), filename: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png", content_type: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png") unless picture_url == "invalid"
    # if event.save
    #   p "success"
    #   p event
    # else
    #   p "failure"
    # end
    p event
  end
end

testuser = "testuser"
ebscraper(testuser)
