var panelQuestion = document.querySelectorAll('.panel-question');
var collapseBtn = document.querySelector('#btn-collapse');

for(var i=0;i<panelQuestion.length;i++) {
	
	panelQuestion[i].addEventListener('click',function(){
	
		for(var x=0;x<panelQuestion.length;x++) {
			
			
			panelQuestion[x].classList.remove('active');
			
		}
		
		this.classList.add('active');
	
	});
	
	
}

collapseBtn.addEventListener('click',function(){
	
	for(var x=0;x<panelQuestion.length;x++) {
			
			
			panelQuestion[x].classList.remove('active');
			
		}
	
});