# Divine Hindu Inventory Tracking System

A full-stack, enterprise-grade inventory tracking and warehouse management system designed to streamline stock control, dispatching, returns, and order reconciliation.

## 🚀 Features

- **Real-Time Dashboard**: Comprehensive metrics on total SKUs, available units, pending dispatches, and low stock alerts.
- **Warehouse Management**: Track breakdown of stock across multiple warehouse locations (Central, Regional, etc.).
- **Product & SKU Tracking**: Manage product catalogs, minimum stock levels, and ledger-based inventory counting.
- **Sales Orders & Dispatch**: Track orders across channels (Website, App, Offline) from pending to fulfilled statuses.
- **Returns & Quality Control**: Manage inward returns with pass/fail QC states and automatic inventory reintegration.
- **Stock Reconciliation**: Conduct physical counts and seamlessly update discrepancies with approval workflows.

## 🛠️ Technology Stack

This project is built as a highly modular `pnpm` workspace monorepo.

**Frontend (`inventory-app`)**:
- React 18 & Vite
- Tailwind CSS & shadcn/ui for modern, aesthetic components
- TanStack Query (React Query) for data fetching
- Zod for type-safe forms and API validation

**Backend (`api-server`)**:
- Node.js & Express
- Drizzle ORM for type-safe database interactions
- PostgreSQL (Neon serverless) for the primary database
- Pino for highly performant logging

## 📦 Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/en/) (v20+ recommended)
- [pnpm](https://pnpm.io/installation) package manager

### 1. Environment Setup

Copy the example environment file and configure your database string:
```bash
cp .env.example .env
```
Inside `.env`, ensure you set the `DATABASE_URL` to your valid PostgreSQL connection string.

### 2. Install Dependencies

From the root directory, install all workspace packages:
```bash
pnpm install
```

### 3. Database Migrations & Seeding (Optional)

If your database is empty, run the database migrations and seed it with mock data:
```bash
# Push schema to database
pnpm --filter "@workspace/db" db:push

# Seed with initial data
pnpm --filter "@workspace/scripts" seed
```

### 4. Run Development Servers

Start both the backend API and the frontend UI concurrently:
```bash
pnpm run dev
```

The application will be accessible at:
- **UI Dashboard**: `http://localhost:3000`
- **Component Sandbox**: `http://localhost:5174`
- **API Server**: `http://localhost:5173`

## 📁 Workspace Structure

- `artifacts/inventory-app`: The main React dashboard application.
- `artifacts/api-server`: The Express backend handling API routes.
- `artifacts/mockup-sandbox`: A component preview server.
- `lib/db`: Database schema definition and connection utility.
- `lib/api-spec`: OpenAPI specifications.
- `lib/api-zod`: Shared typescript types generated from the API schema.
- `lib/api-client-react`: Generated React Query hooks for fetching data.
- `scripts`: Utility scripts for database seeding.
