<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package test-maverick
 */

get_header();
?>

<main class="main" id="main">
	<div id="primary" class="content-area">
			<main id="main" class="site-main">

			<?php
			while ( have_posts() ) :
				the_post();
			endwhile; // End of the loop.
			?>
	</div><!-- #primary -->
</main><!-- #main -->


	<?php
	$titleClasses = 'page-title-sm page-title-bottom-md';
	include('inc/title.php');
	?>

	<section class="section blog-section margin-top-negative-md">
		<div class="wrap">
			<?php echo the_title( '<h1 class="entry-title">', '</h1>' ) ?>
			<div class="main-image news-main-image">
				
				<img src="img/course.jpg" alt="" class="cover-img">
			</div>
			<div class="row-w content blog-content">
				<div class="col-10-w col-md-w">
				<?php
		the_content( sprintf(
			wp_kses(
				/* translators: %s: Name of current post. Only visible to screen readers */
				__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'test-maverick' ),
				array(
					'span' => array(
						'class' => array(),
					),
				)
			),
			get_the_title()
		) );

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'test-maverick' ),
			'after'  => '</div>',
		) );
		?>
				</div>
			</div>
		</div>
	</section>
	

	<section class="section blog-latest">
		<div class="wrap">
			<h2 class="t-center">
				ОСТАННІ НОВИНИ
			</h2>
			<div class="row news-amount">
				<?php echo do_shortcode( '[devise-random-posts]' ); ?>
				<!-- <div class="col-6 col-sm">
					<div class="card-news">
						<a href="#" class="card-img">
							<img src="img/news.png" alt="" class="cover-img">
						</a>
						<h2 class="card-title">
							<a href="#">
								У Києві відкриють «Освіторія Хаб» з коворкінгом, бібліотекою і кінопоказами
							</a>
						</h2>
						<span class="card-date">
							12.03.2019
						</span>
					</div>
				</div>
				<div class="col-6 col-sm">
					<div class="card-news">
						<a href="#" class="card-img">
							<img src="img/news.png" alt="" class="cover-img">
						</a>
						<h2 class="card-title">
							<a href="#">
								У Києві відкриють «Освіторія Хаб» з коворкінгом, бібліотекою і кінопоказами
							</a>
						</h2>
						<span class="card-date">
							12.03.2019
						</span>
					</div>
				</div> -->
			</div>
		</div>
	</section>
</main>
