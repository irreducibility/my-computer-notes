Interactive Novel/Story Writer
==============================

Twine by twinery.org is the best tool I've came across. The web version is
merely 2MB in download size. It's a free software. Get a copy from [^0].

Story Format : Snowman (because it has native javascript syntax)

## Choose Story Format
Story formats are basic twine templates to work on. Each Story Format has slightly
different syntax. "Snowman" uses javascript syntax.

To choose a Story format goto Menu -> Story -> Details -> Story Format


## Passage
To link to passages add [[passageNext]] in current passage.

## Add Javascript Code
Put javascript code inside `<% %>`.

### Global Variable
To set global variable, use 'window.setup'[^1] or 'window.story.state'(easier)[^2].


## Further Reading

- https://twinery.org/reference/en/#what-is-twine-good-at
- https://twinery.org/forum/discussion/5911/exporting-and-loading-save-files-in-snowman-1-3
- https://stackoverflow.com/questions/13335967/export-data-in-localstorage-for-later-re-import
- https://twinery.org/forum/discussion/3141/adding-an-undo-button-to-snowman-1-0-2
- https://mcdemarco.net/tools/scree/paloma/format.js a better story format, with native js
- https://twinelab.net/twine-resources/#/?id=paloma-story-format more story formats
 
[^0]:https://github.com/klembot/twinejs
[^1]:https://twinery.org/cookbook/terms/terms_javascript.html
[^2]:https://videlais.github.io/snowman/#/2/window_story/properties/name

