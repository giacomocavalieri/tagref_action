# `tagref` GitHub action

This action runs [`tagref`](https://github.com/stepchowfun/tagref) to check
that all defined tags are referenced at least once and that all references are
valid.

It is the same as running:

```sh
tagref check
tagref list-unused --fail-if-any
```

## Example usage

```yaml
- name: "check tags are correct"
  uses: giacomocavalieri/tagref_action@v1
```
