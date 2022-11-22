var count = 1;
function Add() {
	let endTable = document.getElementById("end");
	_name = document.getElementById('_name');
	_cost = document.getElementById('_cost');

	let newRow = document.createElement("tr");

	let newElemNum = document.createElement("td");
	let newElemName = document.createElement("td");
	let newElemCost = document.createElement("td");

	newElemNum.textContent = count;
	newElemName.textContent = _name.value;
	newElemCost.textContent = _cost.value;

	newRow.appendChild(newElemNum);
	newRow.appendChild(newElemName);
	newRow.appendChild(newElemCost);

	endTable.before(newRow);

	count++

	_name.value = "";
	_cost.value = "";
}

var totalCost = 0;
function Calculate() {
    var totalCost = 0;
	let total = document.getElementById('total');
    let _table = document.getElementById("_table");

    for (let i = 1; i < count; i++)
        totalCost += parseInt(_table.children[0].children[i].children[2].textContent);

	total.textContent = totalCost;
}
