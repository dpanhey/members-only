class AddReferenceToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :users
  end
end