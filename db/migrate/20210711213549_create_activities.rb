class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
        t.string :name, null: false
        t.string :description, null: false
    end
  end
end
