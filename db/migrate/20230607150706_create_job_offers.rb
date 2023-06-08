class CreateJobOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :job_offers do |t|
      t.string :job
      t.text :description

      t.timestamps
    end
  end
end
