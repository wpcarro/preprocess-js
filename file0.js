/* -- test file for preprocessing -- */
(function main() {
  for (let i = 0; i < <% varname %>; i += 1) { // <% varname %> will be replaced with some other value
    console.log('.');
  }
}());
