class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.string :bagletter

      t.timestamps
    end
  end
end
