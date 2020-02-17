require 'csv'
namespace :mushrooms do
  desc "Mushrooms importer"
  task :load_all => :environment do
    file = File.read(Rails.root.join('db', 'data', 'agaricus-lepiota.csv'))
    headers = [:typology, :cap_shape, :cap_surface, :cap_color, :bruises, :odor, :gill_attachment, :gill_spacing, :gill_size, :gill_color, :stalk_shape, :stalk_root, :stalk_surface_above_ring, :stalk_surface_below_ring, :stalk_color_above_ring, :stalk_color_below_ring, :veil_type, :veil_color, :ring_number, :ring_type,
    :spore_print_color, :population, :habitat]

    csv = CSV.parse(file, headers: false)
    # Tools
    progressbar = ProgressBar.create(total: csv.count,  format: "%t: |\e[0;34m%B\e[0m|")

    csv.each do |row|
      mushroom_data = Hash[ *headers.each_with_index.collect { |h, index| [ h, row[index] ] }.flatten ]
      if Rails.env.production?
        MushroomCreatorJob.perform_later(mushroom_data)
      else
        Mushroom.where(family: "agaricus_lepiota", **mushroom_data).first_or_create
        progressbar.increment
      end
    end
  end
end