// const env = process.env.NODE_ENV;

const env ='fme';

// let DbName, domainName;
let DbName;
let domainName;
let mailPass = 'y&GFhE16U';
let mailService = 'fme.a1abilities.co.nz'

console.log('env db', env);

function getFullName(dbName, userName) {
  return dbName + "_" + userName
}




 if (env === 'fme') {
  DbName = 'a1abiliti_fme';
  domainName = 'fme.a1abilities.co.nz';
  mailService = 'fme.a1abilities.co.nz';
  mailPass = 'y&GFh$16U';
} else {
  DbName = 'rentronicnew'
  domainName = 'localhost:3000'
}

module.exports = { 'prod': DbName, getFullName: getFullName, domainName: domainName, mailPass: mailPass, mailService: mailService, env: env };