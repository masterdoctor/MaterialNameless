<div class="container">
  {$BREADCRUMBS}
  {$SESSION_SUCCESS_POST}
  {$SESSION_FAILURE_POST}
  {$COOKIE_MESSAGE}
  {$BUTTONS}
  <br />
  {$PAGINATION}
  {foreach from=$REPLIES item=reply}
  <div class="row">
    <div class="col s12 m6">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text" id="{$reply.post_id}">
          <span class="card-title">{$reply.heading}</span>
		  <div class="spacer" style="padding-top: 30px;width:100%;"></div>
          <div class="row">
            <div class="col-md-3">
              <center>
                {$reply.avatar}
                <br />
                <br />
                <strong>
                  <a class="reply-username" href="/profile/{$reply.mcname}">{$reply.username}
                  </a>
                </strong>
                <br />
                {$reply.user_group}
                <br />
                {$reply.user_title}
                <hr class="invisible">
                {$reply.user_posts_count} {$POSTS}
                <br />
                {$reply.user_reputation} {$REPUTATION}
                <br />
                <br />
              </center>
              <blockquote>
                <small class="white-text">IGN: {$reply.mcname}
                </small>
              </blockquote>
            </div>
            <div class="col-md-9">
              {$BY} 
              <a class="reply-username" href="/profile/{$reply.mcname}">{$reply.username}
              </a> &raquo; 
              <span rel="tooltip" data-trigger="hover" data-original-title="{$reply.post_date}">{$reply.post_date_rough} {$AGO}
              </span>
              {$reply.buttons}
			  <hr class="invisible">
              <div class="forum_post">
                {$reply.content}
              </div>
              <br />
              <br />
              <span class="pull-right black-text">
                {$reply.reputation}
              </span>
              <br />
              <br />
              <hr>
              {$reply.signature}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  {/foreach}
  {$PAGINATION}
  {$QUICK_REPLY}
</div>
