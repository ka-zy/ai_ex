class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|

      t.timestamps
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :kana, null: false
      t.string :position, null: false
      t.integer :num, null: false
      t.string :company, null: false
      t.string :group
      t.string :depertment, null: false
      t.string :section
      t.string :unit
      t.string :phon_number
    end
  end
end
