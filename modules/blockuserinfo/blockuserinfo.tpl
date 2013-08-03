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

<!-- Block user information module HEADER -->

<div class="span9">
	<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
		<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
	</a>
</div>
<div id="header_user" class="span3">
	{if !$PS_CATALOG_MODE}
	
	<div id="shopping_cart" class="row-fluid">
		<div class="span9" id="title-shopping-cart">
			<a href="{$link->getPageLink($order_process, true)}" title="{l s='View my shopping cart' mod='blockuserinfo'}" rel="nofollow">{l s='Cart' mod='blockuserinfo'}
				<span class="ajax_cart_quantity{if $cart_qties == 0} hidden{/if}">{$cart_qties}</span>
				<span class="ajax_cart_product_txt{if $cart_qties != 1} hidden{/if}">{l s='Product' mod='blockuserinfo'}</span>
				<span class="ajax_cart_product_txt_s{if $cart_qties < 2} hidden{/if}">{l s='Products' mod='blockuserinfo'}</span>
				<span class="ajax_cart_total{if $cart_qties == 0} hidden{/if}">
					{if $cart_qties > 0}
					{if $priceDisplay == 1}
					{assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
					{convertPrice price=$cart->getOrderTotal(false, $blockuser_cart_flag)}
					{else}
					{assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
					{convertPrice price=$cart->getOrderTotal(true, $blockuser_cart_flag)}
					{/if}
					{/if}
				</span>
				<span class="ajax_cart_no_product{if $cart_qties > 0} hidden{/if}">{l s='(empty)' mod='blockuserinfo'}</span>
			</a>
		</div>
		<div id="icon-cart-header" class="span3 glyph-icon" data-icon="&#xe02a;"></div>
	</div>
	{/if}
</div>
<div class="row-fluid">
	<div id="header_user_info" class="span12 text-right">
		{l s='Welcome' mod='blockuserinfo'}
		{if $logged}
		<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account " rel="nofollow"><span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
		<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" class="btn btn-small" rel="nofollow">{l s='Your Account' mod='blockuserinfo'}</a>	
		<a href="{$link->getPageLink('index', true, NULL, "mylogout")}" title="{l s='Log me out' mod='blockuserinfo'}" class="logout btn btn-small" rel="nofollow">{l s='Log out' mod='blockuserinfo'}</a>

		{else}
		<a href="{$link->getPageLink('my-account', true)}" title="{l s='Login to your customer account' mod='blockuserinfo'}" class="login btn btn-small" rel="nofollow">{l s='Login' mod='blockuserinfo'}</a>
		{/if}

	</div>
</div>



<!-- /Block user information module HEADER -->
