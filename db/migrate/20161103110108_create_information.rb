class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :ip
      t.string :pc_name
      t.string :access_time

      t.timestamps
    end
  end
end
