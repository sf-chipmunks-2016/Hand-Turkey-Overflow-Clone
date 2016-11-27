
post '/votes' do
  vote = Vote.where(:user_id => current_user.id, :voteable_id => params[:voteable_id], :voteable_type => params[:voteable_type]).first
  if vote
    vote.destroy!
  else
    Vote.create(
      :voteable_id => params[:voteable_id],
      :voteable_type => params[:voteable_type],
      :user_id => current_user.id,
      :up_vote => !!params[:up_vote],
    )
  end

  json(
    :vote_count => Vote.where(:voteable_id => params[:voteable_id], :voteable_type => params[:voteable_type]).count,
    :success => true,
  )

end
