var blessed = require("blessed");

var screen = function() {
  return blessed.screen({ smartCSR: true });
}

var append = function(screen) {
  return function(item) {
    return function() {
      screen.append(item);
    }
  }
}

var box = function() {
  return blessed.box({
    top: 'center',
    left: 'center',
    width: '50%',
    height: '50%',
    content: 'Hello {bold}world{/bold}!',
    tags: true,
    border: {
      type: 'line'
    },
    style: {
      fg: 'white',
      bg: 'magenta',
      border: {
        fg: '#f0f0f0'
      },
      hover: {
        bg: 'green'
      }
    }
  });
}

var title = function(screen) {
  return function(str) {
    return function() {
      screen.title = str;
    }
  }
}

var render = function(screen) {
  return function() {
    screen.render();
  }
}

var exitKeys = function(screen) {
  return function(keys) {
    return function() {
      screen.key(keys, function(ch, key) {
        return process.exit(0);
      });
    }
  }
}

exports.screen = screen;
exports.append = append;
exports.box = box;
exports.title = title;
exports.render = render;
exports.exitKeys = exitKeys;
