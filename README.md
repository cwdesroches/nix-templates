# nix-templates: 'pop' 💥
> Mmmmm flake templates.. 🥣

## Usage

As simple as:
```
nix flake init -t github:cwdesroches/nix-templates#solidity
```

### Optional: Add repo to nix registry

If you'd like to create a shortname for the template repository (ex: pop):
```
nix registry add pop github:cwdesroches/nix-templates
```
And now, use your templates:
```
nix flake init -t pop#solidity
```
