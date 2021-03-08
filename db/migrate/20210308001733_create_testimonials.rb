class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.text :content
      t.string :author
      t.string :company

      t.timestamps
    end
  end
end
