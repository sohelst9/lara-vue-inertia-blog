<script setup>
import { usePage } from '@inertiajs/vue3';


const props = defineProps({
  allImage: {
    type: Array,
    required: true
  }
});

</script>

<template>

  <Head>
    <title> | Single Blog</title>
    <meta head-key="title" name="title" content="Single Blog page meta title">
    <meta head-key="description" name="description" content="Single Blog page meta description">
  </Head>

  <div>
    <div class="page-title">
      <div class="container">
        <h1>Single Post</h1>
        <nav class="breadcrumbs">
          <ol>
            <li>
              <Link href="/">Home</Link>
            </li>
            <li class="current">Single Post</li>
          </ol>
        </nav>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">

      <div class="col-lg-8">

        <!-- Blog Details Section -->
        <section id="blog-details" class="blog-details section">
          <div class="container">

            <article class="article">

              <div class="post-img">
                <img :src="allImage.blog1" alt="" class="img-fluid">
              </div>

              <h2 class="title">Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia
              </h2>

              <div class="meta-top">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html">John
                      Doe</a></li>
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time
                        datetime="2020-01-01">Jan 1, 2022</time></a>
                  </li>
                  <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">12
                      Comments</a></li>
                </ul>
              </div><!-- End meta top -->

              <div class="content">
                <p>
                  Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi
                  praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.
                  Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta.
                  Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda
                  perferendis dolore.
                </p>

                <p>
                  Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in
                  accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate
                  cupiditate.
                </p>

                <blockquote>
                  <p>
                    Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut.
                    Aut eos aliquam doloribus minus autem quos.
                  </p>
                </blockquote>

                <p>
                  Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore
                  tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil
                  magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil
                  quaerat.
                  Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti
                  velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque.
                  Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto
                  voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.
                </p>

                <h3>Et quae iure vel ut odit alias.</h3>
                <p>
                  Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut
                  rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui.
                  Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est
                  libero eum nesciunt aliquid qui.
                  Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia
                  aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima.
                  Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam
                  rerum dolores sint consequatur quidem ea.
                  Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem.
                  Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.
                </p>
                <img :src="allImage.insidepost" class="img-fluid" alt="">

                <h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3>
                <p>
                  Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In
                  assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro
                  autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore.
                  Autem facilis hic dolorum dolores vel.
                  Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis
                  quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam
                  ut illum ut a quam vitae.
                </p>
                <p>
                  Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas
                  incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.
                </p>

              </div><!-- End post content -->



            </article>

          </div>
        </section><!-- /Blog Details Section -->

        <!-- Blog Comments Section -->
        <section id="blog-comments" class="blog-comments section">

          <div class="container">

            <h4 class="comments-count">8 Comments</h4>

            <div id="comment-1" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                <div>
                  <h5><a href="">Georgia Reader</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
                  </h5>
                  <time datetime="2020-01-01">01 Jan,2022</time>
                  <p>
                    Et rerum totam nisi. Molestiae vel quam dolorum vel voluptatem et et. Est ad aut
                    sapiente quis molestiae est qui cum soluta.
                    Vero aut rerum vel. Rerum quos laboriosam placeat ex qui. Sint qui facilis et.
                  </p>
                </div>
              </div>
            </div><!-- End comment #1 -->

            <div id="comment-2" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                <div>
                  <h5><a href="">Aron Alvarado</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
                  </h5>
                  <time datetime="2020-01-01">01 Jan,2022</time>
                  <p>
                    Ipsam tempora sequi voluptatem quis sapiente non. Autem itaque eveniet saepe.
                    Officiis illo ut beatae.
                  </p>
                </div>
              </div>

              <div id="comment-reply-1" class="comment comment-reply">
                <div class="d-flex">
                  <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                  <div>
                    <h5><a href="">Lynda Small</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
                    </h5>
                    <time datetime="2020-01-01">01 Jan,2022</time>
                    <p>
                      Enim ipsa eum fugiat fuga repellat. Commodi quo quo dicta. Est ullam
                      aspernatur ut vitae quia mollitia id non. Qui ad quas nostrum rerum sed
                      necessitatibus aut est. Eum officiis sed repellat maxime vero nisi natus.
                      Amet nesciunt nesciunt qui illum omnis est et dolor recusandae.

                      Recusandae sit ad aut impedit et. Ipsa labore dolor impedit et natus in
                      porro aut. Magnam qui cum. Illo similique occaecati nihil modi eligendi.
                      Pariatur distinctio labore omnis incidunt et illum. Expedita et dignissimos
                      distinctio laborum minima fugiat.

                      Libero corporis qui. Nam illo odio beatae enim ducimus. Harum reiciendis
                      error dolorum non autem quisquam vero rerum neque.
                    </p>
                  </div>
                </div>

                <div id="comment-reply-2" class="comment comment-reply">
                  <div class="d-flex">
                    <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                    <div>
                      <h5><a href="">Sianna Ramsay</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i>
                          Reply</a></h5>
                      <time datetime="2020-01-01">01 Jan,2022</time>
                      <p>
                        Et dignissimos impedit nulla et quo distinctio ex nemo. Omnis quia
                        dolores cupiditate et. Ut unde qui eligendi sapiente omnis ullam.
                        Placeat porro est commodi est officiis voluptas repellat quisquam
                        possimus. Perferendis id consectetur necessitatibus.
                      </p>
                    </div>
                  </div>

                </div><!-- End comment reply #2-->

              </div><!-- End comment reply #1-->

            </div><!-- End comment #2-->

            <div id="comment-3" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                <div>
                  <h5><a href="">Nolan Davidson</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
                  </h5>
                  <time datetime="2020-01-01">01 Jan,2022</time>
                  <p>
                    Distinctio nesciunt rerum reprehenderit sed. Iste omnis eius repellendus quia
                    nihil ut accusantium tempore. Nesciunt expedita id dolor exercitationem
                    aspernatur aut quam ut. Voluptatem est accusamus iste at.
                    Non aut et et esse qui sit modi neque. Exercitationem et eos aspernatur. Ea est
                    consequuntur officia beatae ea aut eos soluta. Non qui dolorum voluptatibus et
                    optio veniam. Quam officia sit nostrum dolorem.
                  </p>
                </div>
              </div>

            </div><!-- End comment #3 -->

            <div id="comment-4" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img :src="allImage.commentimage" alt=""></div>
                <div>
                  <h5><a href="">Kay Duggan</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
                  </h5>
                  <time datetime="2020-01-01">01 Jan,2022</time>
                  <p>
                    Dolorem atque aut. Omnis doloremque blanditiis quia eum porro quis ut velit
                    tempore. Cumque sed quia ut maxime. Est ad aut cum. Ut exercitationem non in
                    fugiat.
                  </p>
                </div>
              </div>

            </div><!-- End comment #4 -->

          </div>

        </section><!-- /Blog Comments Section -->

        <!-- Comment Form Section -->
        <section id="comment-form" class="comment-form section">
          <div class="container">

            <form action="">

              <h4>Post Comment</h4>
              <p>Your email address will not be published. Required fields are marked * </p>
              <div class="row">
                <div class="col-md-6 form-group">
                  <input name="name" type="text" class="form-control" placeholder="Your Name*">
                </div>
                <div class="col-md-6 form-group">
                  <input name="email" type="text" class="form-control" placeholder="Your Email*">
                </div>
              </div>
              <div class="row">
                <div class="col form-group">
                  <input name="website" type="text" class="form-control" placeholder="Your Website">
                </div>
              </div>
              <div class="row">
                <div class="col form-group">
                  <textarea name="comment" class="form-control" placeholder="Your Comment*"></textarea>
                </div>
              </div>

              <div class="text-center">
                <button type="submit" class="btn btn-primary">Post Comment</button>
              </div>

            </form>

          </div>
        </section><!-- /Comment Form Section -->

      </div>

      <div class="col-lg-4 sidebar">

        <div class="widgets-container">

          <!-- Blog Author Widget -->
          <div class="blog-author-widget widget-item">

            <div class="d-flex flex-column align-items-center">
              <div class="d-flex align-items-center w-100">
                <img :src="allImage.commentimage" class="rounded-circle flex-shrink-0" alt="">
                <div>
                  <h4>Jane Smith</h4>
                  <div class="social-links">
                    <a href="https://x.com/#"><i class="bi bi-twitter-x"></i></a>
                    <a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a>
                    <a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
                    <a href="https://instagram.com/#"><i class="biu bi-linkedin"></i></a>
                  </div>
                </div>
              </div>

              <p>
                Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium.
                Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium
                ut unde voluptas.
              </p>

            </div>

          </div><!--/Blog Author Widget -->

          <!-- Search Widget -->
          <div class="search-widget widget-item">

            <h3 class="widget-title">Search</h3>
            <form action="">
              <input type="text">
              <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>

          </div><!--/Search Widget -->

          <!-- Recent Posts Widget -->
          <div class="recent-posts-widget widget-item">

            <h3 class="widget-title">Recent Posts</h3>

            <div class="post-item">
              <img :src="allImage.recent" alt="" class="flex-shrink-0">
              <div>
                <h4><a href="blog-details.html">Nihil blanditiis at in nihil autem</a></h4>
                <time datetime="2020-01-01">Jan 1, 2020</time>
              </div>
            </div><!-- End recent post item-->

            <div class="post-item">
              <img :src="allImage.recent" alt="" class="flex-shrink-0">
              <div>
                <h4><a href="blog-details.html">Quidem autem et impedit</a></h4>
                <time datetime="2020-01-01">Jan 1, 2020</time>
              </div>
            </div><!-- End recent post item-->

            <div class="post-item">
              <img :src="allImage.recent" alt="" class="flex-shrink-0">
              <div>
                <h4><a href="blog-details.html">Id quia et et ut maxime similique occaecati ut</a></h4>
                <time datetime="2020-01-01">Jan 1, 2020</time>
              </div>
            </div><!-- End recent post item-->

            <div class="post-item">
              <img :src="allImage.recent" alt="" class="flex-shrink-0">
              <div>
                <h4><a href="blog-details.html">Laborum corporis quo dara net para</a></h4>
                <time datetime="2020-01-01">Jan 1, 2020</time>
              </div>
            </div><!-- End recent post item-->

            <div class="post-item">
              <img :src="allImage.recent" alt="" class="flex-shrink-0">
              <div>
                <h4><a href="blog-details.html">Et dolores corrupti quae illo quod dolor</a></h4>
                <time datetime="2020-01-01">Jan 1, 2020</time>
              </div>
            </div><!-- End recent post item-->

          </div><!--/Recent Posts Widget -->

          <!-- Tags Widget -->
          <div class="tags-widget widget-item">

            <h3 class="widget-title">Tags</h3>
            <ul>
              <li><a href="#">App</a></li>
              <li><a href="#">IT</a></li>
              <li><a href="#">Business</a></li>
              <li><a href="#">Mac</a></li>
              <li><a href="#">Design</a></li>
              <li><a href="#">Office</a></li>
              <li><a href="#">Creative</a></li>
              <li><a href="#">Studio</a></li>
              <li><a href="#">Smart</a></li>
              <li><a href="#">Tips</a></li>
              <li><a href="#">Marketing</a></li>
            </ul>

          </div><!--/Tags Widget -->

        </div>

      </div>

    </div>
  </div>
</template>


<style scoped>
/* Main Blog Styles */
.blog-details {
  padding: 60px 0;
}

.article {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  padding: 30px;
}

.post-img {
  margin: -30px -30px 20px -30px;
}

.post-img img {
  width: 100%;
  border-radius: 8px 8px 0 0;
  object-fit: cover;
  max-height: 500px;
}

.article .title {
  font-size: 28px;
  font-weight: 700;
  color: #2c4964;
  margin-bottom: 20px;
}

.meta-top {
  margin-bottom: 20px;
}

.meta-top ul {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  padding: 0;
  margin: 0;
  gap: 20px;
}

.meta-top i {
  color: #4154f1;
  margin-right: 8px;
}

.meta-top a {
  color: #777;
  text-decoration: none;
  transition: 0.3s;
}

.meta-top a:hover {
  color: #4154f1;
}

/* Content Styling */
.content {
  margin-bottom: 30px;
  line-height: 1.6;
}

.content p {
  margin-bottom: 20px;
  color: #444;
}

.content blockquote {
  padding: 20px;
  background-color: #f6f9ff;
  border-left: 4px solid #4154f1;
  margin: 30px 0;
  font-style: italic;
}

/* Comments Section */
/* Comments Section Container */
.blog-comments {
  padding: 4rem 1rem;
  max-width: 1200px;
  margin: 0 auto;
}

/* Comments Count */
.comments-count {
  font-size: 1.5rem;
  font-weight: 600;
  color: #1f2937;
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #e5e7eb;
}

/* Individual Comment */
.comment {
  background-color: #ffffff;
  border-radius: 0.5rem;
  padding: 1.5rem;
  margin-bottom: 1.5rem;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s ease;
}

.comment:hover {
  transform: translateY(-2px);
}

/* Comment Layout */
.comment .d-flex {
  display: flex;
  gap: 1rem;
}

/* Comment Image */
.comment-img img {
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  object-fit: cover;
}

/* Comment Content */
.comment h5 {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.comment h5 a {
  color: #1f2937;
  text-decoration: none;
  font-weight: 600;
}

/* Reply Button */
.reply {
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
  font-size: 0.875rem;
  color: #3b82f6;
  transition: color 0.2s ease;
}

.reply:hover {
  color: #2563eb;
}

.reply i {
  font-size: 0.75rem;
}

/* Comment Time */
.comment time {
  display: block;
  font-size: 0.875rem;
  color: #6b7280;
  margin-bottom: 0.75rem;
}

/* Comment Text */
.comment p {
  color: #4b5563;
  line-height: 1.6;
  margin: 0;
}

/* Nested Comments */
.comment-reply {
  margin-left: 2rem;
  margin-top: 1.5rem;
  border-left: 2px solid #e5e7eb;
  padding-left: 1.5rem;
}

/* Responsive Design */
@media (max-width: 768px) {
  .blog-comments {
    padding: 2rem 1rem;
  }

  .comment .d-flex {
    flex-direction: column;
  }

  .comment-img img {
    width: 2.5rem;
    height: 2.5rem;
  }

  .comment-reply {
    margin-left: 1rem;
    padding-left: 1rem;
  }

  .comment h5 {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
}

/* Dark Mode Support */
@media (prefers-color-scheme: dark) {
  .blog-comments {
    background-color: #1f2937;
  }

  .comment {
    background-color: #374151;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  }

  .comments-count {
    color: #f3f4f6;
    border-bottom-color: #4b5563;
  }

  .comment h5 a {
    color: #f3f4f6;
  }

  .comment p {
    color: #d1d5db;
  }

  .comment time {
    color: #9ca3af;
  }

  .comment-reply {
    border-left-color: #4b5563;
  }
}


/* Comment Form */
.comment-form {
  padding: 30px;
  margin-top: 30px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}

.form-group {
  margin-bottom: 20px;
}

.form-control {
  padding: 12px;
  border: 1px solid #ddd;
  border-radius: 4px;
  width: 100%;
}

textarea.form-control {
  min-height: 120px;
}

/* Sidebar Styles */
.sidebar {
  padding-left: 20px;
}

.widget-item {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  padding: 30px;
  margin-bottom: 30px;
  background: #fff;
}

.widget-title {
  font-size: 20px;
  font-weight: 700;
  padding-bottom: 10px;
  border-bottom: 1px solid #e2e8f0;
  margin-bottom: 20px;
  color: #2c4964;
}

/* Author Widget */
.blog-author-widget img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-right: 20px;
}

.social-links {
  margin-top: 10px;
}

.social-links a {
  margin-right: 10px;
  color: #777;
  transition: 0.3s;
}

.social-links a:hover {
  color: #4154f1;
}

/* Search Widget */
.search-widget form {
  position: relative;
}

.search-widget input {
  width: 100%;
  padding: 12px 50px 12px 15px;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.search-widget button {
  position: absolute;
  right: 0;
  top: 0;
  height: 100%;
  width: 45px;
  border: none;
  background: #4154f1;
  color: #fff;
  border-radius: 0 4px 4px 0;
  cursor: pointer;
  transition: 0.3s;
}

.search-widget button:hover {
  background: #2c4964;
}

/* Recent Posts Widget */
.post-item {
  display: flex;
  align-items: flex-start;
  margin-bottom: 15px;
  padding-bottom: 15px;
  border-bottom: 1px solid #e2e8f0;
}

.post-item img {
  width: 80px;
  height: 60px;
  object-fit: cover;
  border-radius: 4px;
  margin-right: 15px;
}

.post-item h4 {
  font-size: 15px;
  margin-bottom: 5px;
}

.post-item time {
  font-size: 14px;
  color: #777;
}

/* Tags Widget */
.tags-widget ul {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  list-style: none;
  padding: 0;
}

.tags-widget a {
  display: inline-block;
  padding: 6px 12px;
  background: #f6f9ff;
  color: #4154f1;
  font-size: 14px;
  border-radius: 4px;
  text-decoration: none;
  transition: 0.3s;
}

.tags-widget a:hover {
  background: #4154f1;
  color: #fff;
}

/* Responsive Design */
@media (max-width: 1199px) {
  .sidebar {
    padding-left: 0;
    margin-top: 40px;
  }
}

@media (max-width: 768px) {
  .article .title {
    font-size: 24px;
  }

  .meta-top ul {
    gap: 10px;
  }

  .blog-author-widget {
    text-align: center;
  }

  .blog-author-widget img {
    margin-right: 0;
    margin-bottom: 15px;
  }
}

@media (max-width: 576px) {
  .article {
    padding: 20px;
  }

  .post-img {
    margin: -20px -20px 15px -20px;
  }

  .meta-top ul {
    flex-direction: column;
    gap: 5px;
  }

}
</style>
