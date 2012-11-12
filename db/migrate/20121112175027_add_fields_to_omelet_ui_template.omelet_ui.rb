# This migration comes from omelet_ui (originally 20121112173344)
class AddFieldsToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :fields, :text
  end
end
