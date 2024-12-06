class BdlteamsController < ApplicationController
  def show
    @criteria = params[:sort]
    @bdlteam = Bdlteam.find(params[:id])
    @position = Position.find_by(name: params[:position])
    @statistics = @position ? @position.position_stats : []
    @player_stats = PlayerStat.where(statistic_id: @statistics.map(&:id), year: 2024, week: 8).includes(:player)
    @players_stats_hash = @player_stats.group_by(&:player_id)

    # Regroupement des statistiques des joueurs
    if @position && @criteria
      @players = @bdlteam.players.by_position(@position)
                              .sorted_by_stat(@criteria)
                              .includes(:nflteam)
    elsif @position
      @players = @bdlteam.players.by_position(@position).includes(:nflteam)
    else
      @players = @bdlteam.players.includes(:nflteam).order("nflteams.abbreviation ASC")
    end
  end
end
