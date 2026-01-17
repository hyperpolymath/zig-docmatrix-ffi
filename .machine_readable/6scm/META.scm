; SPDX-License-Identifier: AGPL-3.0-or-later
;; META.scm - Meta-level information for zig-formatrix-ffi

(meta
  (architecture-decisions
    (adr-001
      (status accepted)
      (date "2026-01-03")
      (context "Need to expose formatrix-core to languages other than Rust")
      (decision "Create Zig FFI bindings instead of C header-based approach")
      (consequences
        "Type-safe API with Zig error handling"
        "Memory-safe document handles"
        "Requires Zig 0.13+ for build system features"
        "Can be used from any language that can link to Zig libraries"))

    (adr-002
      (status accepted)
      (date "2026-01-03")
      (context "How to manage document memory across FFI boundary")
      (decision "Use opaque handles with explicit deinit() calls")
      (consequences
        "Users must call deinit() to free documents"
        "Clear ownership semantics"
        "No reference counting overhead")))

  (development-practices
    (code-style "Zig standard style (zig fmt)")
    (security "Explicit null checks on all FFI pointers")
    (testing "Unit tests for format enum methods, integration tests for FFI")
    (versioning "Semantic versioning matching formatrix-core")
    (documentation "Doc comments on all public symbols")
    (branching "main = stable, dev = development"))

  (design-rationale
    (why-zig "Zig provides better FFI ergonomics than raw C headers with safety")
    (why-opaque-handles "Prevents memory corruption from direct struct access")
    (why-explicit-allocator "Follows Zig idioms, allows caller control of memory")))
