const faker = require("faker");

const Utils = {
    randomCommentsGenerator: (count) => Array.from({ length: count }, () => ({
        "user": {
            "profilePicUri": faker.internet.avatar(),
            "username": faker.internet.userName()
        },
        "comment": faker.random.words(),
        "likesCount": faker.random.number(),
        "postedTime": faker.date.recent(),
        "isLiked": faker.random.boolean()

    })),
    socialPostsGenerator: () => {
        const commentsCount = Math.random() * 10;
        return {
            "user": {
                "profilePicUri": faker.internet.avatar(),
                "username": faker.internet.userName()
            },
            "isBookmarked": faker.random.boolean(),
            "isLiked": faker.random.boolean(),
            "likesCount": faker.random.number(),
            "caption": faker.random.words(),
            commentsCount,
            "comments": Utils.randomCommentsGenerator(commentsCount),
            "postedTime": faker.date.past(),
            "postImage": faker.image.image()
        };
    }
};


module.exports = (req, res) => {
    res.json({
        body: Array.from({ length: 30 }, () => Utils.socialPostsGenerator()),
        query: req.query,
        cookies: req.cookies
    })
}