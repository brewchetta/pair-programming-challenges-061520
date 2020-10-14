# Star Tracker

We need to build out a star tracker that keeps track of stars and their associated constellations.

## What You Have

Currently you have a `Constellation` model and an index that shows all the constellations and their associated stars. What we're missing however is the `Star` model and it's migrations. Additionally, you have an empty `stars_controller.rb` as well as a folder to put the stars views.

## Getting Started

Make sure to bundle install and then create a migration and model for stars. Stars belong to constellations so be sure to add in the appropriate macros and fields.

Once you've migrated, you should be able to start the server with `shotgun`. You also have access to `rake console` as well as `rake db:seed`. At this point it's probably best to test your associations to make sure they work.

## Creating/Editing Stars

The most important part of this challenge is creating and editing stars. You need to be able to:

1. Create a form for building stars. The form should have a field to write in a star's constellation.

2. When you create a star, the star should be associated with the constellation that was typed in. If the constellation doesn't exist, it needs to be created.

3. You should be able to edit stars in the same manner as they're created.

4. Stars must have a constellation, name, and number of light years. Stars cannot be created without these.

## Hints

You can perform quite a bit of your work in the create route for stars. Just because it exists in the stars controller doesn't mean you can't do work with the constellations as well!

The easiest way to avoid stars without names, light year metrics, or constellations, is to utilize validations.
