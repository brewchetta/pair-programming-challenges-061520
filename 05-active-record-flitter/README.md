# Flitter

We're building the backend for a Twitter clone named Flitter! Once this repo has been cloned down, make sure to `bundle install`.

## User

The `User` model has at least two attributes: `username` and `real_name`. The username is the user's moniker ("chettGuy87") while the `real_name` is a user's given name ("Chett Tiller").

## Flitter

A `Flitter` is our version of a tweet. An instance of a `Flitter` has at least one attribute: `content`, which is the written content of a flitter, up to 160 characters (you don't have to enforce this but if you'd like to, look into ActiveRecord validations).

A flitter belongs to a user which means we can call the `#user` method on a flitter. Additionally, users can like flitters. We can call the `#likers` method on an instance of `Flitter` to see all the users who have liked that flitter. Additionally, `User` instances can call `#liked_flitters` to see an array of flitters they've liked. Utilize ActiveRecord methods to create this functionality. You may need to build another model to make this work.

If a flitter's user is destroyed, the flitter should be destroyed as well.

## Migrations

This utilizes stand alone migrations. There are currently no migrations so to build a new migration use this command: `rake db:new_migration name=foo_bar_migration`.

It's *strongly* suggested you draw a diagram of the models before beginning migrations. This domain is more complex than what we've worked on previously.

## Resources

Hint: You can alias relationships that use the same models, thus building different types of relationships:

```
class Author < ApplicationRecord
  has_many :books
end

class Book < ApplicationRecord
  belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
end
```

You can read more about it here: https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to
