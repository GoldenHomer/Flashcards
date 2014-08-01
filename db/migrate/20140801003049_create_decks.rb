class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
    	# string method Accepts a column name for DB and gives it a String type
    	t.string :name
    	t.timestamps
    	# timestamps is shorthand for below
    	# t.datetime :created_at
    	# t.datetime :updated_at
    end
  end
end
