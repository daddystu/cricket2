class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.text :location

      t.timestamps
    end
  end
end
