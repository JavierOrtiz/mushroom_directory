class CreateMushrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mushrooms do |t|

      t.string :family
      t.string :typology
      t.string :cap_shape
      t.string :cap_surface
      t.string :cap_color
      t.string :bruises
      t.string :odor
      t.string :gill_attachment
      t.string :gill_spacing
      t.string :gill_size
      t.string :gill_color
      t.string :stalk_shape
      t.string :stalk_root
      t.string :stalk_surface_above_ring
      t.string :stalk_surface_below_ring
      t.string :stalk_color_above_ring
      t.string :stalk_color_below_ring
      t.string :veil_type
      t.string :veil_color
      t.string :ring_number
      t.string :ring_type
      t.string :spore_print_color
      t.string :population
      t.string :habitat

      t.timestamps
    end

    add_index :mushrooms, :cap_shape
    add_index :mushrooms, :cap_surface
    add_index :mushrooms, :cap_color
    add_index :mushrooms, :bruises
    add_index :mushrooms, :odor
    add_index :mushrooms, :gill_attachment
    add_index :mushrooms, :gill_spacing
    add_index :mushrooms, :gill_size
    add_index :mushrooms, :gill_color
    add_index :mushrooms, :stalk_shape
    add_index :mushrooms, :stalk_root
    add_index :mushrooms, :stalk_surface_above_ring
    add_index :mushrooms, :stalk_surface_below_ring
    add_index :mushrooms, :stalk_color_above_ring
    add_index :mushrooms, :stalk_color_below_ring
    add_index :mushrooms, :veil_type
    add_index :mushrooms, :veil_color
    add_index :mushrooms, :ring_number
    add_index :mushrooms, :ring_type
    add_index :mushrooms, :spore_print_color
    add_index :mushrooms, :population
    add_index :mushrooms, :habitat
  end
end
