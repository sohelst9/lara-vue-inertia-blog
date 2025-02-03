import { createApp, h } from "vue";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.js";
import "bootstrap-icons/font/bootstrap-icons.css";
import { createInertiaApp, Head, Link } from "@inertiajs/vue3";
import Layout from "./Layouts/layout.vue";
import DashboardLayout from "./Layouts/DashboardLayout.vue";

createInertiaApp({
    title: (title) => `Hello WorldBlog ${title}`,
    resolve: (name) => {
        const pages = import.meta.glob("./Pages/**/*.vue", { eager: true });
        let page = pages[`./Pages/${name}.vue`];

        // যদি login page হয়, তাহলে layout null করে দাও
        if (name === "Auth/Login") {
            page.default.layout = null;
        } else if (name.startsWith("Admin/")) {
            page.default.layout = page.default.layout || DashboardLayout;
        } else {
            page.default.layout = page.default.layout || Layout;
        }
        return page;
    },
    setup({ el, App, props, plugin }) {
        createApp({ render: () => h(App, props) })
            .use(plugin)
            .component("Link", Link)
            .component("Head", Head)
            .mount(el);
    },
});
