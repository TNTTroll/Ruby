function AddStroku(){
	stroka = event.target.parentElement.cloneNode(true);
	novaiTablica = document.getElementById('novai');
	novaiTablica.appendChild(stroka);
}