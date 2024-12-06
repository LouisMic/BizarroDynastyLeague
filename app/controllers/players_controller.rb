class PlayersController < ApplicationController
  def edit
    @player = Player.find(params[:id])
    @teams = Bdlteam.all.pluck(:city)
  end

  def affiliate
    @players = Player.to_check.sort_by(&:position)
    @teams = Bdlteam.all.pluck(:city)
  end

  def update
    request.referer.include?('edit') ? update_player : update_all
  end

  private

  def update_player
    player = Player.find(params[:id])
    waivers = Bdlteam.find(17)
    city = player.bdlteam.city
    player.update!(bdlteam: Bdlteam.find_by(city: params[:player][:bdlteam_name]))
    city == "Free Agent" ? redirect_to(bdlteam_path(waivers)) : redirect_to(bdlteam_path(Bdlteam.find_by(city: city)))
  end

  def update_all
    params[:players].each do |k, v|
      player = Player.find(k.to_i)
      player.update!(bdlteam: Bdlteam.find_by(city: v[:bdlteam_name]))
    end
    redirect_to players_affiliate_path
  end
end
