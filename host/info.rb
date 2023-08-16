def lsb_release
  lsb_release_output = `lsb_release -a`.split("\n")
  lsb_release_output_map = lsb_release_output.map {|line| line.split(":").map(&:strip) }.reduce({}) {|m,pair| m[pair.first]=pair.last; m }
end
