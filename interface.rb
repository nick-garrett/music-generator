Shoes.app {
  background "#23252b"
  stack {
    @play = button "PLAY"
    @record = button "RECORD"
  }
  @play.click { play_midi }
  @play.record { record_midi }
}