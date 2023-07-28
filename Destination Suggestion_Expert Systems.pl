% Destinations to suugest
destination(jaipur, low, historical, indian, hot).
destination(agra, medium, historical, indian, hot).
destination(udaipur, medium, nature, indian, moderate).
destination(kochi, medium, cultural, seafood, humid).
destination(goa, medium, beach, seafood, humid).
destination(mumbai, high, shopping, indian, hot).
destination(bangalore, high, technology, south_indian, moderate).
destination(chennai, high, beach, south_indian, hot).
destination(darjeeling, medium, nature, indian, cold).
destination(shimla, medium, nature, indian, cold).
destination(ooty, medium, nature, indian, moderate).
destination(kodaikanal, medium, nature, south_indian, moderate).
% Questions to ask
question(budget, 'What is your budget for this trip? (high/medium/low)').
question(activity, 'What type of activity do you enjoy? (historical, cultural, nature, beach, shopping 
and technology)').
question(food, 'What type of food do you enjoy? (indian, seafood, south_indian)').
question(weather, 'What type of weather do you prefer? (hot, cold, moderate, humid)').
% Rules
suggest_destination(Destination) :-
 question(budget, BudgetQ),
 write(BudgetQ), nl,
 read(Budget),
 question(activity, ActivityQ),
 write(ActivityQ), nl,
 read(Activity),
 question(food, FoodQ),
 write(FoodQ), nl,
 read(FoodPref),
 question(weather, WeatherQ),
 write(WeatherQ), nl,
 read(Weather),
 destination(Destination, Budget, Activity, Food, DestinationWeather),
 Budget = Budget,
 Activity = Activity,
 Food = FoodPref,
 Weather = DestinationWeather.
% Main 
main :-
 write('Welcome to the Travel Expert System!'), nl,
 suggest_destination(Destination),
 write('Based on your answers, we recommend visiting '), write(Destination), write('.'), nl.
