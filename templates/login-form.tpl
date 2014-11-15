<label for="username">{t}Username{/t}</label>
<input id="username" name="username" type="text" value="{$username}" maxlength="64" />

<label for="password" style="margin-top: 20px;">{t}Password{/t}</label>
<input id="password" name="password" type="password" value=""/>

<input type="checkbox" checked name="remember" id="remember" /> <label for="remember" style="display: inline">{t}Remember my login{/t}</label>

<input type="submit" name="login" value="{t}Login{/t}" style="display: block; margin-top: 20px;" />
<input name="return" type="hidden" value="{$return|htmlentities}" />
