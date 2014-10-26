require 'scrambled_jpeg/version'
module ScrambledJpeg
  class << self
    def scramble filename, grain=5
      ending, cache = (store = File.readlines filename).pop, []
      (new_file = File.open Time.now.hash.to_s + '.jpg', "w").write store.shift
      grain.times { new_file.write store.shift }
           .times {       cache << store.shift }
           .times { new_file.write store.shift }
           .times { new_file.write cache.shift } until store.empty? && cache.empty?
      new_file.write ending && new_file.close
    end

    def hardboil filename, times=1

    end
  end
end
