class UsersEvents < ActiveRecord::Migration[5.2]
  def change
  	create_table :users_events, id: false do |t|
      t.belongs_to :user
      t.belongs_to :evnt
    end
  end
end