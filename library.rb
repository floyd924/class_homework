class Library

  # attr_accessor

  def initialize(array)
    @books = array
  end

  def book_count
    return @books.length
  end

  def get_names
    names = []
    for book in @books
      names.push(book[:title])
    end
    return names
  end

  def get_book_info(name_of_book)
    for book in @books
      if book[:title] == name_of_book
        return book
      end
    end
    return "book not found"
  end

  def rental_details(name_of_book)
    for book in @books
      if book[:title] == name_of_book
        return book[:rental_details]
      end
    end
    return "book not found"

  end

  def add_book(new_book)
    @books << {
      title: new_book,
      rental_details: {
        student_name: " ",
        date: " "
      }
    }
  end

  def update(name_of_book, new_student, new_date)
    for book in @books
      if book[:title] == name_of_book
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
        return book[:rental_details]
      end
    end
    return "book not found"
  end






end
















#
#
#
# #
# morningside = Library.new([
#   {
#     title: "American Idiot",
#     rental_details: {
#       student_name: "Tre Cool",
#       date: 4
#       # 13/09/04
#     }
#   },
#
#   {
#     title: "California",
#     rental_details: {
#       student_name: "Mark Hoppus",
#       date: 5
#       # 04/07/16
#     }
#   },
#
#   {
#     title: "All Hope Is Gone",
#     rental_details: {
#       student_name: "Corey Taylor",
#       date: 6
#       # 06/06/06
#     }
#   }
#
#   ])
