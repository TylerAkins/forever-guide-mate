# Forever GuideMate

Forever GuideMate targets World of Warcraft: Forever. This repository currently contains only the initial addon scaffold; functionality and product design will be defined later.

## Development

Run the project-contract tests:

```sh
python3 -m unittest discover -s tests
```

Compile the addon:

```sh
python3 tools/compile_addon.py
```

The compiled addon appears at `.compiled/ForeverGuideMate`. Copy that `ForeverGuideMate` folder into your World of Warcraft AddOns directory to install it manually.

## License

Licensed under [GPL-3.0-or-later](LICENSE).
