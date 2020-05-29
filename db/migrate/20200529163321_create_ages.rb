class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.integer :age
      t.integer :name_id

      t.timestamps
    end
  end
end
