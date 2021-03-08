class AddLinksToTestimonials < ActiveRecord::Migration[6.0]
  def change
    add_column :testimonials, :link, :string
  end
end
