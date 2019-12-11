class PiEstimator < ApplicationRecord
  def mCarlo3D_pi(list)
    i = 0
    est_radius = list.flatten.max

    list.each do |coord|
      if length_hypotunuse(coord) <= est_radius
        i += 1
      end
    end

    @i = i

    @pi_estimate = 6 * (i/list.length.to_f)
    def rel_pi_error(list)
      error = (Math::PI - @pi_estimate).abs/ Math::PI * 100
      error.round(2)
    end
    def acceptable_error?(list)
      rel_pi_error(list) <= 5
    end
    return [list.length,est_radius,i,@pi_estimate.round(4),
    "#{rel_pi_error(list)}%",acceptable_error?(list)]
  end
  # 4/3pir^3 *  == 2r ^ 3

  def length_hypotunuse(coord)
    hyp_sqrd = coord[0] ** 2 + coord[1] ** 2 + coord[2] ** 2
    hyp_length = hyp_sqrd ** 0.5
  end
  def check_for_coord_length(list)
    if list.any? { |e| e.length != 3  }
      raise "coordinates must be in 3d, ie [1,1,1]"
    end
  end
end
