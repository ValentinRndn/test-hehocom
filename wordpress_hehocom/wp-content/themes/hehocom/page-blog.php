<?php
/* Template Name: Blog Section Page */
get_header(); ?>

<section class="blog-section">
    <div class="blog-container">
    <div class="top-blog-container">
        <h1>Découvrir notre blog</h1>
        <div class="button-allblogs-container">
        <button>Voir tous les articles</button>
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/blog/fleche-droite-marron.svg" alt="fleche-droite-marron">
        </div>
        </div>
        <div class="blog-content">
        <!-- Grand conteneur pour le premier article -->
        <div class="large-blog-post">
            <?php if ( have_posts() ) : the_post(); ?>
                <article class="blog-post">
                    <a href="<?php the_permalink(); ?>" class="blog-post-link">
                        <div class="post-thumbnail">
                            <?php if ( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail('large'); ?>
                                <div class="post-content-overlay">
                            <h2 class="post-title"><?php the_title(); ?></h2>
                            <div class="post-read-more">
                            <span>Lire l'article</span>
                            <img id="post-arrow-link" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/blog/fleche-droite-blanche.svg" alt="fleche-droite-blanche">
                            </div>
                        </div>
                            <?php endif; ?>

                        </div>

                    </a>
                </article>
            <?php endif; ?>
        </div>

        <!-- Petit conteneur pour les deux articles suivants -->
        <div class="small-blog-posts">
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                <article class="blog-post">
                    <a href="<?php the_permalink(); ?>" class="blog-post-link">
                        <div class="post-thumbnail">
                            <?php if ( has_post_thumbnail() ) : ?>
                                <?php the_post_thumbnail('medium'); ?>
                            <?php endif; ?>
                            <div class="post-content-overlay">
                            <h2 class="post-title"><?php the_title(); ?></h2>
                            <div class="post-read-more">
                            <span>Lire l'article</span>
                            <img id="post-arrow-link" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/blog/fleche-droite-blanche.svg" alt="fleche-droite-blanche">
                            </div>
                        </div>
                        </div>

                    </a>
                </article>
            <?php endwhile; endif; ?>
            </div>
        </div>

    </div>
</section>


<?php get_footer(); ?>
