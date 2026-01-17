# SPDX-License-Identifier: MPL-2.0
# Palimpsest: https://github.com/hyperpolymath/palimpsest-license

# Default recipe
default: build

# Build the library
build:
    zig build

# Run tests
test:
    zig build test

# Clean build artifacts
clean:
    rm -rf zig-out zig-cache .zig-cache

# Format code
fmt:
    zig fmt src/ examples/

# Check RSR compliance
rsr-check:
    @echo "Checking RSR compliance..."
    @test -f STATE.scm && echo "✓ STATE.scm" || echo "✗ STATE.scm"
    @test -f META.scm && echo "✓ META.scm" || echo "✗ META.scm"
    @test -f ECOSYSTEM.scm && echo "✓ ECOSYSTEM.scm" || echo "✗ ECOSYSTEM.scm"
    @test -f PLAYBOOK.scm && echo "✓ PLAYBOOK.scm" || echo "✗ PLAYBOOK.scm"
    @test -f AGENTIC.scm && echo "✓ AGENTIC.scm" || echo "✗ AGENTIC.scm"
    @test -f NEUROSYM.scm && echo "✓ NEUROSYM.scm" || echo "✗ NEUROSYM.scm"
    @test -f LICENSE && echo "✓ LICENSE" || echo "✗ LICENSE"
    @test -f README.adoc && echo "✓ README.adoc" || echo "✗ README.adoc"
