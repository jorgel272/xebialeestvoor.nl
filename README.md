# Xebia leest voor

Video list: https://www.youtube.com/@jorgeliauw2809/featured

Run the hugo site locally:

```shell
hugo server -D
```

## Images

Resize the featured image to a smaller size. We do this to make sure all images have the same dimensions:

```shell
find content/videos -name "featured" -exec ./generate-banner.sh {} \;
```
