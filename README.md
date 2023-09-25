# `tagref` GitHub action

This action runs [`tagref`](https://github.com/stepchowfun/tagref) to check
that all defined tags are referenced at least once and that all references are
valid.

It is the same as running:

```sh
tagref check && tagref list-unused --fail-if-any
```

## Example usage

You can use this action as one of your CI steps like this:

```yaml
- name: "check tags are correct"
  uses: giacomocavalieri/tagref_action@v1
```
