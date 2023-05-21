require "turbo"

class Audio < Turbo::Streams::ActionViewComponent
  def initialize(song_path)
    @song_path = song_path
    @song_playing = false
    @song_paused = false
  end

  def play
    @song_playing = true
    @song_paused = false
  end

  def pause
    @song_playing = false
    @song_paused = true
  end

  def restart
    @song_playing = true
    @song_paused = false
  end

  def template
    turbo_frame_tag "player" do
      div class: "player" do
        button_to :play, method: :post, class: "player-button", disabled: @song_playing do
          turbo_frame_submit_tag
          turbo_stream.replace "player" do
            render(Player.new(@song_path, true, false))
          end
        end

        button_to :pause, method: :post, class: "player-button", disabled: !@song_playing do
          turbo_frame_submit_tag
          turbo_stream.replace "player" do
            render(Player.new(@song_path, false, true))
          end
        end

        button_to :restart, method: :post, class: "player-button", disabled: false do
          turbo_frame_submit_tag
          turbo_stream.replace "player" do
            render(Player.new(@song_path, true, false))
          end
        end

        div class: "status" do
          if @song_playing
            "Now Playing"
          elsif @song_paused
            "Paused"
          else
            "Stopped"
          end
        end
      end
    end
  end
end

class Player < Turbo::Streams::ActionViewComponent
  def initialize(song_path, playing, paused)
    @song_path = song_path
    @song_playing = playing
    @song_paused = paused
  end

  def template
    audio_tag @song_path, autoplay: @song_playing, controls: true
  end
end

Turbo::Streams.channel("player") do
  Audio.new("path_to_your_mp3_file.mp3")
end
