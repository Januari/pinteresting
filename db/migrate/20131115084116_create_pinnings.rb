class CreatePinnings < ActiveRecord::Migration
  def change
    create_table :pinnings do |t|
      t.string :description

      t.timestamps
    end
  end
end
