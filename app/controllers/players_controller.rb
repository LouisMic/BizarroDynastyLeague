class PlayersController < ApplicationController
  def affiliate
    @players = Player.to_check.sort_by(&:position)
    @teams = Bdlteam.all.pluck(:city)
  end

  def update
    params[:players].each do |k, v|
      player = Player.find(k.to_i)
      player.update!(bdlteam: Bdlteam.find_by(city: v[:bdlteam_name]))
    end
    redirect_to players_affiliate_path
  end

  def waivers
    @criteria = params[:sort]
    @position = Position.find_by(name: params[:position])
    @statistics = @position.position_stats
    @player_stats = PlayerStat.where(statistic_id: @statistics.map(&:id), year: 2024, week: 1)
    if @position
      players = Player.free_agents.select{ |p| p.position == @position }
    else
      players = Player.free_agents
    end
    @players = players.sort_by{ |p| p.stat(@criteria) }.reverse
  end
end
