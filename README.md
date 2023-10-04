# `tagref` GitHub action

This action runs [`tagref`](https://github.com/stepchowfun/tagref) to check
that all defined tags are referenced at least once and that all references are
valid.

It is the same as running:

```sh
tagref check && tagref list-unused --fail-if-any
```

## Inputs

- `unused_tags`: can be used to change the action's behaviour with regard to unused tags
  - `"forbid"` (the default): will make the CI fail if there's any note that's not referenced anywhere
  - `"allow"`: will allow tags that have no references

## Example usage

You can use this action as one of your CI steps like this:

```yaml
- name: "check tags are correct"
  uses: giacomocavalieri/tagref_action@v1
```
