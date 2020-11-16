# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BookModule.Repo.insert!(%BookModule.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
# alias BookModule.Books
# books_data = [
#   %{
#     name: "All in all",
#     description: "Stephen King was born on September 21, 1947, in Portland, Maine. He graduated from the University of Maine and later worked as a teacher while establishing himself as a writer. Having also published work under the pseudonym Richard Bachman, King's first horror novel, Carrie, was a huge success.",
#     published_on: DateTime.utc_now(),
#     author_id: 1,
#     category_id: 1,
#     image_url: "abc.jpg"
#   },
# ]
# Enum.each(books_data, fn(data)->
#   IO.inspect(Books.create_book(data))
# end)
# alias BookModule.Genre.Category

# category_data = %{name: "IT"}
# Category.create_category(category_data)

# alias BookModule.Author
# author_data = %{name: "Kyle", biography: "Senior IT Consltuent"}
# Author.create_author(author_data)
