class CityModel {
  final String id;
  final String cityName;
  final String cityDescription;
  final Tag tag;
  final String urlImage;

  CityModel({
    required this.id,
    required this.cityName,
    required this.cityDescription,
    required this.tag,
    required this.urlImage,
  });

  static List<CityModel> cities = [
    CityModel(
      id: "1",
      cityName: "New York",
      cityDescription:
          "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough thats among the worlds major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square",
      tag: Tag.newCity,
      urlImage:
          "https://assets.weforum.org/global_future_council/image/-rx5e0P1APq4omo4JC9ZQ3KdegGg7SfuVfWfXK4C_K4.jpeg",
    ),
    CityModel(
      id: "2",
      cityName: "London",
      cityDescription:
          "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.",
      tag: Tag.newCity,
      urlImage:
          "https://assets.editorial.aetnd.com/uploads/2019/03/topic-london-gettyimages-760251843-feature.jpg",
    ),
    CityModel(
      id: "3",
      cityName: "São Paulo",
      cityDescription:
          "São Paulo, Brazil’s vibrant financial center, is among the world's most populous cities, with numerous cultural institutions and a rich architectural tradition. Its iconic buildings range from its neo-Gothic cathedral and the 1929 Martinelli skyscraper to modernist architect Oscar Niemeyer’s curvy Edifício Copan. The colonial-style Pátio do Colégio church marks where Jesuit priests founded the city in 1554.",
      tag: Tag.mostCity,
      urlImage:
          "https://cdn.britannica.com/54/101754-050-3FA9B4A0/Downtown-Sao-Paulo.jpg",
    ),
    CityModel(
      id: "4",
      cityName: "Tokyo",
      cityDescription:
          "Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city's many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum).",
      tag: Tag.mostCity,
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/b/b2/Skyscrapers_of_Shinjuku_2009_January.jpg",
    ),
    CityModel(
      id: "5",
      cityName: "Beijing",
      cityDescription:
          "Beijing, China’s sprawling capital, has history stretching back 3 millennia. Yet it’s known as much for modern architecture as its ancient sites such as the grand Forbidden City complex, the imperial palace during the Ming and Qing dynasties. Nearby, the massive Tiananmen Square pedestrian plaza is the site of Mao Zedong’s mausoleum and the National Museum of China, displaying a vast collection of cultural relics.",
      tag: Tag.mostCity,
      urlImage:
          "https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcToyRzeE_IovChEQL8ctvDReFhieySoXl5kGgoSoJ-4L_Hvr0faWANLHHILWTXYRA7S",
    ),
    CityModel(
      id: "6",
      cityName: "Chicago",
      cityDescription:
          "Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline punctuated by skyscrapers such as the iconic John Hancock Center, 1,451-ft. Willis Tower (formerly the Sears Tower) and the neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute of Chicago with its noted Impressionist and Post-Impressionist works.",
      tag: Tag.recomendedCity,
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/d/d2/Navy_Pier_W.jpg",
    ),
  ];
}

enum Tag { newCity, mostCity, recomendedCity }
