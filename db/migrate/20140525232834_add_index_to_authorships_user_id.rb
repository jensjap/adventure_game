class AddIndexToAuthorshipsUserId < ActiveRecord::Migration
  def change
    add_index :authorships, :user_id
  end
end
