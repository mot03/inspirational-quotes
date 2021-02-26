#!/usr/bin/env node

const fs = require('fs');
const util = require('util');

const dotenv = fs.readFileSync('./.env').toString('utf8');
const username = dotenv.split('=')[1];

const file = fs.readFileSync(`./${username}/my_quotes.json`);
const json = JSON.parse(file);

console.log("\t");

json.forEach(obj => {
  console.log(`"${obj.quote}" \n  -${obj.author}\n`);
});
