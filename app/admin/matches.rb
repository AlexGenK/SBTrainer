ActiveAdmin.register Match do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :championship_id, :date, :team1, :team2, :score1, :score2, :team1_svm, :team2_svm, :draw_svm, :team1_prf, :team2_prf, :draw_prf, :team1_knn, :team2_knn, :draw_knn, :team1_k, :team2_k, :draw_k, :played
  #
  # or
  #
  # permit_params do
  #   permitted = [:championship_id, :date, :team1, :team2, :score1, :score2, :team1_svm, :team2_svm, :draw_svm, :team1_prf, :team2_prf, :draw_prf, :team1_knn, :team2_knn, :draw_knn, :team1_k, :tea2_k, :draw_k, :played]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
