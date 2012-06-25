class AddProviderViewsToProvider < ActiveRecord::Migration
  def self.up
    add_column :providers, :provider_views, :integer, :default => 0
  end

  def self.down
    remove_column :providers, :provider_views
  end
end
