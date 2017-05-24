/**
 * 
 */
	var intervalFn;
	var init = {
		setting:function(){

			var $listTarget = $('.list ul li');
			var liWidth,liOffset;
			
			$.each($listTarget,function(i,e){
				liWidth = $(e).innerWidth();
				$(e).css('left',liWidth*i);
			})

			this.clickEv();
		},
		clickEv:function(){
			rs = 2000
			var $listTarget = $('.list ul');

				$('.next').on('click',function(){

					clearInterval(intervalFn)
					intervalFn = setInterval(function(){
						init.moveEff($listTarget.children('li'),'next');
					},rs)
					
				})
			
			
				$('.prev').on('click',function(){
					clearInterval(intervalFn)
					intervalFn = setInterval(function(){
						init.moveEff($listTarget.children('li'),'right');
					},rs)
					
				})
			
			
		},
		moveEff:function(t,c){
						
			if(c == 'next'){

				var overWrap = t.first().position().left;

				var dumi = 0

				$.each(t,function(i,e){
					$(e).animate({
						left:'-=' + $(e).width()
					},{
						duration:500,
						step:function(){

							if(overWrap <= 0 && dumi == 0){
								var copyEl = t.first().html();
								var spot = t.last().position().left;

								t.last().after('<li style="left:'+spot+'px">'+copyEl+'</li>');
								
								dumi = 1;
							}		
						},
						complete:function(){
							t.first().remove()
						}
					})
				})

			}else if(c =='right'){

				var overWrap = t.first().position().left;
				
				var dumi = 0
				$.each(t,function(i,e){
					$(e).animate({
					 left:'+='+$(e).width()
				},{
					duration:500,
					step:function(){

						if(overWrap > 0 && dumi == 0){
							var copyEl = t.last().html()
							var spot = t.first().position().left
							t.first().before('<li style="left:'+spot+'px">'+copyEl+'</li>')
							dumi=1
						}	
					},
					complete:function(){
						t.last().remove()
					}
				})
			})
		}
	}
}

$(document).ready(function(){
	init.setting()
	$('.next').trigger('click')
})