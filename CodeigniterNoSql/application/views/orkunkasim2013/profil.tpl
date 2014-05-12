{include file='inc/main_header.tpl'}
<div id="content">
<div id="head">
</div>
      <div class="main_content row-fluid">
        <div class="span3">
          <div class="side_nav sidebar-nav" data-spy="affix" data-offset-top="150">
           <!-- menu başlar-->
            <ul class="nav nav-list">                          
              <li class="active"><a class="home" href="{$BASEURL}user/main">Duyuralar</a></li>
              <li><a class="gallery" href="{$BASEURL}user/hediyeler">Puzzle Hediyeleri</a></li>
              <li ><a class="uielements" href="{$BASEURL}user/davet">Davet et</a></li>              
             <li><a class="widgets" href="{$BASEURL}user/acikartirma">Açik artirma</a></li>
           <!--  <li><a class="charts" href="{$BASEURL}user/damlalar">Damlalar</a></li>-->
                                    
            </ul>
             <!-- menu bitti -->
             <!--facebook kısmı -->
            <div class="sidebar_widget group">
        <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Forkunonline&amp;width=200&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:240px; height:300px;" allowTransparency="true"></iframe>   
     </div> 
         </div><!--/.well -->
        </div><!--/span-->
       
            <div class="span9">
          <div class="row-fluid">
            <div class="span12">

              <div class="widget profile_cont">
                <header>
                    <h3>Profile: <span class="profile_title">{$name}</span></h3>
                    <ul class="toggle_content">                         
                        <li class="arrow"><a href="#">Toggle Content</a></li>
                    </ul>
                </header>
                <section class="group">                         
                    <div class="info">
                    <!--   <img src="http://lorempixel.com/250/350/people/1" alt="Profile picture">-->
                       <img src="{$resim}" alt="Profile picture" style="height:336px;"> 
                      <ul>
                        <li><a href="{$BASEURL}user/profil"><i class="sweet-user"></i> Profile</a></li>
                        <li><a href="{$BASEURL}user/davet"><i class="sweet-settings"></i> Davet Et</a></li>
                        <li><a href="{$BASEURL}user/acikartirma"><i class="sweet-cog-4"></i> Açik Artirma</a></li>
                        <li><a href="{$BASEURL}user/giris"><i class="sweet-exit"></i> Güvenli çikiş</a></li>
                      </ul>
                    </div>
                    <div class="details">
                      <form class="well form-horizontal">
                        <fieldset>
                          <h4 class="group">
                            <span>Kullanici Bilgileri</span>
                            <div class="status">
                              Durum:
                                <select>
                                  <option>Online</option>
                                  <option>Away</option>
                                  <option>Busy</option>
                                  <option>Invisible</option>                        
                                  <option>Offline</option>                        
                                </select>                      
                            </div>
                          </h4>
                          <div class="control-group">
                            <label class="control-label" for="username">Kullanici Adi</label>
                            <div class="controls">
                              <input id="username" type="text" name="text" value="{$name}" disabled="disabled"> 
                              <p class="help-block"> kullanilan profil ismi</p>
                            </div>
                          </div>
                          <div class="control-group">
                            <label class="control-label" for="first_name">Altin damla sayisi</label>
                            <div class="controls">
                              <input id="first_name" type="text" name="first_name" value="{$altin}" disabled="disabled">                               
                            </div>
                          </div>
                          <div class="control-group">
                            <label class="control-label" for="last_name">Normal damla sayisi</label>
                            <div class="controls">
                              <input id="last_name" type="text" name="last_name" value="{$normal}" disabled="disabled">                               
                            </div>
                          </div>
                          <div class="control-group">
                            <label class="control-label" for="age">Acik artirma Puan sayisi</label>
                            <div class="controls">
                              <input id="age" type="text" name="age" value="{$aap}" disabled="disabled">                               
                            </div>
                          </div>
                           <div class="control-group">
                            <label class="control-label" for="age">Çevirici Damla sayisi</label>
                            <div class="controls">
                              <input id="age" type="text" name="age" value="{$cevirici}" disabled="disabled">                               
                            </div>
                          </div>

                          <div class="control-group">
                            <label class="control-label" for="company_name">Eklediği arkadaş sayisi</label>
                            <div class="controls">
                              <input id="company_name" type="text" name="company_name" value="{$eklenti}" disabled="disabled">                               
                            </div>
                          </div>

                           
                         </fieldset>
                      </form>          

                    </div>                      
                </section>
              </div>
              


            </div>
          </div><!--/row-->           
        
        </div><!--/span-->
        
        
      </div><!--/row-->      
   

{include file='inc/main_footer.tpl'}