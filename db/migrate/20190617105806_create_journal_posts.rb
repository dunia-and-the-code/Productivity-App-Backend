class CreateJournalPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_posts do |t|
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
