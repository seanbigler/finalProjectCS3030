require 'open-uri'

zip_arr = []
# Get zipcodes from web file
address = 'http://icarus.cs.weber.edu/~hvalle/cs3030/data/barCodeData.txt'
open(address) {|f| 
    f.each_line {|line| 
        # Strip out newline and put into array
        zip_arr << line.delete!("\n")}
}

zip_arr.each do |zip|
    p 'Converting zipcode %s'%zip
    # Call module to convert zipcode
end
