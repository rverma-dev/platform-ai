# Enterprise Monorepo

This monorepo contains three main projects:

1. **Backstage Site**: Developer portal built using Backstage
2. **Data Layer**: Data infrastructure and microservices using AWS CDK and Go
3. **Infrastructure**: Cloud infrastructure using AWS CDK and Lambda functions

## Repository Structure

```
enterprise-monorepo/
├── apps/                    # Application projects
│   ├── backstage-ui/        # Backstage developer portal
│   └── data-service/       # Go microservice
├── infrastructure/         # Infrastructure as Code
│   ├── data-layer/        # Data infrastructure CDK
│   └── platform/          # Platform infrastructure CDK
├── packages/              # Shared packages and utilities
│   ├── eslint-config/    # Shared ESLint configuration
│   ├── tsconfig/         # Shared TypeScript configuration
│   └── common/           # Shared utilities and types
└── tools/                # Development and build tools
    ├── scripts/          # Build and deployment scripts
    └── ci/              # CI/CD configuration
```

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

## License

MIT
