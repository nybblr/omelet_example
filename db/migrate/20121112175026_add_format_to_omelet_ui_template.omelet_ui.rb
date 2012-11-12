# This migration comes from omelet_ui (originally 20121112171255)
class AddFormatToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :format, :string
  end
end
