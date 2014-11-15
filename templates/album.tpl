{include file='header.tpl'}

<div about="{$id}" typeof="mo:Record" class="haudio">
  {if $album->image != false}
  <div rel="foaf:depiction">
    <img class="albumart entry-feature-image" src="{$album->image}"
         alt="{$album->name|escape:'html':'UTF-8'}" title="{$album->name|escape:'html':'UTF-8'}" />
  </div>
  {/if}

<div class="entry-wrapper">
  <h1 class="entry-title">{$album->name|escape:'html':'UTF-8'}</h1>

  <section>

  <ol id="tracks" rel="mo:track">
    {section name=i loop=$tracks}
    <li about="{$tracks[i]->id}" typeof="mo:Track" class="item">
      <a class="fn url" href="{$tracks[i]->getURL()|escape:'html':'UTF-8'}" rel="foaf:page" property="dc:title">{$tracks[i]->name}</a>
    </li>
    {/section}
    {if $add_track_link}<li><a href='{$add_track_link}'><strong>[{t}Add new track{/t}]</strong></a></li>{/if}
  </ol>
  </section>
  </div>
</div>

{include file='footer.tpl'}

