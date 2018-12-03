require 'open-uri'
require_relative 'seanbigler_mod1_hw9'

zip_arr = []
# Get zipcodes from web file
address = 'http://icarus.cs.weber.edu/~hvalle/cs3030/data/barCodeData.txt'
open(address) {|f| 
    f.each_line {|line| 
        # Strip out newline and put into array
        zip_arr << line.delete!("\n")}
}
b = BarcodeConverter.new()
zip_arr.each do |zip|
    p 'Converting zipcode %s'%zip
    # Call module to convert zipcode
    b.print_barcode(zip)
end
