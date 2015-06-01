<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    {if !($pagetitle)}
        <title>{$site_name}</title>
    {else}
        <title>{$pagetitle|escape:'html':'UTF-8'} &mdash; {$site_name}</title>
    {/if}

    <link rel="stylesheet" href="//chromic.org/assets/css/main.css" />
    <link rel="stylesheet" href="{$base_url}/themes/{$default_theme}/css/extra.css" />

    <script>
      var base_url="{$base_url}";
    </script>

    <script src="{$base_url}/js/jquery.min.js"></script>
    <script src="{$base_url}/js/jquery-ui.custom.min.js"></script>
    <script src="{$base_url}/js/jquery.placeholdr.js"></script>
    <script src="{$base_url}/js/player.js"></script>

    {section name=i loop=$extra_head_links}
      <link rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'html':'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}" title="{$extra_head_links[i].title|escape:'html':'UTF-8'}"  />
    {/section}
</head>

<body id="page">
  {include file='menu.tpl'}

  <div id="main" role="main">
    <article class="hentry">

