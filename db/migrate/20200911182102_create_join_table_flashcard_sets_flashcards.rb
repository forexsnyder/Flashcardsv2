class CreateJoinTableFlashcardSetsFlashCards < ActiveRecord::Migration[6.0]
  def change
    create_join_table :flashcard_sets, :flashcards do |t|
      # t.index [:food_id, :flavor_id]
      # t.index [:flavor_id, :food_id]
    end
  end
end
