class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string      :text,          null: false
      t.string      :url,           null: false
      t.integer     :type_of,       null: false, default: 0

      t.timestamps                  null: false
    end
  end
end
