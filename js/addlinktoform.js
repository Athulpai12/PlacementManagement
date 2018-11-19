$('#textarea-input').contextmenu(function(event) {
    		
  			event.preventDefault();
  			let wrap = document.querySelector(".wrap");
		
  if(event.button == 2) {
    // wrap.style.display = "block";
    wrap.classList.toggle("display");
    wrap.style.left = (event.pageX - 4) + "px";
    wrap.style.top = (event.pageY - 4) + "px";
  }
  event.preventDefault();
window.addEventListener("click", event => {
  if(wrap.classList.contains("display")) {
    wrap.classList.remove("display");
  }
})

	
	$(wrap).click(function(event){
		var choice = event.target.getAttribute("choice");
		if(choice=="Cut")
		{
			document.execCommand('cut');
		}
		else if(choice=="Copy")
		{
			document.execCommand('copy');
		}
		else if(choice=="Paste")
		{
			document.execCommand('paste');
		}
		else
		{
			
			$('#fakebutton').off().click();
			$('#fakefooter').off().click(function(event){
				//console.log($('#fakeid').val()+" mokey");
				$('#textarea-input').val($('#textarea-input').val() + ' <<<'+$('#fakeid').val()+'>>> ');
				$('#fakeid').val('');
			});
			
		}
	});

	});