class MidiController < ApplicationController

  def show
    @midi = Midi.new
    # r = midi.record(5)
    # while true
    #   midi.play_recording(r)
    # end
  end
end
