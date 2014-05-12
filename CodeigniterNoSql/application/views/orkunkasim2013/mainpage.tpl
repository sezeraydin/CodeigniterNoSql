{include file='inc/main_header.tpl'}
{include file='inc/leftmenu.tpl'}
 <div class="span9">
          <div class="row-fluid">
            <div class="span12">
            
             
               <div class="widget"  style="margin-bottom:20px;">
                            <header>
                              <center><h3 style="color:white;">SERVER &nbsp; SEÇİM &nbsp; ALANI</h3></center>
                              <ul class="toggle_content">                         
                                <li class="arrow"><a href="#">Toggle Content</a></li>
                              </ul>
                            </header>                
                            <section class="group" style="border:0px; height:200px;">  
                              <div class="page_info" style="min-height: 200px; background-color:#737373;">
                                {foreach $servers as $v}
                                       <div class="server{if $v.status eq 'new'} newserver{/if}">
                                            <div class="server_number">{$v@key}</div>
                                            <div class="server_name">
                                              {if $v.status eq 'maintenance'}
                                                {$v.name}
                                              {else}
                                                <a href="{$BASEURL}dunya/id/{$v@key}" target='_blank'>{$v.name}</a>
                                              {/if}
                                            </div>
                                            <div class="server_content" style=" font-size: 10px;">
                                              {if $v.status eq 'maintenance'}
                                                Sunucu bakımdadır.
                                              {else}
                                                {$v.desc}
                                              {/if}
                                              </div>
                                          </div> 
                                {/foreach} 


                                  </div>
                                                                                                
                            </section>
               </div> 


         <div class="widget">
              <header>
                <center><h3 style="color:white;">DUYURULAR</h3></center>
                <ul class="toggle_content">                         
                  <li class="arrow"><a href="#">Toggle Content</a></li>
                </ul>
              </header>                
              <section class="group" style="height:563px;">                                                     
                <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                  <img src="http://lorempixel.com/900/600/sports" alt="">
                  <div class="carousel-caption">
                    <h4>{$baslik1}</h4>
                    <p>{$yazi1}</p>
                  </div>
                  </div>
                  <div class="item">
                  <img src="http://lorempixel.com/900/600/people" alt="">
                  <div class="carousel-caption">
                    <h4>{$baslik2}</h4>
                    <p>{$yazi2}</p>
                  </div>
                  </div>
                  <div class="item">
                  <img src="http://lorempixel.com/900/600/food" alt="">
                  <div class="carousel-caption">
                    <h4>{$baslik3}</h4>
                    <p>{$yazi3}</p>
                  </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>                                                                     
              </section>
              </div> 
                 
          
            </div>                  
          </div><!--/row-->
           
          
        </div><!--/span-->
      </div><!--/row-->      
     

    </div>



{include file='inc/main_footer.tpl'}