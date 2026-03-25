# Choice/Life Adoption Plan: discover

## Summary

- **Error type**: `DiscoverError` defined in lattice.nim -- move to `browse.nim`
- **Files to modify**: 3 + re-export module
- **Result sites**: 7
- **Life**: Not applicable

## Steps

1. Delete `src/discover/lattice.nim`
2. Move `DiscoverError* = object of CatchableError` to `src/discover/browse.nim`
3. Add `requires "basis >= 0.1.0"` to nimble
4. In every file importing lattice:
   - Replace `import.*lattice` with `import basis/code/choice`
   - Replace `Result[T, E].good(v)` with `good(v)`
   - Replace `Result[T, E].bad(e[])` with `bad[T]("discover", e.msg)`
   - Replace `Result[T, E].bad(DiscoverError(msg: "x"))` with `bad[T]("discover", "x")`
   - Replace return type `Result[T, DiscoverError]` with `Choice[T]`
5. Update re-export: `export lattice` -> `export choice`
6. Update tests
