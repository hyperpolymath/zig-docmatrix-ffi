; SPDX-License-Identifier: AGPL-3.0-or-later
;; STATE.scm - Project state tracking for zig-formatrix-ffi

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0.0")
    (created "2026-01-03")
    (updated "2026-01-03")
    (project "zig-formatrix-ffi")
    (repo "hyperpolymath/zig-formatrix-ffi"))

  (project-context
    (name "zig-formatrix-ffi")
    (tagline "Zig FFI bindings for formatrix-core document conversion")
    (tech-stack
      (primary "Zig")
      (ffi-target "Rust (formatrix-core)")
      (build "Zig Build System")))

  (current-position
    (phase "initial-release")
    (overall-completion 90)
    (components
      (core-bindings (status complete) (progress 100))
      (document-api (status complete) (progress 100))
      (file-operations (status complete) (progress 100))
      (format-detection (status complete) (progress 100))
      (build-system (status complete) (progress 100))
      (documentation (status complete) (progress 100))
      (examples (status complete) (progress 100))
      (tests (status in-progress) (progress 60)))
    (working-features
      "Document parsing from 7 formats"
      "Document rendering to 7 formats"
      "File open/save with format detection"
      "Content-based format detection"
      "Extension-based format detection"
      "Direct format conversion"
      "Memory-safe document handles"))

  (route-to-mvp
    (milestone "v0.1.0"
      (target "Initial Release")
      (items
        (item "Core API bindings" complete)
        (item "Build system configuration" complete)
        (item "Example code" complete)
        (item "README documentation" complete)
        (item "Integration tests" pending)
        (item "CI/CD pipeline" pending))))

  (blockers-and-issues
    (critical ())
    (high
      ("Need to add zig.zon for package manager support")
      ("Need CI workflow for testing"))
    (medium
      ("Integration tests require formatrix-core library"))
    (low ()))

  (critical-next-actions
    (immediate
      "Add build.zig.zon for Zig package manager"
      "Create CI workflow")
    (this-week
      "Add integration tests"
      "Document library installation")
    (this-month
      "Publish to Zig package index")))
