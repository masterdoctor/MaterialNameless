<div class="jumbotron jumbotron-homepage">
    <h1>{$SITENAME}</h1>
	<p>{$PLAYERS_ONLINE}</p>
	<p>{$CONNECT_WITH}</p>
</div>

<div class="container">
  {$SESSION_FLASH}
  <div class="row">
    <div class="col-md-9">
	  <!-- News -->
	  <h2>{$NEWS}</h2>
	  {foreach from=$newsArray item=news}
	  <div class="row">
		  <div class="col s12 m6">
			  <div class="card blue-grey darken-1">
					<div class="card card-primary">
						<div class="card-content white-text">
							<span class="card-title"><a class="white-text" href="/forum/view_topic/?tid={$news.id}">{$news.title}</a></span>
							<span class="card-author"><a class="white-text" href="/profile/{$news.author_mcname}">{$news.author_username}</a> {$news.author_avatar}</span>
							{$news.content}
							<br /><br />
							<span class="label label-info">{$news.date}</span>
							<span class="pull-right">
							  <span class="label label-danger"><span class="glyphicon glyphicon-comment"></span> {$news.replies} | <span class="glyphicon glyphicon-eye-open"></span> {$news.views}</span>
							</span>
						</div>
					  <!--<div class="card-heading">
						
						
					  </div>
					  <div class="card-body">
						
					  </div>-->
					</div>
				</div>
			</div>
		</div>
	  {/foreach}
	</div>
	<div class="col-md-3">
	  <!-- Social -->
	  <h2>{$SOCIAL}</h2>
	  {if !empty($TWITTER_FEED)}
	  {$TWITTER_FEED}
	  {/if}
	  
	  {if !empty($VOICE_VIEWER)}
	  {if {$VOICE_VIEWER_TITLE} != 'Discord'}
	  <div class="well well-sm">
	  <h4>{$VOICE_VIEWER_TITLE}</h4>
	  <strong>{$VOICE_VIEWER_IP}</strong><br />
	  {$VOICE_VIEWER}
	  </div>
	  {else}
	  {$VOICE_VIEWER}
	  {/if}
	  {/if}
	</div>
  </div>
</div>