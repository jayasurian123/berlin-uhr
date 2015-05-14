<berlin-clock>
  <div class="five-hour-container">
    <div class="five-hour {clock.fiveHourStripe.active_0 ? 'active': ''}"> </div>
    <div class="five-hour {clock.fiveHourStripe.active_1 ? 'active': ''}"> </div>
    <div class="five-hour {clock.fiveHourStripe.active_2 ? 'active': ''}"> </div>
    <div class="five-hour {clock.fiveHourStripe.active_3 ? 'active': ''}"> </div>
  </div>
  <div class="one-hour-container">
    <div class="one-hour {clock.oneHourStripe.active_0 ? 'active': ''}"> </div>
    <div class="one-hour {clock.oneHourStripe.active_1 ? 'active': ''}"> </div>
    <div class="one-hour {clock.oneHourStripe.active_2 ? 'active': ''}"> </div>
    <div class="one-hour {clock.oneHourStripe.active_3 ? 'active': ''}"> </div>
  </div>
  <div class="five-minute-container">
    <div class="five-minute {clock.fiveMinuteStripe.active_0 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_1 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_2 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_3 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_4 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_5 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_6 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_7 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_8 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_9 ? 'active': ''}"> </div>
    <div class="five-minute {clock.fiveMinuteStripe.active_10 ? 'active': ''}"> </div>
  </div>
  <div class="one-minute-container">
    <div class="one-minute {clock.oneMinuteStripe.active_0 ? 'active': ''}"> </div>
    <div class="one-minute {clock.oneMinuteStripe.active_1 ? 'active': ''}"> </div>
    <div class="one-minute {clock.oneMinuteStripe.active_2 ? 'active': ''}"> </div>
    <div class="one-minute {clock.oneMinuteStripe.active_3 ? 'active': ''}"> </div>
  </div>
  <div> {this.clock.currentTime} </div>
  this.clock = {
    'fiveHourStripe': {},
    'oneHourStripe': {},
    'fiveMinuteStripe': {},
    'oneMinuteStripe': {}
  };

  updateClock () {
    var time = new Date();
    var index = 0;

    var hours  = time.getHours();
    var minutes = time.getMinutes();
    var seconds = time.getSeconds();
    this.clock.currentTime = hours + ' : ' + minutes + ' : ' + seconds;

    for (index = 0; index < 4; index++) {
      this.clock.fiveHourStripe['active_' + index] = index < parseInt(hours / 5) ? true : false;
    }
    for (index = 0; index < 4; index++) {
      this.clock.oneHourStripe['active_' + index] = index < parseInt(hours % 5) ? true : false;
    }

    for (index = 0; index < 12; index++) {
      this.clock.fiveMinuteStripe['active_' + index] = index < parseInt(minutes / 5) ? true : false;
    }

    for (index = 0; index < 4; index++) {
      this.clock.oneMinuteStripe['active_' + index] = index < parseInt(minutes % 5) ? true : false;
    }

    this.update();
  }

  refreshClock() {
    window.setInterval(function() {this.updateClock();}.bind(this), 500);
  }

  this.refreshClock();

</berlin-clock>
