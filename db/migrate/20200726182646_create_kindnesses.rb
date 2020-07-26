class CreateKindnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :kindnesses do |t|
      t.string :description

      t.timestamps
    end
  end
end
