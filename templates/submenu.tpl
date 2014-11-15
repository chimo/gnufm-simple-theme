{if isset($submenu)}
  <ul class="submenu">
  {section name=i loop=$submenu}
    <li {if $submenu[i].active}class='active'{/if}>
        <a class="btn" href='{$submenu[i].url}'>{$submenu[i].name}</a>
    </li>
  {/section}
  </ul>
{/if}
