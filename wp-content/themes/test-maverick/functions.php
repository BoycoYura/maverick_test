<?php
/**
 * test-maverick functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package test-maverick
 */

if ( ! function_exists( 'test_maverick_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function test_maverick_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on test-maverick, use a find and replace
		 * to change 'test-maverick' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'test-maverick', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'test-maverick' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'test_maverick_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'test_maverick_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function test_maverick_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'test_maverick_content_width', 640 );
}
add_action( 'after_setup_theme', 'test_maverick_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function test_maverick_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'test-maverick' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'test-maverick' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'test_maverick_widgets_init' );

/**
 * Enqueue scripts and styles.
 */

function wptp_create_post_type() {
	$labels = array(
	  'name' => __( 'Події' ),
	  'singular_name' => __( 'Події' ),
	  'add_new' => __( 'Нова подія' ),
	  'add_new_item' => __( 'Додати нову подію' ),
	  'edit_item' => __( 'Редагувати подію' ),
	  'new_item' => __( 'Нова подія' ),
	  'view_item' => __( 'Переглянути подію' ),
	  'search_items' => __( 'Знайти подію' ),
	  'not_found' =>  __( 'Подія не знайдена' ),
	  'not_found_in_trash' => __( 'Подія не знайдена' ),
	  );
	$args = array(
	  'labels' => $labels,
	  'taxonomies' => array('event-type'),
	  'has_archive' => true,
	  'public' => true,
	  'hierarchical' => false,
	  'menu_position' => 5,
	  'supports' => array(
		'title',
		'editor',
		'excerpt',
		'custom-fields',
		'thumbnail'
		),
	  );
	register_post_type( 'events', $args );
  }
  add_action( 'init', 'wptp_create_post_type' );

  function wptp_register_taxonomy() {
	register_taxonomy( 'event_type', 'events',
	  array(
		'labels' => array(
		  'name'              => 'Тип події',
		  'singular_name'     => 'Тип події',
		  'search_items'      => 'Пошук типу події',
		  'all_items'         => 'Всі типи подій',
		  'edit_item'         => 'Редагувати тип події',
		  'update_item'       => 'Обновити тип події',
		  'add_new_item'      => 'Додати новий тип події',
		  'new_item_name'     => 'Імя нового типу події',
		  'menu_name'         => 'Тип події',
		  ),
		'hierarchical' => true,
		'sort' => true,
		'args' => array( 'orderby' => 'term_order' ),
		'show_admin_column' => true
		)
	  );
  }
  add_action( 'init', 'wptp_register_taxonomy' );


  add_action( 'wp_ajax_nopriv_ajax_pagination', 'my_ajax_pagination' );
  add_action( 'wp_ajax_ajax_pagination', 'my_ajax_pagination' );
  
  function my_ajax_pagination() {
	  echo get_bloginfo( 'title' );
	  die();
  }


  add_action('wp_ajax_load_posts_by_ajax', 'load_posts_by_ajax_callback');
  add_action('wp_ajax_nopriv_load_posts_by_ajax', 'load_posts_by_ajax_callback');

 

  function load_posts_by_ajax_callback() {
	print_r($posts_count);

    check_ajax_referer('load_more_posts', 'security');
	$paged = $_POST['page'];
	$posts_count =  $_POST['offset'];
    $args = array(
        'post_type' => 'events',
        'post_status' => 'publish',
		'posts_per_page' => '3',
		'offset'=> $posts_count,
        'paged' => $paged,
    );
	$my_posts = new WP_Query( $args );
	
    if ( $my_posts->have_posts() ) :
        ?>
		<?php while ( $my_posts->have_posts() ) : $my_posts->the_post(); ?>
		<div class="col-6 col-md">
		<div class="card-square">
								<div class="card-square-inner">
									<div class="card-square-date">
									<?php
										$date_number = get_the_date('j' );
										$date_other = get_the_date('F Y' );
										// $name = $term->name;
									?>
										<span class="day">
										<?php  echo $date_number; ?>
										</span>
										<span class="month">
										<?php echo $date_other; ?>
										</span>
									</div>
									<div class="card-square-title">

									<?php
										$author = get_the_author();
										// $name = $term->name;
									?>
										<h2>
											<a class="like-h3" href="<?php the_permalink() ?>"> <?php the_title(); ?></a>
										</h2>
										<span><?php echo $author; ?></span>
									</div>
								</div>
							</div>
		</div><!-- post -->
		</div>
        <?php endwhile; ?>
        <?php
    endif;
	
    wp_die();
}

function wp_corenavi() {
	global $wp_query;
	$total = isset( $wp_query->max_num_pages ) ? $wp_query->max_num_pages : 1;
	$a['total'] = $total;
	$a['mid_size'] = 3; // сколько ссылок показывать слева и справа от текущей
	$a['end_size'] = 1; // сколько ссылок показывать в начале и в конце
	$a['prev_text'] = '&laquo;'; // текст ссылки "Предыдущая страница"
	$a['next_text'] = '&raquo;'; // текст ссылки "Следующая страница"
  
	if ( $total > 1 ) echo '<nav class="pagination">';
	echo paginate_links( $a );
	if ( $total > 1 ) echo '</nav>';
  }

  add_action( 'wp_footer', 'artabr_lm_footer_scripts' );





function paginate_script() {
	// Correct the path and js file name before using.
	wp_enqueue_script( 'paginate',  get_stylesheet_directory_uri() . '/js/paginate.js', array(), '1.0', true );

	wp_localize_script( 'paginate', 'sitesettings', array(
		'ajaxurl' => admin_url( 'admin-ajax.php' ),
	));
}

add_action( 'wp_enqueue_scripts', 'paginate_script' );

add_action('wp_ajax_nopriv_ajax_by_order', 'tristup_ajax_by_order' ); //witout logged in
add_action("wp_ajax_ajax_by_order","tristup_ajax_by_order");           //logged in

function tristup_ajax_by_order()
{
	
$page_id=$_POST['pageid'];
$page_total=$_POST['page_total'];

$args['posts_per_page']=2;

if($page_id>0)
{
	$args['offset']=(2*$page_id);       
}
$aboutPosts = new WP_Query($args);

$output='';
$pagination_html='';
if ( $aboutPosts->have_posts() ) 
{
	while ( $aboutPosts->have_posts() ) : $aboutPosts->the_post();
		$date_number = get_the_date('F j Y' );
		$output.='<div class="col-6 col-sm"><div class="card-news"><a href="#" class="card-img"><img src="img/news.png" alt="" class="cover-img"></a><h2 class="card-title"><a class="like-h3" href="'.get_permalink().'">'.get_the_title().'</a></h2><span class="card-date">'. $date_number.'</span></div></div>';

	endwhile; 
}

for($i=0;$i<$page_total;$i++)
{
	$j=$i+1;
	$pagination_html.='<span><a href="javascript:void(0);" class="pagi" data-page="'.$i.'" data-total="'.$page_total.'">'.$j.'</span>';
}

$result['html']= $output;
$result['pagination_html']=$pagination_html;

echo json_encode($result);
die();
}//end of function



function devise_rand_posts() {

	$args = array(
		'post_type' => 'post',
		'orderby'	=> 'rand',
		'post__not_in'=> array(intval($post->ID)),
		'posts_per_page' => 2,
		);
	


	$the_query = new WP_Query( $args );
	
	if ( $the_query->have_posts() ) {
	
		while ( $the_query->have_posts() ) {
			$the_query->the_post();
			$string .= '<div class="col-6 col-sm"><div class="card-news"><a href="#" class="card-img"><img src="img/news.png" alt="" class="cover-img"></a><h2 class="card-title"><a href="'. get_permalink()  .'">'. get_the_title() .'</a></h2><span class="card-date">12.03.2019</span></div></div>';
		}
		/* Восстанавливаем оригинальные Post Data */
		wp_reset_postdata();
	} else {
	
	$string .= 'записей не найдено';
	}
	
	return $string;
	}
	
	add_shortcode('devise-random-posts','devise_rand_posts');
	add_filter('widget-text', 'do_shortcode');


	add_action( 'init', 'cpt_mail_calback' );

	function cpt_mail_calback() {
	
		$labels = array(
			"name" => "Mail",
			"singular_name" => "Mail",
			"menu_name" => "Данні з форми",
			"all_items" => "Всі данні",
			"add_new" => "Додати нові",
			"add_new_item" => "Додати нові",
			"edit" => "Редагувати",
			"edit_item" => "Редагувати",
			"new_item" => "Додати нові",
			"view" => "Переглянути",
			"view_item" => "Переглянути",
			"search_items" => "Знайти данні",
			"not_found" => "Не знайдено",
			"not_found_in_trash" => "Не знайдено",
		);
	
		$args = array(
			"labels" => $labels,
			"description" => "",
			"public" => true,
			"show_ui" => true,
			"has_archive" => false,
			"show_in_menu" => true,
			"exclude_from_search" => true,
			"capability_type" => "post",
			"map_meta_cap" => true,
			"hierarchical" => true,
			"rewrite" => false,
			"query_var" => true,
			"menu_position" => 7,
			"menu_icon" => "dashicons-email-alt",
			"supports" => array( "title", "editor" ),
		);
	
		register_post_type( "mail", $args );
	
	}


	function send_mail() {

		/* Забираем отправленные данные */
		// $client_fio = $_POST['client_fio'];
		// $client_mail = $_POST['client_mail'];
		// $client_quest = $_POST['client_quest'];

		$client_name = $_POST['client_name'];
		$client_second = $_POST['client_second'];
		$client_posada = $_POST['client_posada'];
		$client_site = $_POST['client_site'];
		$client_comment = $_POST['client_comment'];
	  
		/* Отправляем нам письмо */
		$emailTo = 'admin@test.com';
		$subject = 'Test mail рассылки!';
		$headers = "Content-type: text/html; charset=\"utf-8\"";
		$mailBody = "$client_name <br/><br/> $client_second <br/><br/> $client_posada <br/><br/> $client_site <br/><br/>  $client_comment";
	  
		wp_mail($emailTo, $subject, $mailBody, $headers);
	  
		/* Создаем новый пост-письмо */
		$post_data = array(
		 'post_title'    => $client_name,
		 'post_content'  => '<b>Ім*я:</b>' . $client_name . '<br/><br/> <b>Прізвище:</b>' . $client_second . '<br/><br/> <b>Посада:</b>' . $client_posada . '<br/><br/> <b>Сайт:</b>' . $client_site . '<br/><br/> <b>Комментар:</b>'.$client_comment,
		 'post_status'   => 'publish',
		 'post_author'   => 1,
		 'post_type' => 'mail',
		);
	  
		wp_insert_post( $post_data );
	  
		/* Завершаем выполнение ajax */
		die();
		
	  }
	  
	  add_action("wp_ajax_send_mail", "send_mail");
	  add_action("wp_ajax_nopriv_send_mail", "send_mail");

function test_maverick_scripts() {
	wp_enqueue_style( 'test-maverick-style', get_stylesheet_uri() );
	wp_enqueue_style( 'test-maverick-custom', get_template_directory_uri() . '/css/styles.css' );
	wp_enqueue_style( 'test-maverick-custom-style', get_template_directory_uri() . '/css/custom.css' );
	wp_enqueue_style( 'test-maverick-fonts','https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i' );
	wp_enqueue_style( 'test-maverick-normalize','https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css' );
	wp_enqueue_style( 'test-maverick-slick','https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css' );
	wp_enqueue_style( 'test-maverick-slick-min','https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css' );
	wp_enqueue_style( 'test-maverick-pikaday','https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css' );

	wp_enqueue_script( 'test-maverick-jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js');
	wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js');
	wp_enqueue_script( 'navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );
	wp_enqueue_script( 'test-maverick-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );
	wp_enqueue_script( 'carousel-js','https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js');
	wp_enqueue_script( 'moment-js', get_template_directory_uri() . '/js/moment.min.js');
	wp_enqueue_script( 'pikaday-js', 'https://cdn.jsdelivr.net/npm/pikaday/pikaday.js');
	wp_enqueue_script( 'youtube-js', 'https://www.youtube.com/player_api');
	wp_enqueue_script( 'slider-js', get_template_directory_uri() . '/js/slider.js');
	wp_enqueue_script( 'selector-js', get_template_directory_uri() . '/js/selectorStylize.js');
	wp_enqueue_script( 'smooth-js', get_template_directory_uri() . '/js/smoothScroll.js');
	wp_enqueue_script( 'true_loadmore', get_stylesheet_directory_uri() . '/js/loadmore.js', array('jquery') );


	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'test_maverick_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

