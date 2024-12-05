function foo_iterative(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; ++i) {
    result *= i;
  }
  return result;
}

function bar_iterative(x: int): int {
  var result: int = 0;
  for (var i = 1; i <= x; ++i) {
    result += i;
  }
  return result;
}

function baz_iterative(x: int): int {
  var result: int = 0;
  var barResult: int = 0;
  for (var i = 1; i <= x; ++i) {
      barResult = bar_iterative(i - 1);
      result += i * barResult;
  }
  return result;
}

function main(): void {
  echo foo_iterative(5);
  echo bar_iterative(5);
  echo baz_iterative(5);
}
