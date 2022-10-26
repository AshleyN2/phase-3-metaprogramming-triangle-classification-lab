class Triangle
  attr_accessor :len_eins, :len_zwei, :len_drei

  def initialize (len_eins, len_zwei, len_drei)
    @len_eins = len_eins
    @len_zwei = len_zwei
    @len_drei = len_drei
  end

  def kind 
    triangle_sides(@len_eins, @len_zwei, @len_drei)
    #if (@len_eins == @len_zwei = @len_drei)
      if (self.len_eins == self.len_zwei && self.len_eins == self.len_drei && self.len_zwei == self.len_drei)
        :equilateral
      elsif (self.len_eins == self.len_zwei || self.len_eins == self.len_drei || self.len_zwei == self.len_drei)
        :isosceles
      else
        :scalene
      end
  end

  def triangle_sides (len_eins, len_zwei, len_drei)
    if ( len_eins > 0 && len_zwei > 0 && len_drei  > 0 && len_eins + len_zwei > len_drei && len_eins + len_drei > len_zwei && len_zwei + len_drei > len_eins)
      true
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle"
      end
  end
end
