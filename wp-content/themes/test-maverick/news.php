
<?php
/*
Template Name: Новости
*/
?>

<!-- Здесь html/php код шаблона -->

<?php include('header.php'); ?>

<main class="main" id="main">
	<?php
	include('inc/breadcrumbs.php');

	$titleClasses = 'page-title-bottom-md';
	$title = 'НОВИНИ';

	include('inc/title.php');
	?>
	<section class="section margin-top-negative">
		<div class="wrap">
			
			<div class="row news-amount result-content">

			<?php
				$ourCurrentPage = get_query_var('paged');
				$aboutPosts = new WP_Query(array(
					'post_type' => 'post',
					'posts_per_page' => 2,
				));
            ?> 

				<?php while ( $aboutPosts->have_posts() ) : $aboutPosts->the_post(); ?>

				<div class="col-6 col-sm">
					<div class="card-news">
						<a href="#" class="card-img">
							<img src="img/news.png" alt="" class="cover-img">
						</a>
						<h2 class="card-title">
							<a class="like-h3" href="<?php the_permalink() ?>"> <?php the_title(); ?></a>
						</h2>
						<span class="card-date">
						<?php
							$date_number = get_the_date('F j Y' );
										// $name = $term->name;
						?>

						<?php echo	$date_number ?>
						</span>
					</div>
				</div>
				<?php endwhile; ?>
				


				<?php wp_reset_postdata(); ?>
			</div>
			<div class="pagination">

			<div class="pagin">
				<?php 
					for($i=0;$i<$aboutPosts->max_num_pages;$i++){
					$j=$i+1;
					echo '<a href="javascript:void(0);" data-page="'.$i.'" class="paginator">'. $j .'</a>';

					
					}
				?>
			</div>

			<script>
			$('.paginator:nth-child(1)').addClass( "active" );
				$('.paginator').on('click',function()
				{   
					$('.paginator').removeClass( "active" );
					$(this).addClass( "active" );
					console.log("pagi click");
					var pageid=$(this).data('page');
					var page_total=$(this).data('total');
					var data={
						action: "ajax_by_order",
						pageid: pageid,
						page_total:page_total
					};


					$.post(sitesettings.ajaxurl, data,function(res){
						console.log("pagi click two");
						console.log(res);
						var cont = JSON.parse(res);
						$('.result-content').html(cont.html);
					});
				});
			</script>
		</div>
	</section>
</main>

sc

<?php include('footer.php'); ?>