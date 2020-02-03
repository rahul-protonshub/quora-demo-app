class CreateFollowTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_topics do |t|
      t.integer :user_id
      t.integer :topic_id
      t.timestamps
    end
  end
end
