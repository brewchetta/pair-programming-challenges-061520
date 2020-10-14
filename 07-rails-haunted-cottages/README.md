# README

A wealthy patron has asked you to build a website after their first web developer disappeared under mysterious circumstances. Their website, Haunted Cottage Seeker, already has a front page and information on their cottage rentals. All they need now is for you to finish it.

To get started, clone down the repository and run `bundle install`.

### Models

First, generate a cottage model. It should have these attributes:

```
name => string
location => string
rating => float
description => string
number_of_visitor_disappearances => integer
img_url => string
```

Once the models have been created and migrated, run `rails db:seed`. If everything works correctly, the terminal should display a list of newly created cottages. Please note that the rating is out of five stars.

### Controller & Routes

Generate a controller for the cottages. It should include an index and show, as well as two special routes: `/cottages/highest-rated`, `/cottages/most-disappearances`. Don't worry about the other RESTful routes for now (although you can certainly build them if you feel confident doing that).

Your `cottages#index` action should render a view that shows the name, location, and thumbnail img_url for each cottage. To get a thumbnail you can use `class="thumbnail"` in your image tag (the styling has been defined in main.css). The different cottage names should be links leading to their show pages.

Your `cottage#show` action should find a cottage based on the id param and render a page with all that cottage's information, including an image found through the img_url.

The special route `/cottages/highest-rated` should find the highest rated cottage and redirect to its show page.

The special route `/cottages/most-disappearances` should find the cottage with the most disappearances and redirect to its show page.
