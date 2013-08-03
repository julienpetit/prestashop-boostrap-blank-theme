{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Block Newsletter module-->
<div id="newsletter_block" class="well-white">
	<h4 class="block-title">{l s='Newsletter' mod='blocknewsletter'}</h4>
	<div class="block_content">
	{if isset($msg) && $msg}
		<p class="alert {if $nw_error}alert-error{else}alert-success{/if}">{$msg}</p>
	{/if}

		<p class="text-center">
		<form action="{$link->getPageLink('index')}" method="post">

				{* @todo use jquery (focusin, focusout) instead of onblur and onfocus *}
				<div class="input-append">
				<input type="text" name="email" size="18" 
					value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='blocknewsletter'}{/if}" 
					onfocus="javascript:if(this.value=='{l s='your e-mail' mod='blocknewsletter' js=1}')this.value='';" 
					onblur="javascript:if(this.value=='')this.value='{l s='your e-mail' mod='blocknewsletter' js=1}';" 
					class="inputNew span2" />
				<input type="submit" value="Valider" class="btn" name="submitNewsletter" />

				<input type="hidden" name="action" value="0" />
			</div>
		
		</form>
		</p>
	</div>
</div>
<!-- /Block Newsletter module-->
