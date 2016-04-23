class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text        :description,   null: false
      t.belongs_to  :job,           index:true

      t.timestamps                  null: false
    end

    add_foreign_key :tasks, :jobs, column: :job_id
  end
end
