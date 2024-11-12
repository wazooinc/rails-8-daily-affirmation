class CreateAffirmations < ActiveRecord::Migration[8.0]
  def change
    create_table :affirmations do |t|
      t.string :url
      t.string :translation

      t.timestamps
      # createdAt
      # updatedAt
    end
  end
end
