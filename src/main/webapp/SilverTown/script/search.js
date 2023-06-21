/*
	작성자 : 강문호
	기능 : header 검색창 유효성 검사
	Git : https://github.com/whiteDwarff
*/
const sectionWrap = document.getElementById('card-box'),
	contentBox = document.querySelector('#card-box article'),
	guideText = document.createElement('span');

if (contentBox.innerText == '') {
	sectionWrap.style.backgroundColor = "#fff";
	sectionWrap.style.height = '500px'
	guideText.innerHTML = '검색된 결과가 없습니다.';
	sectionWrap.append(guideText);
	guideText.style.textAlign = 'center';
} 