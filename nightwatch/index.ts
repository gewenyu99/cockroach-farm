import { serve } from "bun";

const profilePageList = [
    `
    <html>
        <head>
            <title>Profile Page 1</title>
        </head>
        <body>
            <h1>John Doe</h1>
            <p>Software Engineer at Tech Company</p>
            <p>John is a seasoned software engineer with over 10 years of experience in the tech industry. He specializes in full-stack development and has a passion for creating efficient and scalable web applications.</p>
            <p>In his free time, John enjoys hiking, photography, and contributing to open-source projects.</p>
        </body>
    </html>
    `,
    `
    <html>
        <head>
            <title>Profile Page 2</title>
        </head>
        <body>
            <h1>Jane Smith</h1>
            <p>Product Manager at Innovative Solutions</p>
            <p>Jane is a dedicated product manager with a knack for understanding customer needs and translating them into successful products. She has a background in UX design and a strong focus on user-centered design principles.</p>
            <p>Outside of work, Jane loves painting, traveling, and exploring new cuisines.</p>
        </body>
    </html>
    `,
    `
    <html>
        <head>
            <title>Profile Page 3</title>
        </head>
        <body>
            <h1>Michael Johnson</h1>
            <p>Data Scientist at Analytics Corp</p>
            <p>Michael is a data scientist with expertise in machine learning and data analysis. He enjoys uncovering insights from data and building predictive models to solve complex problems.</p>
            <p>Michael is an avid reader, enjoys playing chess, and is always up for a good puzzle.</p>
        </body>
    </html>
    `
];

function getRandomElement<T>(arr: T[]): T {
    return arr[Math.floor(Math.random() * arr.length)];
}

const profilePage = getRandomElement(profilePageList);
const headers = { "Content-Type": "text/html" };

serve({
    port: 3000,
    fetch(req) {
        return new Response(profilePage, {
            headers: headers,
        });
    },
});

console.log("Server running on http://localhost:3000");