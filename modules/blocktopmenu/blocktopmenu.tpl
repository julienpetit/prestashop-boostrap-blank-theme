{if $MENU != ''}

<div class="span12">
<!-- Menu -->
<div class="navbar" id="navbartopmenu">
	<div class="navbar-inner">
		<!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
		<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
		<div class="nav-collapse collapse">
			<ul class="nav">
				{$MENU}
			</ul>

			{if $MENU_SEARCH}
			<form class="navbar-search pull-right form-search" action="{$link->getPageLink('search')}" method="get">
				<div class="input-append">

					<input type="hidden" name="controller" value="search" />
					<input type="hidden" value="position" name="orderby"/>
					<input type="hidden" value="desc" name="orderway"/>
					<input type="text" class="span2 search-query" name='search_query' value='{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'htmlall':'UTF-8'}{/if}' />
					<button type="submit" class="btn">Rechercher</button>
				</div>
			</form>
			{/if}

		</div><!--/.nav-collapse -->

	</div><!-- /.navbar-inner -->
</div><!-- /.navbar -->
<!--/ Menu -->
</div>
{/if}