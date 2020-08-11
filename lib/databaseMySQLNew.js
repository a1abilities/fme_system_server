// const env = process.env.NODE_ENV;

const env ='fme';

// let DbName, domainName;
let DbName;
let domainName;
let mailPass = 'y&GFhE16U';
let mailService = 'organisation.connectivitysoftwaresolutions.com'

console.log('env db', env);

function getFromName(dbName, userName) {
  return dbName + "_" + userName.split('_')[1]
}
function getFullName(dbName, userName) {
  return dbName + "_" + userName
}




if (env === 'fme') {
  DbName = 'connectiv_fme';
  domainName = 'fme.a1abilities.co.nz';
  mailService = 'fme.a1abilities.co.nz';
  mailPass = '9A5E3pTd&';
} else {
  DbName = 'rentronicnew'
  domainName = 'localhost:3000'
}

module.exports = { 'prod': DbName, getFullName: getFullName, domainName: domainName, mailPass: mailPass, mailService: mailService, env: env };