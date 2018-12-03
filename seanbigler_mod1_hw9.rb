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
        p "Error: Zip code is not 5 digits"
        return 1
    elsif not zipcode.is_int
        p "Error: Zip code is not all numberic"
        return 1
    end

    # Parse numbers
    zipcode.split('').each { |d|
        barcode << print_digit(d.to_i)
        total += d.to_i
    }
    return 0
end


def print_digit(digit)
    # Converts input digit into barcode format and returns result
    # Args:
    #   digit: Integer to be reformatted
    # Returns:
    #   barcode: String representing the barcode
    return True
end


class String
    def is_int
        self.to_i.to_s == self
    end
end
