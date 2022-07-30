<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>
	<style type="text/css"> 
		@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
		
		#sidebar img{
					width: 100%;
				}
		
				.container button{
					width: 100%;
					text-align: left;
					background: green;
					border: none;
					outline: none;
					color: white;
					padding: 2px 5px;
					display: none;
				}
				
				.container button:hover, button.accordion.is-open{
					background-color: orange;
					transition: background-color 0.3s linear;
					cursor: pointer;
					
				}

				button.accordion::after{
					font-family: 'Font Awesome 5 Free';
					font-weight: 900;
					content: '\f103';
					font-size: 14pt;
					float: right;
				}
				button.accordion.is-open::after{
					content: '\f101';
				}
				.accordion-content{
					padding: 0px 5px;
					border-left: solid 2px red;
					color: white;
					max-height: 0px;
					overflow: hidden;
				}
				
				.accordion-content button{ 
					border: none;
					background: none;
					cursor: pointer;

				}
				.accordion-content button:hover{
					background: grey;
					width: 100%;
					
				}
				i{
					background: none;
				}
			@media print{
				#sidebar, #myhead{display: none;}
				#sidebar button::active{display:none;}
			}
			
			
			*{
					margin: 0;
					padding: 0;
				}
				#sidebar{
					position: fixed;
					width:15%;
					height: 100%;
					font-family: Gabriola;
					background: black;
					font-size: 1.2vw;
					margin-left: -15%;
					0pacity: 1;
					
				}
				#sidebar.active{
					margin-left: 0;
				}
				#sidebar.active button{
					display: block;
				}
				
				#sidebar ul li{
					
					padding-left:2px;
				}
				#sidebar ul li a{
					text-decoration: none;
				}
				#sidebar .toggle{
					position: absolute;
					left:100%;
					top: -3px;
					cursor: pointer;
				}
				#sidebar .toggle span{
					display: block;
					width: 30px;
					height: 5px;
					background: #fe5b07;
					margin: 5px 0px; 
					font-weight: bold;
				}
			
			@media only screen and (max-width: 768px){
					#myhead h1{font-size: 5vw;}
					#sidebar.active{width: 50%; }
				.container button{width: 100%; font-size: 5vw;}
				#sidebar{z-index: 1;}
				
				@media only screen and (orientation: landscape){
					#sidebar{position: absolute; height: auto;}
					.container button{font-size: 3vw;}
				}
				
				
			}
			
				
	</style>
</head>
<body>
	<aside id = "sidebar"> 
			<div class="toggle" onclick = "myToggle()"> 
					<span></span>
					<span></span>
					<span></span>
			</div>
		
		<img class = "easy" src="../img/easy.png" alt="Easysoft Logo"/>
		<?php
				if(isset($checker)){
					$extend = "admissions/";
				}else{
					$extend = "";
				}
		?>
		<div class = "container"> 
							<button onclick = "window.open('<?php echo $extend;?>basic_info.php', '_parent')" > <i class = "fas fa-info-circle"></i> Registration Info</button>
							<button onclick = "window.open('<?php echo $extend;?>register.php', '_parent')" > <i class = "fas fa-user-plus"></i> Register Students</button>
							<button onclick = "window.open('<?php echo $extend;?>delete.php', '_parent')" > <i class = "fas fa-user-minus"></i> Delete Students</button>
							<button onclick = "window.open('<?php echo $extend;?>update.php', '_parent')" > <i class = "fas fa-user-edit"></i> Update Students Info</button>
							<button onclick = "window.open('<?php echo $extend;?>admin_viewall.php', '_parent')" > <i class = "fas fa-users"></i> View All Registered Students</button>
							<button class = "accordion"><i class = "fas fa-id-card-alt"></i> Print Students ID Card</button>
									<div class = "accordion-content" > 
									
												<button onclick = "window.open('<?php echo $extend;?>single.php', '_parent')">Single Student</button>
												<button onclick = "window.open('<?php echo $extend;?>multiple.php', '_parent')"> Multiple Students</button>
											
									</div>
							<button class = "accordion"><i class = "fas fa-edit"></i> Sessional Mass Action</button>
									<div class = "accordion-content" > 
									
												<button onclick = "window.open('<?php echo $extend;?>mass_edit.php', '_parent')">Mass Class Edit</button>
												<button onclick = "window.open('<?php echo $extend;?>mass_delete.php', '_parent')"> Mass Class Delete</button>
											
									</div>
									
							<button onclick = "window.open('<?php echo $extend;?>userguide_admin.pdf', '_blank')" > <i class = "fas fa-download"></i> Admin's User Guide</button>
							<button onclick = "window.open('<?php echo $extend;?>../login.php', '_parent')" ><i class = "fas fa-home"></i> Home</button>
							
							<button onclick = "window.open('../outlog.php', '_parent')" ><i class = "fas fa-map-marker-alt"></i> Start Page</button>
							
					
		</div>
	</aside>
	
			<script> 
					function myToggle(){
					document.getElementById('sidebar').classList.toggle('active');
				}
				
				var accordions = document.getElementsByClassName("accordion");
					for(var i = 0; i < accordions.length; i++){
						accordions[i].onclick = function(){
							this.classList.toggle('is-open');
							var content = this.nextElementSibling;
							if(content.style.maxHeight){
									// accordion is opened
									content.style.maxHeight = null;
							} else {
									//accordion is closed
									content.style.maxHeight = content.scrollHeight + "px";
							}
						}
					}
		
		</script>
		
</body>
</html>