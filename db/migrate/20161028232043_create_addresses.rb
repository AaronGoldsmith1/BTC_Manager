class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :loc
      t.string :label
      t.text :memo
      t.float :balance
      t.float :total_rec
      t.float :total_sent
      t.float :total_fees

      t.timestamps
    end
  end
end
