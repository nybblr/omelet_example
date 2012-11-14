# This migration comes from omelet_ui (originally 20121114174023)
class AddQueryToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :query, :text
  end
end
