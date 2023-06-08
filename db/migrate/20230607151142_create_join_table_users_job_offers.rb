class CreateJoinTableUsersJobOffers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :job_offers do |t|
      # t.index [:user_id, :job_offer_id]
      # t.index [:job_offer_id, :user_id]
    end
  end
end
