function setTree(position) {
    let ul = document.createElement('ul');
    let myChild = position.firstElementChild;
    
    while (myChild) {
        let li = document.createElement('li');
        let list = setTree(myChild);

        li.innerHTML = myChild.tagName;
        
        li.appendChild(list);
        ul.appendChild(li);
        
        myChild = myChild.nextElementSibling;
    }

    position.appendChild(ul);
    return ul;
}