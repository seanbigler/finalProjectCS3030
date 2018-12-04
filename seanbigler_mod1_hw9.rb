require_relative 'my_string'

class BarcodeConverter
    def print_barcode(zipcode)
        # Validates input and parses the numbers.
        # Calls print_digit on each digit to print
        # zipcode numbers and check digit
        # Args:
        #   zipcode: string zipcode to be validated and converted
        # Returns:
        #   0 if zipcode is valid, 1 otherwise
        barcode = "|"
        total = 0

        if zipcode.length != 5
            puts "Error: Zip code is not 5 digits"
            return 1
        elsif not zipcode.is_int
            puts "Error: Zip code is not all numberic"
            return 1
        end

        # Parse numbers
        zipcode.split('').each { |d|
            barcode << print_digit(d.to_i)
            total += d.to_i
        }

        # Calculate check digit
        if total % 10 > 0
            check_digit = 10 - (total % 10)
        else
            check_digit = 0
        end
        barcode << print_digit(check_digit)
        barcode << "|"
        puts barcode
        return 0
    end


    def print_digit(digit)
        # Converts input digit into barcode format and returns result
        # Args:
        #   digit: Integer to be reformatted
        # Returns:
        #   barcode: String representing the barcode
        barcode = ""
        num_bars = 0
        if digit == 0
            digit = 11
        end

        if digit >= 7
            barcode << "|"
            digit -= 7
            num_bars += 1
        else
            barcode << ":"
        end

        if digit >= 4
            barcode << "|"
            digit -= 4
            num_bars += 1
        else
            barcode << ":"
        end

        if digit >= 2
            barcode << "|"
            digit -= 2
            num_bars += 1
        else
            barcode << ":"
        end

        if digit >= 1
            barcode << "|"
            digit -= 1
            num_bars += 1
        else
            barcode << ":"
        end

        if num_bars == 1
            barcode << "|"
        else
            barcode << ":"
        end


        return barcode
    end


end
