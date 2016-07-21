class CreateUpVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :up_votes do |t|
      t.references :picture, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
