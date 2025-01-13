# Enterprise Monorepo

This monorepo contains three main projects:

1. **Backstage Site**: Developer portal built using Backstage
2. **Data Layer**: Data infrastructure and microservices using AWS CDK and Go
3. **Infrastructure**: Cloud infrastructure using AWS CDK and Lambda functions

## Repository Structure

```
enterprise-monorepo/
├── apps/                      # Application projects
│   ├── backstage-app/        # Backstage frontend application
│   ├── backstage-backend/    # Backstage backend service
│   └── data-service/         # Go microservice
├── packages/                  # Shared libraries and utilities
│   ├── ui/                   # Shared UI components
│   ├── utils/                # Shared utilities and helper functions
│   ├── config/               # Shared configurations (ESLint, TypeScript)
│   └── types/                # Shared TypeScript types
├── infrastructure/           # Infrastructure as Code
│   ├── data-layer/          # Data infrastructure CDK
│   └── platform/            # Platform infrastructure CDK
├── tools/                    # Development and build tools
│   ├── scripts/             # Build and deployment scripts
│   └── ci/                  # CI/CD configuration
├── .turbo/                   # Turborepo's cache directory
├── turbo.json                # Turborepo configuration
├── tsconfig.json             # Base TypeScript configuration
└── package.json              # Root package.json
```

## Package Structure

### Apps
- `backstage-app`: Frontend application built with Backstage
- `backstage-backend`: Backend service for Backstage
- `data-service`: Go-based microservice

### Shared Packages
- `@platform-ai/ui`: Reusable UI components
- `@platform-ai/utils`: Common utilities and helper functions
- `@platform-ai/config`: Shared configurations
- `@platform-ai/types`: Shared TypeScript types

## Getting Started

1. Install dependencies:
   ```bash
   npm install
   ```

2. Set up development environment:
   ```bash
   npm run setup
   ```

## Development Guidelines

- Each project maintains its own dependencies while sharing common configurations
- Use conventional commits for version control
- Follow the project-specific README files for detailed setup instructions
- Shared packages should be imported from the `@platform-ai` namespace

## License

MIT
