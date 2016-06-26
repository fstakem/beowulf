class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string      :title,         null: false
      t.string      :title_long
      t.string      :company
      t.string      :city,          null: false
      t.string      :state,         null: false
      t.date        :start_date,    null: false
      t.date        :end_date
      t.boolean     :current_job,   null: false, default: false
      t.belongs_to  :user,          index:true

      t.timestamps                  null: false
    end

    add_foreign_key :jobs, :users, column: :user_id
  end
end
