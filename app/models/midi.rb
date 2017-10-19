class Midi < ApplicationRecord
  require 'unimidi'

  attr_reader :input, :output

  def initialize
    input!
    output!
  end

  def record(record_time)
    input.clear_buffer
    sleep(record_time)
    input.gets
  end

  def play_recording(recording)
    recording.size.times do |i|
      output.puts(recording[i][:data])
      break unless i + 1 < recording.size
      sleep_time = (recording[i + 1][:timestamp] - recording[i][:timestamp])
      sleep(sleep_time)
    end
  end

  private

  def input!
    @input = UniMIDI::Input.gets
    # @input = UniMIDI::Input.use(4)
  end

  def output!
    @output = UniMIDI::Output.gets
    # @output = UniMIDI::Output.open(:first)
  end
end
