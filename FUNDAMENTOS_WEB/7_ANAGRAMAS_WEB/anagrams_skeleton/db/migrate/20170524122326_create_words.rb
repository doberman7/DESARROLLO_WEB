class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.strings :name
      t.text :canonical_version
      t.timestamps
    end
  end
end
