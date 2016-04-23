class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string    :name,              null: false
      t.text      :description
      t.string    :category
      t.boolean   :currently_using,   default: false
      t.date      :last_used
      t.integer   :skill_level

      t.timestamps                    null: false
    end
  end
end
