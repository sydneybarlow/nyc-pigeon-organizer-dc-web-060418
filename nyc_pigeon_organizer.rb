require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, char_hash|
    char_hash.each do |characteristic, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << characteristic.to_s
      end
    end
  end
pigeon_list
end
