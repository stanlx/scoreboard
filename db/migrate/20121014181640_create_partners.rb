class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :abbr_name

      t.timestamps
    end
  end
end
