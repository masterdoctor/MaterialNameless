<div class="container">
  <div class="alert alert-info"><center>{$CONNECT_WITH}</center></div>
  <div class="row">
    <div class="col-md-3">
		<!--<div class="well">-->
		<div class="card blue-grey darken-1 white-text">
			<div class="card-content">
			  <span class="card-title {if $MAIN_ONLINE == 1}success{else}danger{/if}">{$STATUS} {if $MAIN_ONLINE == 1}{$ONLINE}{else}{$OFFLINE}{/if}</span>
			  <p><b>{$PLAYERS_ONLINE}</b> {if $PLAYER_COUNT != null}{$PLAYER_COUNT}{else}0{/if}</p>
			  <p><b>{$QUERIED_IN}</b> {$TIMER}</p>
			</div>
		</div>
	  <!--</div>-->
	</div>
	<div class="col-md-9">
		<div class="card blue-grey darken-1 white-text">
			<div class="card-content">
				<span class="card-title"> {$PLAY_TITLE}</span>
				<p>{$SERVER_STATUS}</p>
			</div>
		</div>
	</div>
  </div>
</div>