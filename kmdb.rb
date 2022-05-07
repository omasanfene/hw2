# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Actor.destroy_all
Movie.destroy_all
Role.destroy_all
Studio.destroy_all
# TODO!

# Generate models and tables, according to the domain model.
#Create on db migrate
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
 #studios
 new_studio = Studio.new
 new_studio["name"] = "Warner Bros."
 new_studio.save
 
 Warner = Studio.find_by({ "name" => "Warner Bros."})
 
     #actors
 new_actor = Actor.new
 new_actor["name"] = "Christian Bale"
 new_actor.save
 
 new_actor2 = Actor.new
 new_actor2["name"] = "Michael Caine"
 new_actor2.save
 
 new_actor3 = Actor.new
 new_actor3["name"] = "Liam Neeson"
 new_actor3.save
 
 new_actor4 = Actor.new
 new_actor4["name"] = "Katie Holmes"
 new_actor4.save
 
 new_actor5 = Actor.new
 new_actor5["name"] = "Gary Oldman"
 new_actor5.save
 
 new_actor6 = Actor.new
 new_actor6["name"] = "Heath Ledger"
 new_actor6.save
 
 new_actor7 = Actor.new
 new_actor7["name"] = "Aaron Eckhart"
 new_actor7.save
 
 new_actor8 = Actor.new
 new_actor8["name"] = "Maggie Gyllenhaal"
 new_actor8.save
 
 new_actor9 = Actor.new
 new_actor9["name"] = "Tom Hardy"
 new_actor9.save
 
 new_actor10 = Actor.new
 new_actor10["name"] = "Joseph Gordon-Levitt"
 new_actor10.save
 
 new_actor11 = Actor.new
 new_actor11["name"] = "Anne Hathaway"
 new_actor11.save
 
     #movies
 new_movie = Movie.new
 new_movie["title"] = "Batman Begins"
 new_movie["year_released"] = "2005"
 new_movie["rated"] = "PG-13"
 new_movie["studio_id"] = Warner["id"]
 new_movie.save
 
 new_movie2 = Movie.new
 new_movie2["title"] = "The Dark Knight"
 new_movie2["year_released"] = "2008"
 new_movie2["rated"] = "PG-13"
 new_movie2["studio_id"] = Warner["id"]
 new_movie2.save
 
 new_movie3 = Movie.new
 new_movie3["title"] = "The Dark Knight Rises"
 new_movie3["year_released"] = "2012"
 new_movie3["rated"] = "PG-13"
 new_movie3["studio_id"] = Warner["id"]
 new_movie3.save
 
     #roles
         #define movies
         BB = Movie.find_by({ "title" => "Batman Begins"})
         TDK = Movie.find_by({ "title" => "The Dark Knight"})
         TDKRises = Movie.find_by({ "title" => "The Dark Knight Rises"})
         #define actors
         ChristianBale = Actor.find_by({"name" => "Christian Bale"})
         MichaelCaine = Actor.find_by({"name" => "Michael Caine"})
         LiamNeeson = Actor.find_by({"name" => "Liam Neeson"})
         KatieHolmes = Actor.find_by({"name" => "Katie Holmes"})
         GaryOldman = Actor.find_by({"name" => "Gary Oldman"})
         HeathLedger = Actor.find_by({"name" => "Heath Ledger"})
         AaronEckhart = Actor.find_by({"name" => "Aaron Eckhart"})
         MaggieGyllenhaal = Actor.find_by({"name" => "Maggie Gyllenhaal"})
         TomHardy = Actor.find_by({"name" => "Tom Hardy"})
         JosephGordonLevitt = Actor.find_by({"name" => "Joseph Gordon-Levitt"})
         AnneHathaway = Actor.find_by({"name" => "Anne Hathaway"})
         
         #fill in table
 new_role = Role.new
 new_role["character_name"] = "Bruce Wayne"
 new_role["actor_id"] = ChristianBale["id"]
 new_role["movie_id"] = BB["id"]
 new_role.save
 
 new_role2 = Role.new
 new_role2["character_name"] = "Alfred"
 new_role2["actor_id"] = MichaelCaine["id"]
 new_role2["movie_id"] = BB["id"]
 new_role2.save
 
 new_role3 = Role.new
 new_role3["character_name"] = "Ra's Al Ghul"
 new_role3["actor_id"] = LiamNeeson["id"]
 new_role3["movie_id"] = BB["id"]
 new_role3.save
 
 new_role4 = Role.new
 new_role4["character_name"] = "Rachel Dawes"
 new_role4["actor_id"] = KatieHolmes["id"]
 new_role4["movie_id"] = BB["id"]
 new_role4.save
 
 new_role5 = Role.new
 new_role5["character_name"] = "Comissioner Gordon"
 new_role5["actor_id"] = GaryOldman["id"]
 new_role5["movie_id"] = BB["id"]
 new_role5.save
 
 new_role6 = Role.new
 new_role6["character_name"] = "Bruce Wayne"
 new_role6["actor_id"] = ChristianBale["id"]
 new_role6["movie_id"] = TDK["id"]
 new_role6.save
 
 new_role7 = Role.new
 new_role7["character_name"] = "Joker"
 new_role7["actor_id"] = HeathLedger["id"]
 new_role7["movie_id"] = TDK["id"]
 new_role7.save
 
 new_role8 = Role.new
 new_role8["character_name"] = "Harvey Dent"
 new_role8["actor_id"] = AaronEckhart["id"]
 new_role8["movie_id"] = TDK["id"]
 new_role8.save
 
 new_role9 = Role.new
 new_role9["character_name"] = "Alfred"
 new_role9["actor_id"] = MichaelCaine["id"]
 new_role9["movie_id"] = TDK["id"]
 new_role9.save
 
 new_role10 = Role.new
 new_role10["character_name"] = "Rachel Dawes"
 new_role10["actor_id"] = MaggieGyllenhaal["id"]
 new_role10["movie_id"] = TDK["id"]
 new_role10.save
 
 new_role11 = Role.new
 new_role11["character_name"] = "Bruce Wayne"
 new_role11["actor_id"] = ChristianBale["id"]
 new_role11["movie_id"] = TDKRises["id"]
 new_role11.save
 
 new_role12 = Role.new
 new_role12["character_name"] = "Comissioner Gordon"
 new_role12["actor_id"] = GaryOldman["id"]
 new_role12["movie_id"] = TDKRises["id"]
 new_role12.save
 
 new_role13 = Role.new
 new_role13["character_name"] = "Bane"
 new_role13["actor_id"] = TomHardy["id"]
 new_role13["movie_id"] = TDKRises["id"]
 new_role13.save
 
 new_role14 = Role.new
 new_role14["character_name"] = "John Blake"
 new_role14["actor_id"] = JosephGordonLevitt["id"]
 new_role14["movie_id"] = TDKRises["id"]
 new_role14.save
 
 new_role15 = Role.new
 new_role15["character_name"] = "Selina Kyle"
 new_role15["actor_id"] = AnneHathaway["id"]
 new_role15["movie_id"] = TDKRises["id"]
 new_role15.save
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
all_movies = Movie.all
for movie in all_movies
    studio = Studio.find_by({"id" => movie["studio_id"]})
    puts "#{movie["title"]}  #{movie["year_released"]}  #{movie["rated"]}  #{studio["name"]}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
all_roles = Role.all
for role in all_roles
    movie = Movie.find_by({"id" => role["movie_id"]})
    actor = Actor.find_by({"id" => role["actor_id"]})
    puts "#{movie["title"]}  #{actor["name"]}  #{role["character_name"]}"
end
