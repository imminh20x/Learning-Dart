void main(List<String> args) {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    for (total in ratings) {
      total += total;
    }
    final avgRating = (total / ratings.length);
    restaurant['avgRating'] = avgRating;
  }

  for (var restaurant in restaurants) {
    print(restaurant);
  }
}
