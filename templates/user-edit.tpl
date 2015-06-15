{include file='header.tpl'}

<div class="entry-wrapper">
  <div class="entry-content">
    <h3>Edit your profile | <a href='{$base_url}/user-connections.php'>Connections to other services</a></h3>

    {if isset($errors)}
      <div id="errors">
        {section loop=$errors name=error}
          <p>{$errors[error]}</p>
        {/section}
      </div>
    {/if}

    <div id='user-edit'>
      <form action='{$base_url}/user-edit.php' method='post'>

        <label for='fullname'>{t}Full name:{/t}</label>
        <input name='fullname' id='fullname' value='{$fullname|escape:'html':'UTF-8'}' />

        <label for='location'>{t}Location:{/t}</label>
        <input name='location' id='location' value='{$location|escape:'html':'UTF-8'}' />

        <label for='homepage'>{t}Website address:{/t}</label>
        <input name='homepage' id='homepage' value='{$homepage|escape:'html':'UTF-8'}' />

        <label for='avatar_uri'>{t}Avatar address:{/t}</label>
        <input name='avatar_uri' id='avatar_uri' value='{$avatar_uri|escape:'html':'UTF-8'}' />

        <label for='bio'>{t}Mini Biography:{/t}</label>
        <textarea name='bio' id='bio'>{$bio|escape:'html':'UTF-8'}</textarea>

        <label>
          <input type='checkbox' name='receive_emails' style='width: auto;' {if $receive_emails}checked{/if} />
          {t}Receive E-mails:{/t}
        </label>

        <label for='id'>{t}WebID (FOAF){/t}</label>
        <input name='id' id='id' value='{$id|escape:'html':'UTF-8'}' />

        <label for='laconica_profile'>{t}GNU social Profile:{/t}</label>
        <input onchange='laconicaChange();' onclick='laconicaClick();' name='laconica_profile' id='laconica_profile' value='{$laconica_profile|escape:'html':'UTF-8'}' />

        <label for='journal_rss'>{t}RSS Feed:{/t}</label>
        <input name='journal_rss' id='journal_rss' value='{$journal_rss|escape:'html':'UTF-8'}' />

        <label>
          <input type='checkbox' id='delete_account' name='delete_account' style='width: auto;'>
          {t}Delete my account{/t}
        </label>

        <label for='password_1'>{t}Password:{/t} {t}Leave this blank if you don't want to change your password.{/t}</label>
        <input name='password_1' id='password_1' type='password' autocomplete="off" value='' />

        <label for='password_2'>{t}Confirm Password:{/t}</label>
        <input name='password_2' id='password_2' type='password' autocomplete="off" value='' />

        <input type='submit' value='{t}Change{/t}' />
        <input name='submit' value='1' type='hidden' />
      </form>
    </div>
  </div>
</div>

{include file='footer.tpl'}

