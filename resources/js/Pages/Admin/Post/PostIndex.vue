<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue';


const props = defineProps({
    posts: {
        type: Array,
        required: true
    }
})

const page = usePage();
const PostdelForm = useForm({});
const DeleteCategory = (id) => {
    if (confirm('Are you sure you want to delete this post?')) {
        PostdelForm.delete(`/admin/post/${id}`, {
            preserveScroll: true,
        })
    }

}

const successMessage = computed(() => page.props.flash?.success || '')

</script>

<template>

    <Head>
        <title> | Admin Posts</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light text-center rounded p-4">
            <div v-if="successMessage" class="alert alert-success mt-3 mb-3">
                {{ successMessage }}
            </div>

            <div class="d-flex align-items-center justify-content-between mb-4">
                <h6 class="mb-0">All Posts</h6>
                <Link href="/admin/post/create" class="btn btn-outline-primary btn-sm">Add New</Link>
            </div>
            <div class="table-responsive">
                <table class="table text-start align-middle table-bordered table-hover mb-0">
                    <thead>
                        <tr class="text-dark">
                            <th>#</th>
                            <th scope="col">Tilte</th>
                            <th scope="col">Category</th>
                            <th scope="col">Tags</th>
                            <th scope="col">Image</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(post, index) in posts" :key="post.id">
                            <td>{{ index + 1 }}</td>
                            <td>{{ post.title.length > 15 ? post.title.slice(0, 15) + '..' : post.title }}</td>
                            <td>{{ post.category ? post.category.name : 'No Category' }}</td>
                            <td>
                                <span v-if="post.tags && post.tags.length > 0">
                                    <span v-for="(tag, tagIndex) in post.tags" :key="tagIndex"
                                        class="badge bg-secondary me-1">
                                        {{ tag.name }}
                                    </span>
                                </span>
                                <span v-else>No Tags</span>
                            </td>
                            <td>
                                <img :src="'/' + post.image" alt="" height="70" width="70" class="rounded-circle">
                            </td>
                            <td>
                                <Link class="btn btn-sm btn-primary me-2" :href="`/admin/post/${post.id}/edit`">Edit
                                </Link>
                                <Link class="btn btn-sm btn-danger" @click.prevent="DeleteCategory(post.id)">Delete
                                </Link>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>
