include Math

RADIUS = 6371.393 # Radius of the earth

def convert_to_radians(degrees)
  degrees * PI / 180
end

def haversine(location_a, location_b)
  lat_a = location_a.split(',')[0].to_f
  lng_a = location_a.split(',')[1].to_f

  lat_b = location_b.split(',')[0].to_f
  lng_b = location_b.split(',')[1].to_f

  # Need to convert to radians here before applying math
  radians_lat_a = convert_to_radians(lat_a)
  radians_lng_a = convert_to_radians(lng_a)
  radians_lat_b = convert_to_radians(lat_b)
  radians_lng_b = convert_to_radians(lng_b)

  2 * RADIUS * asin(sqrt((radians_lat_b - radians_lat_b)/2) **2 + cos(radians_lat_b) * cos(radians_lat_b) * sin((radians_lng_b - radians_lng_a)/2) **2)
end

def main

  if ARGV[0].nil? || ARGV[1].nil? || ARGV[2].nil? || ARGV[3].nil?
    puts '---- Wrong number of arguments! ----'
    return -1
  end

  location_a = ARGV[0]
  location_b = ARGV[1]
  location_c = ARGV[2]
  location_d = ARGV[3]

  distance_a_to_b = haversine(location_a, location_b)
  distance_c_to_d = haversine(location_c, location_d)

  if distance_a_to_b > distance_c_to_d
    puts "Distance: #{distance_c_to_d}"
    puts "Shorter distance for driver #{location_c} (C) -> #{location_d} (D) to: #{location_a} (A),#{location_b} (B)"
  else
    puts "Distance: #{distance_a_to_b}"
    puts "Shorter distance for driver #{location_a} (A) -> #{location_b} (B) to: #{location_c} (C),#{location_d} (D)"
  end
  return 0
end

if __FILE__ == $0
  main
end