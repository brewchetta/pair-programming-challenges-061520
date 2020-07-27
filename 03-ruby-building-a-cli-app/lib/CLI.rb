class CLI

  def initialize
    @api = APIService.new
    @input = ''
  end

  def run
    # Add code here for your CLI
    @api.fetch_reports

    main_menu
  end

  def main_menu

    until @input == 'exit'
      show_menu_options
      @input = gets.chomp.downcase
      case @input
      when "1"
        puts Report.all.sample.pretty_print
      when "2"
        print_most_recent
      when "3"
        print_highest_rated
      when "exit"
        puts "Goodbye!"
      else
        puts "Invalid input!"
      end
    end # end while loop

  end

  def show_menu_options
    puts "What would you like to do?\n1. Show a random report\n2. Show 3 most recent reports\n3. Show 3 highest rated reports\nType 'exit' to exit the program"
  end

  def print_most_recent
    sorted_by_date = Report.all.sort {|report_a, report_b| report_b.date_released <=> report_a.date_released}
    sorted_by_date[0,3].each {|r| r.pretty_print}
  end

  def print_highest_rated
    sorted_by_rating = Report.all.select {|r| r.rating}.sort {|a,b| b.rating <=> a.rating}
    sorted_by_rating[0,3].each {|r| r.pretty_print}
  end

end
