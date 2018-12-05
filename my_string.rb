=begin
**************************************
Adds function is_int to String class

Function determines if the string is
also an int
**************************************
=end
class String
    def is_int
        self.to_i.to_s == self
    end
end
