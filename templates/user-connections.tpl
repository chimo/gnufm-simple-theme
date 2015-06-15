{include file='header.tpl'}

<div class="entry-wrapper">
  <div class="entry-content">
    <h3><a href='{$base_url}/user-edit.php'>{t}Edit your profile{/t}</a> | {t}Connections to other services{/t}</h3>

    {if isset($errors)}
      <div id="errors">
        {section loop=$errors name=error}
          <p>{$errors[error]}</p>
        {/section}
      </div>
    {/if}

    <div id='connections'>
      {if $connection_added}
        <strong>{t}Your new connection has been successfully added!{/t}</strong>
      {/if}

      <h3>{t}Current connections{/t}</h3>
      {if empty($connections)}
        <p><em>{t}You don't currently have any connections configured.{/t}</em></p>
      {else}
        <table>
          <tr><th>{t}Service{/t}</th><th>{t}Username{/t}</th><th>{t}Forward Scrobbles?{/t}</th></tr>
          {foreach from=$connections item=conn}
            <tr>
              <td>{if $conn.webservice_url == 'http://ws.audioscrobbler.com/2.0/'}<a href='http://www.last.fm'>Last.fm</a>{else}<a href='{$conn.webservice_url}'>{$conn.webservice_url}</a>{/if}</td>
              <td>{$conn.remote_username}</td>
              <td><a href='{$base_url}/user-connections.php?forward={if $conn.forward == 1}0{else}1{/if}&service={$conn.webservice_url}'>{if $conn.forward == 1}{t}Yes{/t}{else}{t}No{/t}{/if}</a></td>
            </tr>
          {/foreach}
        </table>
      {/if}
      <p>
        {t}Connections to other services allow us to do nifty things like forwarding your scrobbles to other places around the web.{/t}<br />
        {t}If that sounds cool then simply make a connection below.{/t}
      </p>

      <h3>{t}Add a connection{/t}</h3>
      {if isset($lastfm_key)}
        <a href='http://www.last.fm/api/auth/?api_key={$lastfm_key}'>{t}Connect to a Last.fm account{/t}</a>
      {/if}
      {if isset($gnufm_key)}
        <form method="post">
          <h4>Connect to a remote GNU FM account</h4>
          <input name="remote_gnufm_url" type="text" placeholder="http://mygnufmserver.tld" />
          <button type="submit">Connect</button>
        </form>
      {/if}
    </div>
  </div>
</div>

{include file='footer.tpl'}

