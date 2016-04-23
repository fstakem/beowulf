class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string      :name,                null: false
      t.date        :start_date
      t.date        :end_date
      t.text        :short_description,   null: false
      t.text        :long_description,    null: false
      t.belongs_to  :user,                index:true

      t.timestamps                        null: false
    end
    
    add_foreign_key :projects, :users, column: :user_id
  end
end
