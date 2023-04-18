  def change
    remove_reference :students, :cohort, null: false, foreign_key: true
  end
end
