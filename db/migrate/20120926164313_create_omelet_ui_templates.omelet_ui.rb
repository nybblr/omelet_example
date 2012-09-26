# This migration comes from omelet_ui (originally 20120917193135)
class CreateOmeletUiTemplates < ActiveRecord::Migration
  def change
    create_table :omelet_ui_templates do |t|
      t.string :title
      t.text :description
      t.text :layout
      t.string :status

      t.timestamps
    end
  end
end
