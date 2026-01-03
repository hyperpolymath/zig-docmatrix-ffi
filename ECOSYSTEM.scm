; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - Project position in ecosystem

(ecosystem
  (version "1.0.0")
  (name "zig-formatrix-ffi")
  (type "library")
  (purpose "Zig FFI bindings for formatrix-core document conversion")

  (position-in-ecosystem
    (layer "bindings")
    (role "Enable Zig and other languages to use formatrix-core")
    (upstream ("formatrix-core"))
    (downstream ("Ada TUI applications" "Zig document tools")))

  (related-projects
    (formatrix-docs
      (relationship parent-project)
      (url "https://github.com/hyperpolymath/formatrix-docs")
      (notes "The Rust core library this binds to"))
    (recon-silly-ation
      (relationship sibling)
      (url "https://github.com/hyperpolymath/recon-silly-ation")
      (notes "Document reconciliation engine in same ecosystem"))
    (docubot
      (relationship sibling)
      (url "https://github.com/hyperpolymath/docubot")
      (notes "AI document assistant in same ecosystem"))
    (docudactyl
      (relationship sibling)
      (url "https://github.com/hyperpolymath/docudactyl")
      (notes "Documentation orchestrator in same ecosystem")))

  (what-this-is
    "Type-safe Zig bindings for formatrix-core"
    "Document parsing and rendering for 7 markup formats"
    "Memory-safe FFI with automatic resource management"
    "Build system integration for Zig projects")

  (what-this-is-not
    "A standalone document editor"
    "A format parser implementation"
    "A GUI application"))
