{include file='header.tpl'}

<div class="entry-wrapper">
  <header>
    {if isset($headerfile)}
      {include file="$headerfile"}
    {/if}

    {if isset($pageheading)}
      <h1 id="page-title" class="asset-name">{$pageheading}</h1>
    {/if}
  </header>

  <section>
    {include file='submenu.tpl'}

    <div class="entry-content">

    {if $nowplaying|@count > 0}
      <h3>{t}Now Playing:{/t}</h3>
      {section name=i loop=$nowplaying}
        <p>
          <a href="{$nowplaying[i].trackurl|escape:'html':'UTF-8'}">
            {$nowplaying[i].track|escape:'html':'UTF-8'}
          </a>
          by
          <span class='artist-name'>
            <a href='{$nowplaying[i].artisturl|escape:'html':'UTF-8'}'>
              {$nowplaying[i].artist|escape:'html':'UTF-8'}
            </a>
          </span>
          with
          <span class='gobbler'>
            {if $nowplaying[i].clientname}
              <a href="{$nowplaying[i].clienturl|escape:'html':'UTF-8'}">
                {$nowplaying[i].clientname|escape:'html':'UTF-8'}
              </a>
            {else}
              {$nowplaying[i].client|escape:'html':'UTF-8'}
              (unknown,
              <a href="http://bugs.foocorp.net/projects/librefm/wiki/Clients">
                please tell us what this is
              </a>)
            {/if}
          </span>
          {if $nowplaying[i].loved}
            <img src='{$img_url}/love-small.png' alt='{t}Loved{/t}' title='{t}Loved{/t}' />
          {/if}
        </p>
      {/section}
    {/if}

    <h3>{t plays=$scrobbles|@count}Latest %1 Plays:{/t}</h3>

    <ol class="gobbles">
      {section name=i loop=$scrobbles}
        <li>
          <a href="{$scrobbles[i].trackurl|escape:'html':'UTF-8'}">
            {$scrobbles[i].track|escape:'html':'UTF-8'}
          </a>
          by
          <a href="{$scrobbles[i].artisturl|escape:'html':'UTF-8'}">
            {$scrobbles[i].artist|escape:'html':'UTF-8'}
          </a>
          &mdash;
          {$scrobbles[i].timehuman}
          {if $scrobbles[i].loved}
            <img src='{$img_url}/love-small.png' alt='{t}Loved{/t}' title='{t}Loved{/t}' />
          {/if}
        </li>
      {/section}
    </ol>

    {if !empty($lovedArtists)}
    <br />
    <h3>{t name=$me->name}Free artists that %1 loves{/t}</h3>
    <ul class="tagcloud">
      {section name=i loop=$lovedArtists}
        <li style='font-size:{$lovedArtists[i].size}'>
          <a href='{$lovedArtists[i].pageurl}'>{$lovedArtists[i].name}</a>
        </li>
      {/section}
    </ul>
  {/if}

  {if !empty($recommendedArtists)}
    <br />
    <h3>{t name=$me->name}Free artists that %1 might like{/t}</h3>
    <ul class="tagcloud">
      {foreach from=$recommendedArtists item=artist}
        <li style='font-size:{$artist.size}'><a href='{$artist.url}'>{$artist.artist}</a></li>
      {/foreach}
    </ul>
  {/if}
</div>

{include file='footer.tpl'}

