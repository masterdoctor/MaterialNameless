<div class="mdl-layout mdl-js-layout">
	<header class="mdl-layout__header mdl-layout__header--scroll mdl-layout--no-desktop-drawer-button">
		
		<div class="mdl-layout__header-row">
			<span class="mdl-layout__title"><a href="/" style="color:white;">{$SITE_NAME}</a></span>
			<div class="mdl-layout-spacer"></div>
			<nav class="mdl-navigation mdl-layout--large-screen-only">
				{foreach from=$NAV_LINKS key=name item=item}
					{if isset($item.items)}
						{* IS DROPDOWN *}
						
					{else}
						{* IS NORMAL LINK *}
						<a class="mdl-navigation__link" href="{$item.link}" target="{$item.target}">{$item.title}</a>
					{/if}
				{/foreach}
			</nav>
		</div>
	</header>
	
	<div class="mdl-layout__drawer mdl-layout--small-screen-only">
		<span class="mdl-layout__title">{$SITE_NAME}</span>
		<nav class="mdl-navigation">
			{foreach from=$NAV_LINKS key=name item=item}
				{if isset($item.items)}
					{* IS DROPDOWN *}
					
				{else}
					{* IS NORMAL LINK *}
					<a class="mdl-navigation__link" href="{$item.link}" target="{$item.target}">{$item.title}</a>
				{/if}
			{/foreach}
			
			<hr>
			
			{foreach from=$USER_AREA key=name item=item}
				{if isset($item.items)}
					{* IS DROPDOWN *}
				{else}
					{* IS NORMAL LINK *}
					<a class="mdl-navigation__link" href="{$item.link}" target="{$item.target}">{$item.title}</a>
				{/if}
			{/foreach}
		</nav>
	</div>
</div>

<div style="padding-top: 8rem;"></div>

{* Global messages *}
{if isset($MAINTENANCE_ENABLED)}
	<div id="notificationBanner" class="mdl-js-snackbar mdl-snackbar">
		<div class="mdl-snackbar__text"></div>
		<button class="mdl-snackbar__action" type="button"></button>
	</div>
	<script>var mn_maintenance = true; var mn_maintenance_message = "{$MAINTENANCE_ENABLED}";</script>
{/if}