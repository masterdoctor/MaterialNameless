{include file='navbar.tpl'}

<div class="container">
<div class="card">
  <div class="card-block">
	<div class="container">
	  <div class="row">
		<div class="col-md-9">
		  <div class="sjh-margin__bottom-small">
			  <button type="button" class="mdl-chip sjh-link-btn" href="{$BREADCRUMB_URL}">
				<span class="mdl-chip__text">{$BREADCRUMB_TEXT}</span>
			  </button>
		  </div>
		  
		  {if isset($SPAM_INFO)}
		  <div class="alert alert-info">{$SPAM_INFO}</div>
		  {/if}
		  
		  {foreach from=$FORUMS key=category item=forum}
		    {assign var=counter value=1}
		    <div class="card card-default">
		    {if !empty($forum.subforums)}
			  <div class="card-header">{$forum.title}</div>
			  <div class="card-block">
			  {foreach $forum.subforums item=subforum}
			    <div class="row">
				  <div class="col-md-6">
				    <a href="{$subforum->link}">{$subforum->forum_title}</a>
					<p>{$subforum->forum_description}</p>
				  </div>
				  <div class="col-md-2">
				    <strong>{$subforum->topics}</strong> {$TOPICS}<br />
					<strong>{$subforum->posts}</strong> {$POSTS}
				  </div>
				  <div class="col-md-4">
				    {if isset($subforum->last_post)}
					<div class="row">
				      <div class="col-md-3">
						<div class="frame">
						  <a href="{$subforum->last_post->profile}"><img alt="{$subforum->last_post->profile}" style="height:40px; width:40px;" class="img-centre rounded" src="{$subforum->last_post->avatar}" /></a>
						</div>
					  </div>
					  <div class="col-md-9">
					    <a href="{$subforum->last_post->link}">{$subforum->last_post->title}</a>
					    <br />
					    <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$subforum->last_post->post_date}">{$subforum->last_post->date_friendly}</span><br />{$BY} <a style="{$subforum->last_post->user_style}" href="{$subforum->last_post->profile}">{$subforum->last_post->username}</a>
					  </div>
					</div>
					{else}
					{$NO_TOPICS}
					{/if}
				  </div>
				</div>
				{if ($forum.subforums|@count) != $counter}
				<hr />
				{/if}
				{assign var=counter value=$counter+1}
			  {/foreach}
			  </div>
		    {/if}
			</div>
		  {/foreach}
		</div>
		<div class="col-md-3">
		
			<form action="{$SEARCH_URL}" method="post">
				<div class="mdl-textfield mdl-js-textfield">
				  <input class="mdl-textfield__input sjh-mdl-textfix" type="text" id="search" name="forum_search">
				  <input type="hidden" name="token" value="{$TOKEN}">
				  <label class="mdl-textfield__label" for="search"><i class="material-icons">search</i></label>
				</div>
			</form>
		  
		  <br />
		  
		  <div class="mdl-card mdl-shadow--3dp" style="width:100%;height:auto;min-height:unset;">
			<div class="mdl-card__title">
				<h2 class="mdl-card__title-text">{$STATS}</h2>
			</div>
			
			<div class="mdl-card__supporting-text">
				<p>{$USERS_REGISTERED}<br>{$LATEST_MEMBER}</p>
			</div>
		  </div>
		  
		  <br>
		  
		  <div class="mdl-card mdl-shadow--3dp" style="width:100%;height:auto;min-height:unset;">
			<div class="mdl-card__title">
				<h2 class="mdl-card__title-text">{$ONLINE_USERS}</h2>
			</div>
			
			<div class="mdl-card__supporting-text">
				{$ONLINE_USERS_LIST}
			</div>
		  </div>

		  {if count($WIDGETS)}
		    <br />
		    {foreach from=$WIDGETS item=widget}
		    {$widget}
		    <br /><br />
		    {/foreach}
		  {/if}
		</div>
	  </div>
	</div>
  </div>
</div>
</div>

{include file='footer.tpl'}