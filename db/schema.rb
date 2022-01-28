ActiveRecord::Schema.define(version: 2022_01_26_231952) do

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "chef_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  add_foreign_key "reviews", "restaurants"
end
