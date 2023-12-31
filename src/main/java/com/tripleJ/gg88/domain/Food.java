package com.tripleJ.gg88.domain;

import java.sql.Timestamp;

public class Food {
    private int foodId;
    private String title;
    private String blogName;
    private String job;
    private String simpleContent;
    private Timestamp date;
    private String url;
    private String thumbnail;

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBlogName() {
        return blogName;
    }

    public void setBlogName(String blogName) {
        this.blogName = blogName;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getSimpleContent() {
        return simpleContent;
    }

    public void setSimpleContent(String simpleContent) {
        this.simpleContent = simpleContent;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public static class Builder {
        private int foodId;
        private String title;
        private String blogName;
        private String job; 
        private String simpleContent;
        private Timestamp date;
        private String url;
        private String thumbnail;

        public Builder foodId(int foodId) {
            this.foodId = foodId;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder blogName(String blogName) {
            this.blogName = blogName;
            return this;
        }

        public Builder job(String job) {
            this.job = job;
            return this;
        }

        public Builder simpleContent(String simpleContent) {
            this.simpleContent = simpleContent;
            return this;
        }

        public Builder date(Timestamp date) {
            this.date = date;
            return this;
        }

        public Builder url(String url) {
            this.url = url;
            return this;
        }

        public Builder thumbnail(String thumbnail) {
            this.thumbnail = thumbnail;
            return this;
        }

        public Food build() {
            Food food = new Food();
            food.setFoodId(this.foodId);
            food.setTitle(this.title);
            food.setBlogName(this.blogName);
            food.setJob(this.job);
            food.setSimpleContent(this.simpleContent);
            food.setDate(this.date);
            food.setUrl(this.url);
            food.setThumbnail(this.thumbnail);
            return food;
        }
    }
}
