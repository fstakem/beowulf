class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :users_skills do |t|
      t.belongs_to  :user,     index:true
      t.belongs_to  :skill,    index:true

      t.timestamps null: false
    end

    add_foreign_key :users_skills, :users, column: :user_id
    add_foreign_key :users_skills, :skills, column: :skill_id
  end
end
