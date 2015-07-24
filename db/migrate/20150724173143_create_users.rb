class CreateUsers < ActiveRecord::Migration
def up
  create_table :users do |t|
     t.string :username
    t.string :user_id
    t.string :projects_donated
    end
end

def down
  drop_table :users
  end
end
