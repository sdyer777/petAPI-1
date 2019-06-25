class CreateTest < ActiveRecord::Migration[5.2]
    def change
        create_table :test1 do |t|
          t.string :name
          t.text :description
     
          t.timestamps
        end
    end
end