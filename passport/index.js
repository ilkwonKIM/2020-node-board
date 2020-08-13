const passport = require('passport');
const { queryExecute,mysqlErr } = require('../modules/mysql-conn');
const local = require('./local');
const kakao = require('./kakao');

module.exports = (passport) => {
	passport.serializeUser((user, done) => {
		done(null,user.id);
	}); //session에서 아이디 가져오기
	
	passport.deserializeUser( async(id,done) => {
		let sql,result;
		try {
			sql = 'SELECT * FROM member WHERE id='+id;
			result = await queryExecute(sql);
			done(null, result[0]);
		}
		catch(e) {
			done(e);
		}

	}); // 가져온 아이디로 실제 데이터 쿼리
	local(passport);
	kakao(passport);
}
