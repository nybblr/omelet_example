# This migration comes from omelet_ui (originally 20121116173339)
class AddModelToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :model, :string
  end
end
