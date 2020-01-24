class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
