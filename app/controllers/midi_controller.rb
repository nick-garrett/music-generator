class MidiController < ApplicationController

  def show
    @midi = Midi.new
  end
  
  def record
    @r = @midi.record(5)
  end
  
  def play
    while true
      @midi.play_recording(@r)
    end
  end
end
