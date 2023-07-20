(Project instructions from the professor)

# Acme Travel - Rails site

In this assignment you're going to take your work from the previous assignments and update a rails site.  I've created most of the core site for you.  

## To get going

1. Clone this site to your computer.
2. Change directory to you cloned copy of the site.
3. Use `docker-compose build` to build the image.
4. Use `docker-compose up -d` to start the site.
5. Go to http://localhost:3001 in a browser to see the site.
6. You can now see the site as it was in class.
7. Work on the assignment
8. To stop the site use `docker-compose down`

## Part 1 Applying your Styles.

If you use a single stylesheet for all the pages in the site then all you need to do is copy that css into the  `/app/assets/stylesheets/application.css` file.  Be sure to keep the leave the comments at the top. 

If you used multiple stylesheets or different style sheets for different pages that's okay too.  Open up thet `app/views/layouts/application.html.erb` file and find the line `<%= yield :page_style_sheet %>` this will allow you to put a stylesheet tags in from the different pages. Copy the stylesheet file into `/app/assets/stylesheets/`. In the page where you have a particular stylesheet you want to use put:
```html
<% content_for :page_style_sheet do %>
   <%= stylesheet_link_tag "[YourPageStylesheetHere]", "data-turbo-track": "reload" %>
<% end %>
```
There is a 3rd option is discussed in class.  You can use a similar trick that that above using the `<%= yield :body_class %>` to pass a body class intot the body tag then update your stylesheet to match. 


## Part 2 copying the HTML for the static pages.

The first part is to copy the static pages from the previous sites to this one.  Remember that Rails uses a HTML template located at `app/views/application.html.erb` as wrapper for all the site's pages. You can modify that template if needed. Next you'll update the 3 static pages Home (if needed), Why Travel With Us and Privacy Policy.  Just copy the center content (the stuff in <main> if you fallowed my example) to each of the pages.  You can find them in `\app\views\pages`, they are:
* home.html.erb
* privacy.html.erb
* why.html.erb

## Part 3 Updating the trips page.

Take a look at `\app\views\trips\index.html.erb` file:
```html
<p style="color: green"><%= notice %></p>

<h1>Trips</h1>

<div id="trips">
  <% @trips.each do |trip| %>
   <div>
     <%= image_tag trip.main_image, alt: trip.main_photo_alt %>
     <h2><%= link_to trip.title, trip %></h2>
     <p class="intro"><%=simple_format trip.intro %></p>

   </div>
    <hr>
  <% end %>
</div>
```

Notice that the code inside the `<% @trips.each do |trip| %>` repeats for each trip in the database.  Update the code in there from your previous assignment. So that the cards show in this site like your styled site. 

## Part 4 Updating the trip page

Next you're going to use one template for all the pages in the site.  You can find that template in two files.  First `app/views/trips/show.html.erb` which looks like this:

```html
<p style="color: green"><%= notice %></p>

<% content_for :body_class do %>trips<% end %>
<% content_for :title do %>
  <%= @trip.title %>
<% end %>

<%= render @trip %>
```
This file is like a wrapper in a wrapper.  When it call `<%= render @trip %>` if will then render the `app/views/_trip.html.erb` file.  This file contains the rest of the page.  Modify the `app/views/_trip.html.erb` file to reflect your trip pages.  I've created may examples in the file of accessing the content related to trips lodgings, departures and destinations.  Use these examples for the regions, statements and itinerary sections. 

Take a look at the trip model `app/views/trip.rb` to see the relationships between the models.  

# Part 5 Catalog Request

This is the last part and you'll need to do a little command line work for this last part.  When you click on the Calatlog Request link in the navigation you see an error page.  That's because it's not been created yet.  You'll need to make a scaffold using the Rails Generator.  If you go to the contact us page you'll see that it works fine.  Here is the command I used to create it:
```
rails generate scaffold ContactUsRequest name:string regarding:string phone_number:string email_address:string message:text
```

You'll need to do something very similar for the CatalogRequest but don't forget the additional fields.  Start by opening a bash terminal in your docker image:
```
docker exec -it cs351AcmeTravelRails bash 
```
Then you'll run your command to generate the CatalogRequests 
```
rails generate scaffold CatalogRequest ... 
```
To update the database you'll need to run the rails migration you just created along with the other files:
```
rails db:migrate
```

Lastly update the navigation to point to the new cataloga request page you created.  See the contact us example in the footer.

***If you make a mistake*** you can:
1. rollback the database changes with 
```Rails db:rollback```
2. remove all the files you made by running:
```rails destroy scaffold CatalogRequest```

## Turning it in
When you're done add, commit and push all your code before submitting your repository URL on Blackboard. 


## Grading Rubric

| Percent | Section                                  |
|---------|------------------------------------------|
| 15%     | Applying Styles from previous Assignment |
| 20%     | Static Hone, Why and Privacy pages.      |
| 20%     | Trip List Page                           |
| 30%     | Trip Page Template                       |
| 10%     | Catalog Requests                         |
| 5%      | Completeness and Pride in work           |

