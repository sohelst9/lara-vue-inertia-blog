<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue';

defineOptions({
    layout: null
});

const loginForm = useForm({
    email: '',
    password: '',
    remember: false,
})

const page = usePage();

const loginSubmit = () => {
    if (!loginForm.remember) {
        loginForm.errors.remember = 'Please check "Remember me" before login.';
        return;
    }
    loginForm.post('/admin/login', {
        onFinish: () => loginForm.reset('password')
    })
}

const errorMessage = computed(() => page.props.flash?.error || '')
const successMessage = computed(() => page.props.flash?.success || '')

</script>

<template>

    <Head>
        <title> | Admin Login</title>
    </Head>
    <div class="login-container">
        <div class="login-card">
            <!-- Header -->
            <div class="login-header">
                <h3>World Blog</h3>
                <p>Please sign in to continue</p>
            </div>

            <div v-if="errorMessage" class="alert alert-danger">
                {{ errorMessage }}
            </div>
            <div v-if="successMessage" class="alert alert-success mt-3">
                {{ successMessage }}
            </div>

            <!-- Form -->
            <form class="login-form" @submit.prevent="loginSubmit">
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" id="email" v-model="loginForm.email" placeholder="Enter your email">
                    <div class="mt-2 text-danger" v-if="loginForm.errors.email">{{ loginForm.errors.email }}</div>

                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" v-model="loginForm.password" placeholder="Enter your password">
                    <div class="mt-2 text-danger" v-if="loginForm.errors.password">{{ loginForm.errors.password }}</div>
                </div>

                <div class="form-options">
                    <label class="remember-me">
                        <input type="checkbox" v-model="loginForm.remember">
                        <span>Remember me</span>
                    </label>
                    <a href="#" class="forgot-password">Forgot password?</a>
                    
                </div>
                <div class="text-danger mb-3" v-if="loginForm.errors.remember">{{ loginForm.errors.remember }}</div>
                

                <button type="submit" :disabled="loginForm.processing">Sign in</button>
            </form>
        </div>
    </div>
</template>

<style scoped>
.alert-danger {
    margin-top: 5px;
    background: #f8d7da;
    color: #721c24;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #f5c6cb;
    border-radius: 5px;
    text-align: center;
}

.login-container {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    /* background: linear-gradient(135deg, #f5f7fa 0%, #e4e9f2 100%); */
    padding: 1rem;
}

.login-card {
    width: 100%;
    max-width: 420px;
    background: white;
    border-radius: 16px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

.login-header {
    background: linear-gradient(135deg, #4f46e5 0%, #3b82f6 100%);
    color: white;
    padding: 2rem;
    text-align: center;
}

.login-header h3 {
    margin: 0;
    font-size: 1.5rem;
    font-weight: 600;
}

.login-header p {
    margin: 0.5rem 0 0;
    opacity: 0.9;
    font-size: 0.875rem;
}

.login-form {
    padding: 2rem;
}

.form-group {
    margin-bottom: 1.5rem;
}

.form-group label {
    display: block;
    margin-bottom: 0.5rem;
    font-size: 0.875rem;
    color: #374151;
    font-weight: 500;
}

.form-group input {
    width: 100%;
    padding: 0.75rem 1rem;
    border: 1px solid #e5e7eb;
    border-radius: 8px;
    outline: none;
    transition: all 0.3s ease;
}

.form-group input:focus {
    border-color: #4f46e5;
    box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
}

.form-options {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 1.5rem;
}

.remember-me {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.875rem;
    color: #4b5563;
}

.forgot-password {
    font-size: 0.875rem;
    color: #4f46e5;
    text-decoration: none;
    transition: color 0.3s ease;
}

.forgot-password:hover {
    color: #4338ca;
}

button {
    width: 100%;
    padding: 0.75rem;
    background: #4f46e5;
    color: white;
    border: none;
    border-radius: 8px;
    font-weight: 500;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background: #4338ca;
}

.signup-link {
    margin-top: 1.5rem;
    text-align: center;
    font-size: 0.875rem;
    color: #4b5563;
}

.signup-link a {
    color: #4f46e5;
    text-decoration: none;
    font-weight: 500;
}

.signup-link a:hover {
    color: #4338ca;
}

@media (max-width: 480px) {
    .login-card {
        margin: 1rem;
    }

    .login-form {
        padding: 1.5rem;
    }
}
</style>