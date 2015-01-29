Welcome to How Much Should I Eat? (HMSIE)

To Run:

#Navigate to your terminal:

1. type 'bundle install'
2. type 'bundle exec rake db:drop' (to drop an old db if it exists)
3. type 'bundle exec rake db:create' (to create a new db)
4. type 'bundle exec rake db:migrate' (migrates the db)
5. Open your browser and type 'http://localhost:9393/'

Resting Caloric levels are calculated using the [Basal Metabolic Rate](http://en.wikipedia.org/wiki/Basal_metabolic_rate).

Caloric levels with activity are calculated using the [Harris-Benedict Equation](http://en.wikipedia.org/wiki/Harris%E2%80%93Benedict_equation) formula.

##Future features/refactoring to include:

* Ability to track a goal against a current weight (caloric expenditure)
* Redo database schema
* Add a visualization of progress (via a charting library)