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

<div typeof="foaf:Agent" class="user vcard">
    <h1 class="fn entry-title" property="foaf:name">{$me->fullname|escape:'html':'UTF-8'}</h1>

    <div class="avatar">
        <img src="{$me->getAvatar()|escape:'html':'UTF-8'}" alt="avatar" class="photo" />
    </div>
</div>

{include file='submenu.tpl'}

<div about="[_:seq1]" typeof="rdf:Seq" rev="rss:items">
    <h3 typeof="rss:channel" property="rss:title" rel="rss:link" resource="#latest_plays" id="latest_plays" content="{$me->name|escape:'html':'UTF-8'}'s Latest Plays">{t plays=$scrobbles|@count}Latest %1 Plays:{/t}</h3>
</div>

<ol class="gobbles" about="{$me->id|escape:'html':'UTF-8'}" rev="gob:user">

{section name=i loop=$scrobbles}
    <li>
    <a href="{$scrobbles[i].trackurl|escape:'html':'UTF-8'}">{$scrobbles[i].track|escape:'html':'UTF-8'}</a> by <a about="{$scrobbles[i].id_artist|escape:'html':'UTF-8'}" typeof="mo:MusicArtist" property="foaf:name" rel="foaf:page"
                    class="fn url" href="{$scrobbles[i].artisturl|escape:'html':'UTF-8'}"
                    >{$scrobbles[i].artist|escape:'html':'UTF-8'}</a> {if $scrobbles[i].albumurl} on the album, <a href="{$scrobbles[i].albumurl|escape:'html':'UTF-8'}">{$scrobbles[i].album|escape:'html':'UTF-8'}</a>{/if}
            &mdash; {$scrobbles[i].timehuman} {if $scrobbles[i].loved}<img src='{$img_url}/love-small.png' alt='{t}Loved{/t}' title='{t}Loved{/t}' />{/if}
    </li>
{/section}
</ol>
{include file='footer.tpl'}