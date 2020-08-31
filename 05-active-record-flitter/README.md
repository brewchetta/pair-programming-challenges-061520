# Flitter

We're building the backend for a Twitter clone named Flitter!

## User

The `User` model has at least two attributes: `username` and `real_name`. The username is the user's moniker ("chettGuy87") while the `real_name` is a user's given name ("Chett Tiller").

Additionally, users should be able to follow users. A user should be able to call `#followers` to see who is following them and `#follows` to see who that user is currently following. You may have to create another model to get this to work.

## Flit

A `Flit` is our version of a tweet. An instance of a `Flit` has at least one attribute: `content`, which is what a user has "flitted" about.

A flit belongs to a user which means we can call the `#user` method on a flit. Additionally, users can like flits. We can call the `#liked_by` method on an instance of `Flit` to see all the users who have liked that flit. Utilize ActiveRecord methods to create this rather than building it from scratch. You may need to build another model to make this work.

If a flit's user is destroyed, the flit should be destroyed as well.

## Migrations

This utilizes stand alone migrations. There are currently no migrations so to build a new migration use this command: `rake db:new_migration name=foo_bar_migration`.

It's *strongly* suggested you draw a diagram of each model before beginning migrations.

## Resources

Hint: You can alias different relationships that use the same models, thus building different types of relationships.

```
class Author < ApplicationRecord
  has_many :books
end

class Book < ApplicationRecord
  belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
end
```

You can read more about it here: https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to
