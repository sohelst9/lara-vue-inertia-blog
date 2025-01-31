<script setup>

defineProps({

})

</script>

<template>

    <Head>
        <title> | Contact</title>
        <meta head-key="title" name="title" content="Contact page meta title">
        <meta head-key="description" name="description" content="Contact page meta description">
    </Head>
    <div>
        <div class="page-title">
            <div class="container">
                <h1>Contact</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><Link href="/">Home</Link></li>
                        <li class="current">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>

        <section class="contact">
            <div class="container">
                <!-- Map Section -->
                <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.5830966166823!2d90.4169728119692!3d23.868933578500375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5d02d5f0d2b%3A0x997b9fb65aececc!2sAkbar%20Tower!5e0!3m2!1sen!2sbd!4v1738209005422!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="contact-content">
                    <!-- Info Section -->
                    <div class="info-column">
                        <div class="info-item">
                            <i class="bi bi-geo-alt"></i>
                            <div class="info-details">
                                <h3>Address</h3>
                                <p>VC99+HRF, utterkhan, Shah Kabir Mazar Rd, Dhaka 1230</p>
                            </div>
                        </div>

                        <div class="info-item">
                            <i class="bi bi-telephone"></i>
                            <div class="info-details">
                                <h3>Call Us</h3>
                                <p>01785458654</p>
                            </div>
                        </div>

                        <div class="info-item">
                            <i class="bi bi-envelope"></i>
                            <div class="info-details">
                                <h3>Email Us</h3>
                                <p>helloblog@gmail.com</p>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Form -->
                    <div class="form-column">
                        <form class="contact-form">
                            <div class="form-row">
                                <div class="form-group">
                                    <input type="text" placeholder="Your Name" class="form-control" required />
                                </div>
                                <div class="form-group">
                                    <input type="email" placeholder="Your Email" class="form-control" required />
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="text" placeholder="Subject" class="form-control" required />
                            </div>

                            <div class="form-group">
                                <textarea placeholder="Message" class="form-control" rows="6" required></textarea>
                            </div>

                            <div class="form-submit">
                                <div class="status-messages">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="success-message">Your message has been sent. Thank you!</div>
                                </div>
                                <button type="submit" class="submit-btn">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>

<style scoped>

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1.5rem;
}

.contact {
    padding: 1rem 0;
}

.map-container {
    margin-bottom: 3rem;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
}

.map-container iframe {
    width: 100%;
    height: 400px;
    border: 0;
}

.contact-content {
    display: grid;
    grid-template-columns: 1fr 2fr;
    gap: 2rem;
}

@media (max-width: 992px) {
    .contact-content {
        grid-template-columns: 1fr;
    }
}

.info-item {
    background: white;
    padding: 1.5rem;
    border-radius: 10px;
    margin-bottom: 1.5rem;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: flex-start;
    gap: 1rem;
    transition: transform 0.3s ease;
}

.info-item:hover {
    transform: translateY(-5px);
}

.info-item i {
    font-size: 1.5rem;
    color: #2b4eff;
}

.info-details h3 {
    margin: 0 0 0.5rem 0;
    font-size: 1.1rem;
    color: #333;
}

.info-details p {
    margin: 0;
    color: #666;
}

.contact-form {
    background: white;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 3px 15px rgba(0, 0, 0, 0.05);
}

.form-row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1rem;
}

@media (max-width: 768px) {
    .form-row {
        grid-template-columns: 1fr;
    }
}

.form-group {
    margin-bottom: 1.5rem;
}

.form-control {
    width: 100%;
    padding: 0.8rem 1rem;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 1rem;
    transition: all 0.3s ease;
}

.form-control:focus {
    outline: none;
    border-color: #2b4eff;
    box-shadow: 0 0 0 3px rgba(43, 78, 255, 0.1);
}

textarea.form-control {
    resize: vertical;
}

.form-submit {
    text-align: center;
}

.status-messages {
    margin-bottom: 1rem;
}

.loading,
.error-message,
.success-message {
    display: none;
    padding: 0.75rem;
    border-radius: 6px;
    margin-bottom: 1rem;
}

.loading {
    background: #f8f9fa;
}

.error-message {
    background: #ffebee;
    color: #d32f2f;
}

.success-message {
    background: #e8f5e9;
    color: #2e7d32;
}

.submit-btn {
    background: #2b4eff;
    color: white;
    padding: 1rem 2rem;
    border: none;
    border-radius: 8px;
    font-size: 1rem;
    cursor: pointer;
    transition: all 0.3s ease;
    width: auto;
    min-width: 200px;
}

.submit-btn:hover {
    background: #1a3acc;
    transform: translateY(-2px);
}

h1 {
    font-size: 2.5rem;
    color: #222;
    margin: 0;
}
</style>