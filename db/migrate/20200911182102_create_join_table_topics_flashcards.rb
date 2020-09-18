class CreateJoinTableTopicsFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_join_table :topics, :flashcards do |t|
    
    end
  end
end
