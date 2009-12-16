class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :word
      t.text :definition
      t.timestamps
    end
    add_index :words, :word, :uniq => true
  end

  def self.down
    remove_index :words, :word
    drop_table :words
  end
end
