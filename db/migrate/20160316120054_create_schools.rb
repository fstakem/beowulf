class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string      :name,              null: false
      t.date        :start_date,        null: false
      t.date        :end_date
      t.string      :degree,            null: false
      t.string      :major,             null: false
      t.string      :gpa
      t.date        :graduation_date,   null: false
      t.boolean     :attending,         null: false, default: false
      t.text        :activities
      t.belongs_to  :user,              index:true

      t.timestamps                      null: false
    end

    add_foreign_key :schools, :users, column: :user_id
  end
end
