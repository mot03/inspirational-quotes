#!/usr/bin/env node

const fs = require('fs');
const util = require('util');

const directory = fs.readdirSync('./');

console.log("\t");

directory.forEach(dir => {
  if(fs.lstatSync(`./${dir}`).isDirectory() && !/\./.test(dir)) {

  const file = fs.readFileSync(`./${dir}/my_quotes.json`);
  const json = JSON.parse(file);


    json.forEach(obj => {
      console.log(`"${obj.quote}" \n  - ${obj.author}\n`);
    });
  }
});
