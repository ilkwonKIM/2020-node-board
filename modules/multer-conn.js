const multer = require('multer');
const moment = require('moment')
const path = require('path');
const fs = require('fs');
const {v4: uuidv4} = require('uuid');


/*
// fs.promises 사용하기
const {promisify} = require('util');
const mkdir = promisify(fs.mkdir);
*/
// req, file: 사용자가 업로드한 파일, cb: 함수(err, folder/file명)
const storage = multer.diskStorage({
	destination: (req,file,cb) => {
		const result = makeFolder()
		result.err ? cb(err) : cb(null,result.folder)
	},
	filename: (req,file,cb) => {
		cb(null, '파일명');
	}
});
const upload = multer({storage});

function makeFolder() {
	const result = {err: null};
	// let name = moment().format('YYMMDD'); //200730
	let folder = path.join(__dirname, '../storage',moment().format('YYMMDD'));
	result.folder = folder;
	if(!fs.existsSync(folder)){
		fs.mkdir(folder, (e) => {
			if(e) result.err = e;
			return result;
		});
	}
	return result;
}

module.exports = { upload };
