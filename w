mkdir -p src
cat > src/style.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  : focus {
    @apply outline-offset-2;
    outline: 3px solid rgba(236, 72, 153, 0.15);
  }

  .sr-only {
    @apply absolute w-1 h-1 p-0 -m-1 overflow-hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border-width: 0;
  }
}

@layer utilities {
  @keyframes slideUp {
    from {
      transform: translateY(8%);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }

  .animate-slide-up {
    animation: slideUp 0.22s ease-out both;
  }
}
EOFwww
