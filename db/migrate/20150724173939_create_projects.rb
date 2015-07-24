class CreateProjects < ActiveRecord::Migration
def up
  create_table :projects do |t|
    t.string :project_name
    t.string :genre
    t.string :rewards
    t.string :goal
    t.string :bio
    t.string :days
    t.string :owner
    end
end

def down
  drop_table :projects
  end
end
