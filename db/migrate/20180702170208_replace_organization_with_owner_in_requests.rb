class ReplaceOrganizationWithOwnerInRequests < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :organization, :string
    add_column :requests, :owner, :string
  end
end
