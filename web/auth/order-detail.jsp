<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Order: order detail page -->
<!doctype html>
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>NovaCommerce Admin Portal</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
      rel="stylesheet"
    />
    <style>
      @layer base {
        html,
        body {
          margin: 0;
          padding: 0;
        }
        body {
          overscroll-behavior: none;
        }
        main > :first-child {
          margin-top: 0 !important;
        }
        main > :last-child {
          margin-bottom: 0 !important;
        }
      }
      ::-webkit-scrollbar {
        display: none;
      }
    </style>
    <script src="https://cdn.tailwindcss.com"></script>
    <script id="tailwind-config">
      tailwind.config = {
        darkMode: 'class',
        theme: {
          extend: {
            colors: {
              'secondary-container': '#d8e1ea',
              'tertiary-fixed': '#93f7ba',
              'surface-container-low': '#f1f4f9',
              'on-error': '#ffffff',
              'error-container': '#ffdad6',
              secondary: '#575f67',
              outline: '#727787',
              'surface-container-highest': '#e0e3e8',
              'on-secondary-fixed': '#141d23',
              'surface-container-high': '#e5e8ee',
              surface: '#f7f9ff',
              'on-surface-variant': '#424655',
              'secondary-fixed-dim': '#bfc8d0',
              background: '#f7f9ff',
              'inverse-primary': '#b1c5ff',
              'inverse-surface': '#2d3135',
              'on-tertiary': '#ffffff',
              'primary-fixed': '#dae2ff',
              'on-secondary-fixed-variant': '#3f484f',
              'on-secondary-container': '#5b646b',
              'surface-variant': '#e0e3e8',
              'secondary-fixed': '#dbe4ed',
              'primary-container': '#0d6efd',
              primary: '#0057cd',
              'surface-dim': '#d7dadf',
              'surface-tint': '#0057ce',
              'on-secondary': '#ffffff',
              'on-tertiary-fixed-variant': '#00522f',
              'inverse-on-surface': '#eef1f6',
              'surface-bright': '#f7f9ff',
              'tertiary-fixed-dim': '#77da9f',
              'on-surface': '#181c20',
              'on-tertiary-container': '#ffffff',
              'outline-variant': '#c2c6d8',
              'on-primary-container': '#ffffff',
              'tertiary-container': '#198754',
              tertiary: '#006c40',
              'primary-fixed-dim': '#b1c5ff',
              'on-primary-fixed-variant': '#00419e',
              error: '#ba1a1a',
              'surface-container-lowest': '#ffffff',
              'on-tertiary-fixed': '#002110',
              'on-background': '#181c20',
              'on-primary': '#ffffff',
              'on-primary-fixed': '#001946',
              'surface-container': '#ebeef3',
              'on-error-container': '#93000a',
            },
            borderRadius: { DEFAULT: '0.125rem', lg: '0.25rem', xl: '0.5rem', full: '0.75rem' },
            spacing: {
              'gutter-lg': '1.5rem',
              'container-xl': '1140px',
              'container-md': '720px',
              'gutter-xs': '0.25rem',
              'gutter-xl': '3rem',
              'gutter-sm': '0.5rem',
              'sidebar-width': '260px',
              'container-sm': '540px',
              'container-lg': '960px',
              'container-xxl': '1320px',
              'gutter-md': '1rem',
            },
            fontFamily: {
              'code-sm': ['Inter'],
              'body-md': ['Inter'],
              'label-md': ['Inter'],
              'display-hero-mobile': ['Inter'],
              'body-lg': ['Inter'],
              'headline-lg': ['Inter'],
              'body-xs': ['Inter'],
              'display-hero': ['Inter'],
              'headline-xl': ['Inter'],
              'headline-xl-mobile': ['Inter'],
              'headline-sm': ['Inter'],
              'headline-md': ['Inter'],
              'label-sm': ['Inter'],
              'body-sm': ['Inter'],
            },
            fontSize: {
              'code-sm': ['13px', { lineHeight: '18px', fontWeight: '400' }],
              'body-md': ['16px', { lineHeight: '24px', fontWeight: '400' }],
              'label-md': ['14px', { lineHeight: '20px', fontWeight: '500' }],
              'display-hero-mobile': [
                '32px',
                { lineHeight: '40px', letterSpacing: '-0.01em', fontWeight: '700' },
              ],
              'body-lg': ['18px', { lineHeight: '28px', fontWeight: '400' }],
              'headline-lg': [
                '24px',
                { lineHeight: '32px', letterSpacing: '-0.01em', fontWeight: '600' },
              ],
              'body-xs': ['12px', { lineHeight: '16px', fontWeight: '400' }],
              'display-hero': [
                '48px',
                { lineHeight: '56px', letterSpacing: '-0.02em', fontWeight: '700' },
              ],
              'headline-xl': [
                '32px',
                { lineHeight: '40px', letterSpacing: '-0.015em', fontWeight: '600' },
              ],
              'headline-xl-mobile': [
                '26px',
                { lineHeight: '34px', letterSpacing: '-0.01em', fontWeight: '600' },
              ],
              'headline-sm': ['16px', { lineHeight: '24px', fontWeight: '600' }],
              'headline-md': ['20px', { lineHeight: '28px', fontWeight: '600' }],
              'label-sm': [
                '12px',
                { lineHeight: '16px', letterSpacing: '0.02em', fontWeight: '600' },
              ],
              'body-sm': ['14px', { lineHeight: '20px', fontWeight: '400' }],
            },
          },
        },
      };
    </script>
  </head>
  <body class="bg-surface font-body-md text-body-md text-on-surface">
    <aside
      class="fixed left-0 top-0 h-full w-sidebar-width bg-surface-container-lowest shadow-[0_1px_8px_rgba(0,0,0,0.04)] z-50 flex flex-col justify-between py-gutter-md"
    >
      <div class="flex flex-col">
        <div class="px-gutter-md mb-gutter-lg flex items-center gap-gutter-sm">
          <img
            alt="NovaCommerce Brand Logo"
            class="h-8 w-auto object-contain"
            src="https://lh3.googleusercontent.com/aida/AEtjO1WBH5SWjmlY3Q96VVXPJ_Z7tXDREWSlzfCualwViw7wX84_r8ETWvrAWQFGqVTBUSW3P8KlAbehcr2xSY4B878Bg8QrWXzexPK55Yw3l0Vx0Xz3Fp8zVfGtdg39RYUTpMg0xRHUSH9LSg3sLu5rg24Ub5Tc4eyzbAwRI0PmC1fwAV7VO2BeZGE-fGleBRdfRkdlo_3t8gDKht3WSzZYxq9Y2DaBEMkNFXxQtqaKEFz9a62Ccagw_Io109E"
          />
          <div class="flex flex-col">
            <span class="font-headline-sm text-headline-sm text-primary tracking-tight leading-none"
              >NovaPortal</span
            ><span
              class="font-label-sm text-[10px] text-on-surface-variant uppercase tracking-wider mt-0.5"
              >Admin Hub</span
            >
          </div>
        </div>
        <div class="px-gutter-md mb-gutter-xs">
          <p
            class="font-label-sm text-[11px] uppercase tracking-wider text-on-surface-variant font-semibold"
          >
            Operations
          </p>
        </div>
        <nav
          class="flex flex-col gap-1 px-gutter-sm"
          data-active-classes="bg-primary-container text-on-primary-container font-headline-sm"
        >
          <a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="product-catalog"
            href="#"
            >Products</a
          ><a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="admin-orders-management"
            href="#"
            >Orders Management</a
          ><a
            aria-current="page"
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg transition-all bg-primary-container text-on-primary-container font-headline-sm"
            data-path="order-details-status-management"
            href="#"
            >Order Details & Status</a
          ><a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="customers-list"
            href="#"
            >Customers</a
          ><a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="analytics-reports"
            href="#"
            >Analytics</a
          >
        </nav>
        <div class="px-gutter-md mt-gutter-md mb-gutter-xs">
          <p
            class="font-label-sm text-[11px] uppercase tracking-wider text-on-surface-variant font-semibold"
          >
            System
          </p>
        </div>
        <div class="flex flex-col gap-1 px-gutter-sm">
          <a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="admin-settings"
            href="#"
            >Settings</a
          ><a
            class="flex items-center px-gutter-sm py-gutter-xs rounded-lg text-on-surface-variant hover:bg-surface-container-high hover:text-on-surface transition-all font-label-md text-label-md"
            data-path="storefront-home"
            href="#"
            >Live Storefront</a
          >
        </div>
      </div>
      <div class="px-gutter-md">
        <div
          class="bg-surface-container-low p-gutter-sm rounded-xl flex items-center justify-between"
        >
          <div class="flex items-center gap-gutter-xs">
            <span class="w-2 h-2 rounded-full bg-tertiary-container"></span
            ><span class="font-label-sm text-label-sm text-on-surface-variant"
              >v5.4.2 Production</span
            >
          </div>
          <span class="material-symbols-outlined text-[18px] text-on-surface-variant">info</span>
        </div>
      </div>
    </aside>
    <div class="pl-sidebar-width">
      <header
        class="fixed top-0 left-sidebar-width right-0 h-16 bg-surface-container-lowest shadow-[0_1px_8px_rgba(0,0,0,0.04)] z-40 flex items-center justify-between px-gutter-lg"
      >
        <div class="flex items-center gap-gutter-md">
          <div
            class="flex items-center gap-gutter-xs font-label-md text-label-md text-on-surface-variant"
          >
            <span class="text-on-surface-variant">Admin</span
            ><span class="material-symbols-outlined text-[16px]">chevron_right</span
            ><span class="text-on-surface font-headline-sm">Workspace</span>
          </div>
          <div
            class="hidden md:flex items-center bg-surface-container-low px-gutter-sm py-gutter-xs rounded-lg w-72"
          >
            <span class="material-symbols-outlined text-on-surface-variant text-[18px] mr-gutter-xs"
              >search</span
            ><input
              class="bg-transparent font-body-sm text-body-sm text-on-surface placeholder:text-on-surface-variant focus:outline-none w-full"
              placeholder="Search catalog, SKU, order ID..."
              type="text"
            />
          </div>
        </div>
        <div class="flex items-center gap-gutter-md">
          <button
            class="relative p-gutter-xs text-on-surface-variant hover:text-on-surface flex items-center justify-center"
          >
            <span class="material-symbols-outlined text-[22px]">notifications</span
            ><span class="absolute top-1 right-1 w-2 h-2 rounded-full bg-error"></span>
          </button>
          <div class="w-[1px] h-6 bg-outline-variant"></div>
          <div class="flex items-center gap-gutter-sm">
            <img
              alt="Profile"
              class="w-8 h-8 rounded-full object-cover"
              src="https://lh3.googleusercontent.com/aida-public/AB6AXuDgh3hmG1T7I6LCQXcJ_qd_gBq9IF5QANkA-C3o3SXRvPH0O-WlhUBiw2HdYNYkwgFJjhRLhtvSBhdt5L2HQ8BRuG6JoLToO9s4Rlaf_nn--b7FiYt22EK_cCo1eUgcz5hokVIh1kb7ObbqAn0un7g5qSQwz5sHFqTPcV3-ybeX7ZtSx_2wo3uF9xHkH_14aa3bzuPnb-QHwI-EhJDaaPc_RsLsNC5rwNM_HbeH10qhk43B8nENg_kyKg"
            />
            <div class="hidden sm:flex flex-col text-left">
              <span class="font-label-md text-label-md text-on-surface leading-tight"
                >Devon Lane</span
              >
              <div class="flex items-center gap-1">
                <span
                  class="bg-primary-container text-on-primary-container font-label-sm text-[10px] px-1.5 py-0.2 rounded font-semibold leading-tight"
                  >Superadmin</span
                >
              </div>
            </div>
          </div>
        </div>
      </header>
      <main class="w-full pt-16 bg-surface">
        <div class="flex flex-col w-full">
          <div
            class="px-gutter-lg py-gutter-md flex flex-col gap-gutter-md max-w-container-xxl mx-auto w-full"
          >
            <!-- Breadcrumb & Top Level Navigation Metadata -->
            <div
              class="flex items-center justify-between text-on-surface-variant font-label-md text-label-md"
            >
              <nav class="flex items-center gap-2">
                <a class="hover:text-primary transition-colors flex items-center gap-1" href="#">
                  <span class="material-symbols-outlined text-[18px]">home</span>
                  <span>Admin</span>
                </a>
                <span class="material-symbols-outlined text-[16px] text-outline"
                  >chevron_right</span
                >
                <a class="hover:text-primary transition-colors" href="#">Workspace</a>
                <span class="material-symbols-outlined text-[16px] text-outline"
                  >chevron_right</span
                >
                <a class="hover:text-primary transition-colors" href="#">Orders</a>
                <span class="material-symbols-outlined text-[16px] text-outline"
                  >chevron_right</span
                >
                <span class="text-on-surface font-headline-sm">#ORD-94821</span>
              </nav>
              <div
                class="flex items-center gap-2 text-label-sm font-label-sm text-on-surface-variant"
              >
                <span
                  class="inline-flex items-center gap-1 bg-surface-container-high px-2 py-0.5 rounded-full"
                >
                  <span class="w-1.5 h-1.5 rounded-full bg-tertiary"></span>
                  Gateway: Stripe Auth #891230
                </span>
                <span class="hidden sm:inline">Channel: Web Storefront</span>
              </div>
            </div>
            <!-- Order Header Section -->
            <div
              class="bg-surface-container-lowest rounded-xl p-gutter-md shadow-sm flex flex-col lg:flex-row lg:items-center lg:justify-between gap-gutter-md"
            >
              <div class="flex flex-col gap-1.5">
                <div class="flex flex-wrap items-center gap-3">
                  <h1
                    class="font-headline-xl text-headline-xl text-on-surface tracking-tight leading-none"
                  >
                    Order #ORD-94821
                  </h1>
                  <!-- Pulsing Blue Processing Badge -->
                  <span
                    class="inline-flex items-center gap-1.5 bg-primary/10 text-primary px-2.5 py-1 rounded-full font-label-sm text-label-sm"
                  >
                    <span class="relative flex h-2 w-2">
                      <span
                        class="animate-ping absolute inline-flex h-full w-full rounded-full bg-primary opacity-75"
                      ></span>
                      <span class="relative inline-flex rounded-full h-2 w-2 bg-primary"></span>
                    </span>
                    Processing / In Fulfillment
                  </span>
                  <!-- Payment Status Pill -->
                  <span
                    class="inline-flex items-center gap-1 bg-tertiary/10 text-tertiary px-2.5 py-1 rounded-full font-label-sm text-label-sm"
                  >
                    <span class="material-symbols-outlined text-[14px]">check_circle</span>
                    Paid via Visa ending in 4242
                  </span>
                </div>
                <p
                  class="font-body-sm text-body-sm text-on-surface-variant flex items-center gap-2"
                >
                  <span class="material-symbols-outlined text-[16px] text-outline">schedule</span>
                  Placed on April 11, 2025 at 2:32 PM via Web Checkout
                  <span class="text-outline-variant">•</span>
                  <span class="text-on-surface font-headline-sm">Invoice #INV-2025-089</span>
                </p>
              </div>
              <!-- Action Buttons Bar -->
              <div class="flex flex-wrap items-center gap-2">
                <button
                  class="inline-flex items-center gap-1.5 bg-surface-container-low hover:bg-surface-container-high text-on-surface px-3 py-1.5 rounded-lg text-label-md font-label-md transition-colors shadow-sm"
                  onclick="window.print()"
                >
                  <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                    >print</span
                  >
                  Print Invoice
                </button>
                <button
                  class="inline-flex items-center gap-1.5 bg-surface-container-low hover:bg-surface-container-high text-on-surface px-3 py-1.5 rounded-lg text-label-md font-label-md transition-colors shadow-sm"
                >
                  <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                    >receipt_long</span
                  >
                  Packing Slip
                </button>
                <button
                  class="inline-flex items-center gap-1.5 bg-surface-container-low hover:bg-surface-container-high text-on-surface px-3 py-1.5 rounded-lg text-label-md font-label-md transition-colors shadow-sm"
                  id="resend-email-btn"
                >
                  <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                    >forward_to_inbox</span
                  >
                  Resend Email
                </button>
                <!-- More Actions Dropdown -->
                <div class="relative">
                  <button
                    class="inline-flex items-center justify-center p-2 rounded-lg bg-surface-container-low hover:bg-surface-container-high text-on-surface-variant hover:text-on-surface transition-colors shadow-sm"
                    id="more-actions-trigger"
                  >
                    <span class="material-symbols-outlined text-[20px]">more_vert</span>
                  </button>
                  <div
                    class="hidden absolute right-0 mt-1 w-48 bg-surface-container-lowest rounded-xl shadow-lg py-1.5 z-20 flex flex-col text-left font-label-md text-label-md text-on-surface"
                    id="more-actions-menu"
                  >
                    <a
                      class="px-3 py-1.5 hover:bg-surface-container-low flex items-center gap-2 text-on-surface"
                      href="#"
                    >
                      <span class="material-symbols-outlined text-[16px] text-on-surface-variant"
                        >content_copy</span
                      >
                      Duplicate Order
                    </a>
                    <a
                      class="px-3 py-1.5 hover:bg-surface-container-low flex items-center gap-2 text-on-surface"
                      href="#"
                    >
                      <span class="material-symbols-outlined text-[16px] text-on-surface-variant"
                        >undo</span
                      >
                      Issue Credit Note
                    </a>
                    <a
                      class="px-3 py-1.5 hover:bg-surface-container-low flex items-center gap-2 text-error"
                      href="#"
                    >
                      <span class="material-symbols-outlined text-[16px] text-error">cancel</span>
                      Cancel & Refund
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Fulfillment Workflow & Stepper Section -->
            <div
              class="bg-surface-container-lowest rounded-xl p-gutter-md shadow-sm flex flex-col gap-gutter-md"
            >
              <div class="flex flex-col md:flex-row md:items-center justify-between gap-2 pb-2">
                <div>
                  <span
                    class="font-label-sm text-label-sm uppercase tracking-wider text-on-surface-variant font-semibold"
                    >Workflow Progression</span
                  >
                  <p class="font-headline-sm text-headline-sm text-on-surface">
                    Order Fulfillment Lifecycle
                  </p>
                </div>
                <div class="flex items-center gap-2">
                  <span
                    class="bg-tertiary/10 text-tertiary font-label-sm text-label-sm px-2.5 py-0.5 rounded-full flex items-center gap-1"
                  >
                    <span class="material-symbols-outlined text-[14px]">local_shipping</span>
                    SLA: On Track (Est. 28h Remaining)
                  </span>
                </div>
              </div>
              <!-- Stepper Visual -->
              <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-3 relative">
                <!-- Step 1 -->
                <div class="flex flex-col gap-1 p-3 rounded-lg bg-surface-container-low relative">
                  <div class="flex items-center justify-between">
                    <div
                      class="w-7 h-7 rounded-full bg-tertiary text-on-tertiary flex items-center justify-center font-label-sm text-label-sm shadow-sm"
                    >
                      <span class="material-symbols-outlined text-[16px]">check</span>
                    </div>
                    <span class="font-label-sm text-label-sm text-tertiary font-semibold"
                      >Done</span
                    >
                  </div>
                  <span class="font-headline-sm text-label-md text-on-surface mt-1"
                    >1. Order Placed</span
                  >
                  <span class="font-body-xs text-body-xs text-on-surface-variant"
                    >Apr 11, 14:32</span
                  >
                </div>
                <!-- Step 2 -->
                <div class="flex flex-col gap-1 p-3 rounded-lg bg-surface-container-low relative">
                  <div class="flex items-center justify-between">
                    <div
                      class="w-7 h-7 rounded-full bg-tertiary text-on-tertiary flex items-center justify-center font-label-sm text-label-sm shadow-sm"
                    >
                      <span class="material-symbols-outlined text-[16px]">check</span>
                    </div>
                    <span class="font-label-sm text-label-sm text-tertiary font-semibold"
                      >Done</span
                    >
                  </div>
                  <span class="font-headline-sm text-label-md text-on-surface mt-1"
                    >2. Payment Verified</span
                  >
                  <span class="font-body-xs text-body-xs text-on-surface-variant"
                    >Apr 11, 14:33</span
                  >
                </div>
                <!-- Step 3 (Active) -->
                <div class="flex flex-col gap-1 p-3 rounded-lg bg-primary/10 relative shadow-sm">
                  <div class="flex items-center justify-between">
                    <div
                      class="w-7 h-7 rounded-full bg-primary text-on-primary flex items-center justify-center font-label-sm text-label-sm shadow-sm"
                    >
                      <span class="material-symbols-outlined text-[16px]">inventory_2</span>
                    </div>
                    <span
                      class="font-label-sm text-label-sm text-primary font-semibold uppercase tracking-wider"
                      >Active</span
                    >
                  </div>
                  <span class="font-headline-sm text-label-md text-primary mt-1"
                    >3. Packing Items</span
                  >
                  <span class="font-body-xs text-body-xs text-on-surface-variant"
                    >Seattle SE-02 Station</span
                  >
                </div>
                <!-- Step 4 -->
                <div
                  class="flex flex-col gap-1 p-3 rounded-lg bg-surface-container-low opacity-75 relative"
                >
                  <div class="flex items-center justify-between">
                    <div
                      class="w-7 h-7 rounded-full bg-surface-variant text-on-surface-variant flex items-center justify-center font-label-sm text-label-sm"
                    >
                      4
                    </div>
                    <span class="font-label-sm text-label-sm text-on-surface-variant"
                      >Upcoming</span
                    >
                  </div>
                  <span class="font-headline-sm text-label-md text-on-surface mt-1"
                    >4. Dispatched</span
                  >
                  <span class="font-body-xs text-body-xs text-on-surface-variant"
                    >Carrier: FedEx FX-982</span
                  >
                </div>
                <!-- Step 5 -->
                <div
                  class="flex flex-col gap-1 p-3 rounded-lg bg-surface-container-low opacity-75 relative"
                >
                  <div class="flex items-center justify-between">
                    <div
                      class="w-7 h-7 rounded-full bg-surface-variant text-on-surface-variant flex items-center justify-center font-label-sm text-label-sm"
                    >
                      5
                    </div>
                    <span class="font-label-sm text-label-sm text-on-surface-variant">Pending</span>
                  </div>
                  <span class="font-headline-sm text-label-md text-on-surface mt-1"
                    >5. Delivered</span
                  >
                  <span class="font-body-xs text-body-xs text-on-surface-variant"
                    >Est. Apr 13, 2025</span
                  >
                </div>
              </div>
              <!-- Quick Status Changer Controller -->
              <div
                class="p-3 bg-surface-container-low rounded-xl flex flex-col md:flex-row md:items-center justify-between gap-3"
              >
                <div class="flex items-center gap-2">
                  <span class="material-symbols-outlined text-primary text-[20px]">sync</span>
                  <span class="font-label-md text-label-md text-on-surface font-semibold"
                    >Quick Status Management:</span
                  >
                </div>
                <form
                  class="flex flex-wrap items-center gap-3"
                  onsubmit="
                    event.preventDefault();
                    alert('Order status updated successfully.');
                  "
                >
                  <div class="relative">
                    <select
                      class="bg-surface-container-lowest text-on-surface font-body-sm text-body-sm rounded-lg px-3 py-1.5 focus:outline-none focus:ring-2 focus:ring-primary shadow-sm appearance-none pr-8 cursor-pointer"
                    >
                      <option selected="">Processing & Packaging</option>
                      <option>Ready for Pickup</option>
                      <option>Shipped / In Transit</option>
                      <option>Delivered</option>
                      <option>Cancel & Full Refund</option>
                    </select>
                    <span
                      class="material-symbols-outlined absolute right-2 top-2 text-[18px] text-on-surface-variant pointer-events-none"
                      >expand_more</span
                    >
                  </div>
                  <label
                    class="flex items-center gap-2 cursor-pointer font-label-sm text-label-sm text-on-surface select-none"
                  >
                    <input
                      checked=""
                      class="rounded text-primary focus:ring-primary h-4 w-4 bg-surface-container-lowest"
                      type="checkbox"
                    />
                    Notify customer via Email & SMS
                  </label>
                  <button
                    class="bg-primary hover:bg-primary-container text-on-primary px-3 py-1.5 rounded-lg text-label-md font-label-md shadow-sm transition-all"
                    type="submit"
                  >
                    Update Status
                  </button>
                </form>
              </div>
            </div>
            <!-- Main Content Layout (2-Column: 8 Cols Left, 4 Cols Right) -->
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-gutter-md items-start">
              <!-- LEFT COLUMN (8 Columns) -->
              <div class="lg:col-span-8 flex flex-col gap-gutter-md">
                <!-- 1. Items Ordered Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm overflow-hidden flex flex-col"
                >
                  <div
                    class="px-gutter-md py-3 bg-surface-container-low flex items-center justify-between"
                  >
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-primary text-[20px]"
                        >shopping_bag</span
                      >
                      <h2 class="font-headline-sm text-headline-sm text-on-surface">
                        Items Ordered (3)
                      </h2>
                    </div>
                    <span class="font-label-sm text-label-sm text-on-surface-variant"
                      >Fulfillment Warehouse: SE-02</span
                    >
                  </div>
                  <!-- Items Table -->
                  <div class="overflow-x-auto">
                    <table class="w-full text-left font-body-sm text-body-sm">
                      <thead
                        class="bg-surface-container-low text-on-surface-variant font-label-sm text-label-sm uppercase tracking-wider"
                      >
                        <tr>
                          <th class="py-2.5 px-gutter-md">Product Detail</th>
                          <th class="py-2.5 px-3 text-center">SKU</th>
                          <th class="py-2.5 px-3 text-center">Qty</th>
                          <th class="py-2.5 px-3 text-right">Unit Price</th>
                          <th class="py-2.5 px-gutter-md text-right">Total</th>
                        </tr>
                      </thead>
                      <tbody class="text-on-surface divide-y-0">
                        <!-- Line Item 1 -->
                        <tr class="hover:bg-surface-container-low/50 transition-colors">
                          <td class="py-3 px-gutter-md">
                            <div class="flex items-center gap-3">
                              <img
                                class="w-12 h-12 rounded-lg object-cover bg-surface-container-high shrink-0 shadow-sm"
                                data-alt="NovaAcoustics Apex ANC spatial studio headphones in sleek midnight silver with matte aluminum earcups, resting on minimalist studio backdrop"
                                src="https://lh3.googleusercontent.com/aida-public/AB6AXuC2GG9DSUORLAeUma2dVcDObvHx8miJU_Q951KIeZsAcz5baCkELS4TV0NkWdTPdYhBtzslc-7BqeGKIQCSp7U_qQU1yV1bkx5zCwed20vNAD9oeQDRviibd0OfsSj-lTLqKeLgDxR08MgSS7nZx8F8fXnPSQFBCNF4byDKcezfon7ULPyzKttfaLEpi0Xn4LS2FzpjTTtMQiFjrbCXrxdHWfUWvg3X9gnyJ0gCBqETF8SRSPtlhsbKXQ"
                              />
                              <div class="flex flex-col min-w-0">
                                <span
                                  class="font-headline-sm text-label-md text-on-surface truncate"
                                  >NovaAcoustics Apex ANC Spatial Studio Headphones</span
                                >
                                <span class="font-body-xs text-body-xs text-on-surface-variant"
                                  >Color: Midnight Silver • Wireless Studio Edition</span
                                >
                              </div>
                            </div>
                          </td>
                          <td
                            class="py-3 px-3 text-center font-code-sm text-code-sm text-on-surface-variant"
                          >
                            NVA-EP-8902
                          </td>
                          <td class="py-3 px-3 text-center font-headline-sm">1</td>
                          <td class="py-3 px-3 text-right tabular-nums">$189.99</td>
                          <td
                            class="py-3 px-gutter-md text-right font-headline-sm tabular-nums text-on-surface"
                          >
                            $189.99
                          </td>
                        </tr>
                        <!-- Line Item 2 -->
                        <tr
                          class="hover:bg-surface-container-low/50 transition-colors bg-surface-container-low/20"
                        >
                          <td class="py-3 px-gutter-md">
                            <div class="flex items-center gap-3">
                              <img
                                class="w-12 h-12 rounded-lg object-cover bg-surface-container-high shrink-0 shadow-sm"
                                data-alt="ErgoCraft Pro 75 percent wireless gasket-mount mechanical keyboard in matte black with textured keycaps and subtle underglow lighting"
                                src="https://lh3.googleusercontent.com/aida-public/AB6AXuDvD-R5-OPexqvwyUahmIWG5AFtAFRVAqRzaM4aPe1AzOH-fzQYCq_puxUdc-_Z-9bG8HEbWX6nmci2GzAzJp7NsDnauieyDi_UafKUqXoSL1YiPsMs_xdvKTXSP2IlLjCzdGUqGNGnmyMlFRTNVDxFaZuMES_2dJjo7DWHZQ2Qs_eexRxGYm2hu1VuKFkJCkAjcFBokJ1BDG66WcLuXE9hLSbGHBGw7tDyseMzCimhqD1bcozQpsjAYA"
                              />
                              <div class="flex flex-col min-w-0">
                                <span
                                  class="font-headline-sm text-label-md text-on-surface truncate"
                                  >ErgoCraft Pro 75% Wireless Mechanical Keyboard</span
                                >
                                <span class="font-body-xs text-body-xs text-on-surface-variant"
                                  >Switch: Brown Tactile • Matte Black Plate</span
                                >
                              </div>
                            </div>
                          </td>
                          <td
                            class="py-3 px-3 text-center font-code-sm text-code-sm text-on-surface-variant"
                          >
                            NVA-KB-4100
                          </td>
                          <td class="py-3 px-3 text-center font-headline-sm">1</td>
                          <td class="py-3 px-3 text-right tabular-nums">$129.99</td>
                          <td
                            class="py-3 px-gutter-md text-right font-headline-sm tabular-nums text-on-surface"
                          >
                            $129.99
                          </td>
                        </tr>
                        <!-- Line Item 3 -->
                        <tr class="hover:bg-surface-container-low/50 transition-colors">
                          <td class="py-3 px-gutter-md">
                            <div class="flex items-center gap-3">
                              <img
                                class="w-12 h-12 rounded-lg object-cover bg-surface-container-high shrink-0 shadow-sm"
                                data-alt="Armored USB-C braided charging and high-speed data cable coiled neatly, midnight navy blue reinforced sleeve with precision zinc alloy connectors"
                                src="https://lh3.googleusercontent.com/aida-public/AB6AXuDNcjDJTK2wqb86f5hjNMNX4ty96TMyUXcZuEoLWb1oit1iMzMNBcV0wuSnRtx5JrUTGw4xngje4VqZF9wj3o6RQsUwXCqCdebpOftq1XRp51a_sWNOlt9KDexb6WXNcBpLxRr3z5Gg0_2YNlPjBiTI-UUQ3fp_fZdRjlZNKPwUXPxinviEWxFJz7oWmyZpKdNbWaIxg0hNsbaTtrwMOM60Ig0plC9kYL1zOiZf63xE3GDdktii10lkHw"
                              />
                              <div class="flex flex-col min-w-0">
                                <span
                                  class="font-headline-sm text-label-md text-on-surface truncate"
                                  >Armored USB-C Braided Cable 2M</span
                                >
                                <span class="font-body-xs text-body-xs text-on-surface-variant"
                                  >Length: 2.0m • Midnight Navy</span
                                >
                              </div>
                            </div>
                          </td>
                          <td
                            class="py-3 px-3 text-center font-code-sm text-code-sm text-on-surface-variant"
                          >
                            NVA-AC-7890
                          </td>
                          <td class="py-3 px-3 text-center font-headline-sm">2</td>
                          <td class="py-3 px-3 text-right tabular-nums">$14.50</td>
                          <td
                            class="py-3 px-gutter-md text-right font-headline-sm tabular-nums text-on-surface"
                          >
                            $29.00
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <!-- Financial Breakdown Card Footer -->
                  <div
                    class="bg-surface-container-low p-gutter-md flex flex-col md:flex-row justify-between items-start gap-4"
                  >
                    <div class="flex flex-col gap-1 max-w-sm">
                      <span
                        class="font-label-sm text-label-sm uppercase tracking-wider text-on-surface-variant font-semibold"
                        >Payment Summary</span
                      >
                      <p class="font-body-xs text-body-xs text-on-surface-variant">
                        Payment processed by Stripe Payments US Inc. Full tax calculation matched WA
                        state sales surcharge. Customer applied promotional code
                        <span
                          class="font-code-sm bg-surface-container-high px-1 rounded text-primary"
                          >NOVALAUNCH</span
                        >.
                      </p>
                    </div>
                    <div class="w-full md:w-72 flex flex-col gap-2 font-body-sm text-body-sm">
                      <div class="flex justify-between text-on-surface-variant">
                        <span>Subtotal (3 items):</span>
                        <span class="font-headline-sm text-on-surface tabular-nums">$348.98</span>
                      </div>
                      <div class="flex justify-between text-on-surface-variant">
                        <span class="flex items-center gap-1">Shipping (FedEx Priority):</span>
                        <span class="font-headline-sm text-on-surface tabular-nums">$15.00</span>
                      </div>
                      <div class="flex justify-between text-on-surface-variant">
                        <span>Estimated Tax (WA 7.0%):</span>
                        <span class="font-headline-sm text-on-surface tabular-nums">$25.48</span>
                      </div>
                      <div class="flex justify-between text-tertiary">
                        <span class="flex items-center gap-1">
                          <span class="material-symbols-outlined text-[16px]">sell</span>
                          Discount (NOVALAUNCH -10%):
                        </span>
                        <span class="font-headline-sm tabular-nums">-$39.46</span>
                      </div>
                      <div class="bg-surface-container-high h-[1px] my-1"></div>
                      <div class="flex justify-between items-center text-on-surface pt-1">
                        <span class="font-headline-sm text-headline-sm">Total Paid:</span>
                        <span
                          class="font-headline-lg text-headline-lg text-primary tabular-nums font-bold"
                          >$349.00</span
                        >
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 2. Shipment & Logistics Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-4"
                >
                  <div class="flex items-center justify-between">
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-primary text-[20px]"
                        >local_shipping</span
                      >
                      <h2 class="font-headline-sm text-headline-sm text-on-surface">
                        Shipment & Logistics Intelligence
                      </h2>
                    </div>
                    <span
                      class="inline-flex items-center gap-1 text-label-sm font-label-sm bg-primary/10 text-primary px-2.5 py-0.5 rounded-full"
                    >
                      <span class="material-symbols-outlined text-[14px]">verified</span>
                      Label Active
                    </span>
                  </div>
                  <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                    <!-- Logistics Detail 1 -->
                    <div class="p-3 bg-surface-container-low rounded-xl flex flex-col gap-1">
                      <span
                        class="font-label-sm text-label-sm text-on-surface-variant uppercase tracking-wider"
                        >Logistics Carrier</span
                      >
                      <div class="flex items-center gap-2 mt-1">
                        <span class="font-headline-sm text-on-surface font-semibold"
                          >FedEx Express Priority</span
                        >
                      </div>
                      <span class="font-body-xs text-body-xs text-on-surface-variant"
                        >Guaranteed Next-Day Delivery</span
                      >
                    </div>
                    <!-- Logistics Detail 2 -->
                    <div class="p-3 bg-surface-container-low rounded-xl flex flex-col gap-1">
                      <span
                        class="font-label-sm text-label-sm text-on-surface-variant uppercase tracking-wider"
                        >Tracking Code</span
                      >
                      <div class="flex items-center gap-2 mt-1">
                        <span class="font-code-sm text-body-sm font-bold text-primary"
                          >9823 4110 9283</span
                        >
                        <button
                          class="text-on-surface-variant hover:text-primary transition-colors"
                          onclick="
                            navigator.clipboard.writeText('982341109283');
                            alert('Tracking code copied to clipboard!');
                          "
                          title="Copy tracking"
                        >
                          <span class="material-symbols-outlined text-[16px]">content_copy</span>
                        </button>
                      </div>
                      <a
                        class="font-body-xs text-body-xs text-primary hover:underline flex items-center gap-1"
                        href="#"
                      >
                        Open tracking portal
                        <span class="material-symbols-outlined text-[12px]">open_in_new</span>
                      </a>
                    </div>
                    <!-- Logistics Detail 3 -->
                    <div class="p-3 bg-surface-container-low rounded-xl flex flex-col gap-1">
                      <span
                        class="font-label-sm text-label-sm text-on-surface-variant uppercase tracking-wider"
                        >Fulfillment Origin</span
                      >
                      <div class="flex items-center gap-2 mt-1">
                        <span class="font-headline-sm text-on-surface font-semibold"
                          >Seattle Hub (SE-02)</span
                        >
                      </div>
                      <span class="font-body-xs text-body-xs text-on-surface-variant"
                        >Label ID: LBL-55219-W</span
                      >
                    </div>
                  </div>
                </div>
                <!-- 3. Order Activity & Audit Timeline Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-4"
                >
                  <div class="flex items-center justify-between">
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-primary text-[20px]"
                        >history</span
                      >
                      <h2 class="font-headline-sm text-headline-sm text-on-surface">
                        Audit Trail & Activity Log
                      </h2>
                    </div>
                    <span class="font-label-sm text-label-sm text-on-surface-variant"
                      >System Time: UTC-7</span
                    >
                  </div>
                  <!-- Vertical Timeline -->
                  <div class="flex flex-col gap-4 pl-2 relative">
                    <div
                      class="absolute left-[19px] top-3 bottom-3 w-[2px] bg-surface-container-high"
                    ></div>
                    <!-- Event 1 -->
                    <div class="flex items-start gap-3 relative z-10">
                      <div
                        class="w-8 h-8 rounded-full bg-primary-container text-on-primary-container flex items-center justify-center shrink-0 shadow-sm"
                      >
                        <span class="material-symbols-outlined text-[16px]"
                          >assignment_turned_in</span
                        >
                      </div>
                      <div class="flex flex-col bg-surface-container-low p-3 rounded-xl w-full">
                        <div class="flex items-center justify-between">
                          <span class="font-headline-sm text-label-md text-on-surface"
                            >Pick list batch generated and assigned</span
                          >
                          <span class="font-code-sm text-body-xs text-on-surface-variant"
                            >14:45</span
                          >
                        </div>
                        <p class="font-body-sm text-body-sm text-on-surface-variant mt-0.5">
                          Assigned operator:
                          <strong class="text-on-surface">Devon Lane (Staff ID #884)</strong>. Items
                          gathered from bay B-12 and E-04.
                        </p>
                      </div>
                    </div>
                    <!-- Event 2 -->
                    <div class="flex items-start gap-3 relative z-10">
                      <div
                        class="w-8 h-8 rounded-full bg-tertiary-container text-on-tertiary-container flex items-center justify-center shrink-0 shadow-sm"
                      >
                        <span class="material-symbols-outlined text-[16px]">credit_card</span>
                      </div>
                      <div class="flex flex-col bg-surface-container-low p-3 rounded-xl w-full">
                        <div class="flex items-center justify-between">
                          <span class="font-headline-sm text-label-md text-on-surface"
                            >Payment Authorized & Captured ($349.00)</span
                          >
                          <span class="font-code-sm text-body-xs text-on-surface-variant"
                            >14:33</span
                          >
                        </div>
                        <p class="font-body-sm text-body-sm text-on-surface-variant mt-0.5">
                          Processed via Stripe Payment Gateway with 3D-Secure authentication token.
                          Auth #891230.
                        </p>
                      </div>
                    </div>
                    <!-- Event 3 -->
                    <div class="flex items-start gap-3 relative z-10">
                      <div
                        class="w-8 h-8 rounded-full bg-surface-container-highest text-on-surface flex items-center justify-center shrink-0 shadow-sm"
                      >
                        <span class="material-symbols-outlined text-[16px]"
                          >shopping_cart_checkout</span
                        >
                      </div>
                      <div class="flex flex-col bg-surface-container-low p-3 rounded-xl w-full">
                        <div class="flex items-center justify-between">
                          <span class="font-headline-sm text-label-md text-on-surface"
                            >Customer submitted checkout</span
                          >
                          <span class="font-code-sm text-body-xs text-on-surface-variant"
                            >14:32</span
                          >
                        </div>
                        <p class="font-body-sm text-body-sm text-on-surface-variant mt-0.5">
                          Order placed by Sarah Jenkins from IP address 192.0.2.148 (Session
                          #SESS-9938210).
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- RIGHT COLUMN (4 Columns) -->
              <div class="lg:col-span-4 flex flex-col gap-gutter-md">
                <!-- 1. Customer Information Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-3"
                >
                  <div class="flex items-center justify-between">
                    <span
                      class="font-label-sm text-label-sm uppercase tracking-wider text-on-surface-variant font-semibold"
                      >Customer Profile</span
                    >
                    <a
                      class="font-label-sm text-label-sm text-primary hover:underline flex items-center gap-0.5"
                      href="#"
                    >
                      View Profile
                      <span class="material-symbols-outlined text-[14px]">arrow_forward</span>
                    </a>
                  </div>
                  <div class="flex items-center gap-3 pb-1">
                    <img
                      class="w-12 h-12 rounded-full object-cover bg-surface-container-high shrink-0 shadow-sm"
                      data-alt="Professional headshot of woman with warm friendly smile, modern casual blazer, soft neutral studio lighting"
                      src="https://lh3.googleusercontent.com/aida-public/AB6AXuBpmpwcdx5uHC2L8MwIwPiOFw6Iy79sp8dG3J6kKSCIJY4nAdjJSvAyb1vfdwRRT1T9wMOuX2omrHdVOgpA-1t_RRQt26KMoWLOn18A03Fgro-ft2mp3jSxeYJzk-36rtx-I1JEsnvn7zEEXw2xgF2_ZqhFnwWOkgI_dbCAN25GdUOj_NFYxDLMJK2GQU0QfRSWQGzGCHS78Rhb6O0g0PaApD1K1vL62DRLS4I3_cIJlDyrYy6IEgKwFA"
                    />
                    <div class="flex flex-col min-w-0">
                      <span class="font-headline-md text-headline-sm text-on-surface truncate"
                        >Sarah Jenkins</span
                      >
                      <div class="flex items-center gap-1.5 mt-0.5">
                        <span
                          class="bg-tertiary/10 text-tertiary font-label-sm text-label-sm px-2 py-0.5 rounded-full"
                        >
                          VIP Member (14 orders)
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="flex flex-col gap-2 pt-2 text-body-sm font-body-sm">
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                        >mail</span
                      >
                      <a
                        class="text-primary hover:underline truncate"
                        href="mailto:s.jenkins@cloudpulse.io"
                        >s.jenkins@cloudpulse.io</a
                      >
                    </div>
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                        >call</span
                      >
                      <span class="text-on-surface">+1 (555) 234-5678</span>
                    </div>
                    <div
                      class="flex items-center gap-2 text-on-surface-variant font-body-xs text-body-xs"
                    >
                      <span class="material-symbols-outlined text-[18px] text-on-surface-variant"
                        >calendar_today</span
                      >
                      <span>Customer since Oct 2023 (Lifetime Value: $3,420.50)</span>
                    </div>
                  </div>
                </div>
                <!-- 2. Shipping Address Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-3"
                >
                  <div class="flex items-center justify-between">
                    <span
                      class="font-label-sm text-label-sm uppercase tracking-wider text-on-surface-variant font-semibold"
                      >Shipping Destination</span
                    >
                    <button
                      class="text-primary hover:text-primary-container text-label-sm font-label-sm"
                    >
                      Edit Address
                    </button>
                  </div>
                  <div class="flex items-start gap-2.5">
                    <span class="material-symbols-outlined text-primary text-[20px] shrink-0 mt-0.5"
                      >location_on</span
                    >
                    <div class="flex flex-col font-body-sm text-body-sm text-on-surface">
                      <strong class="font-headline-sm">Sarah Jenkins</strong>
                      <span>742 Evergreen Terrace, Suite 4B</span>
                      <span>Seattle, WA 98101</span>
                      <span class="text-on-surface-variant">United States</span>
                    </div>
                  </div>
                  <div
                    class="p-2.5 bg-surface-container-low rounded-lg mt-1 flex items-start gap-2"
                  >
                    <span
                      class="material-symbols-outlined text-[18px] text-on-surface-variant shrink-0 mt-0.5"
                      >info</span
                    >
                    <div class="flex flex-col">
                      <span class="font-label-sm text-label-sm font-semibold text-on-surface"
                        >Delivery Instructions:</span
                      >
                      <span class="font-body-xs text-body-xs text-on-surface-variant italic"
                        >"Leave at front reception if after 5 PM."</span
                      >
                    </div>
                  </div>
                </div>
                <!-- 3. Billing & Payment Method Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-3"
                >
                  <div class="flex items-center justify-between">
                    <span
                      class="font-label-sm text-label-sm uppercase tracking-wider text-on-surface-variant font-semibold"
                      >Billing & Payment</span
                    >
                    <span
                      class="bg-tertiary/10 text-tertiary font-label-sm text-label-sm px-2 py-0.5 rounded-full"
                      >Cleared</span
                    >
                  </div>
                  <div class="flex items-center gap-3 p-3 bg-surface-container-low rounded-xl">
                    <div
                      class="w-10 h-7 bg-primary text-on-primary rounded flex items-center justify-center font-bold text-[11px] tracking-wider shrink-0 shadow-sm"
                    >
                      VISA
                    </div>
                    <div class="flex flex-col">
                      <span class="font-headline-sm text-label-md text-on-surface"
                        >Visa ending in 4242</span
                      >
                      <span class="font-body-xs text-body-xs text-on-surface-variant"
                        >Expires 08/2028</span
                      >
                    </div>
                  </div>
                  <!-- Risk Analysis -->
                  <div class="p-2.5 bg-tertiary/10 rounded-lg flex items-start gap-2">
                    <span
                      class="material-symbols-outlined text-[18px] text-tertiary shrink-0 mt-0.5"
                      >shield</span
                    >
                    <div class="flex flex-col">
                      <span class="font-label-sm text-label-sm font-semibold text-tertiary"
                        >Fraud Risk: Low Risk (2/100)</span
                      >
                      <span class="font-body-xs text-body-xs text-on-surface-variant"
                        >CVV, CVC, and AVS zip code exact match verified.</span
                      >
                    </div>
                  </div>
                  <div
                    class="text-body-xs font-body-xs text-on-surface-variant flex items-center gap-1"
                  >
                    <span class="material-symbols-outlined text-[16px]">check</span>
                    <span>Billing address matches shipping destination</span>
                  </div>
                </div>
                <!-- 4. Internal Staff Notes Card -->
                <div
                  class="bg-surface-container-lowest rounded-xl shadow-sm p-gutter-md flex flex-col gap-3"
                >
                  <div class="flex items-center justify-between">
                    <div class="flex items-center gap-2">
                      <span class="material-symbols-outlined text-primary text-[20px]"
                        >sticky_note_2</span
                      >
                      <h2 class="font-headline-sm text-headline-sm text-on-surface">
                        Internal Staff Notes
                      </h2>
                    </div>
                    <span class="font-label-sm text-label-sm text-on-surface-variant"
                      >Staff Only</span
                    >
                  </div>
                  <!-- Existing Note List -->
                  <div class="flex flex-col gap-2">
                    <div class="p-3 bg-surface-container-low rounded-xl flex flex-col gap-1">
                      <div class="flex items-center justify-between">
                        <span class="font-label-sm text-label-sm font-semibold text-on-surface"
                          >Devon Lane (Superadmin)</span
                        >
                        <span class="font-body-xs text-body-xs text-on-surface-variant"
                          >Apr 11, 14:38</span
                        >
                      </div>
                      <p class="font-body-sm text-body-sm text-on-surface-variant">
                        "Customer verified rush delivery on support chat. Expedited pick batch
                        requested."
                      </p>
                    </div>
                  </div>
                  <!-- Add Note Form -->
                  <form
                    class="flex flex-col gap-2 mt-1"
                    onsubmit="
                      event.preventDefault();
                      const t = this.querySelector('textarea');
                      if (t.value.trim()) {
                        alert('Staff note recorded.');
                        t.value = '';
                      }
                    "
                  >
                    <textarea
                      class="w-full bg-surface-container-low text-on-surface placeholder:text-on-surface-variant font-body-sm text-body-sm rounded-lg p-2.5 focus:outline-none focus:ring-2 focus:ring-primary shadow-sm resize-none"
                      placeholder="Add an internal staff note (e.g. customer requested gift packaging)..."
                      rows="3"
                    ></textarea>
                    <div class="flex justify-end">
                      <button
                        class="bg-primary hover:bg-primary-container text-on-primary px-3 py-1.5 rounded-lg text-label-md font-label-md shadow-sm transition-all flex items-center gap-1"
                        type="submit"
                      >
                        <span class="material-symbols-outlined text-[16px]">add_comment</span>
                        Add Note
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <script>
          // Simple menu toggling for More Actions
          const moreBtn = document.getElementById('more-actions-trigger');
          const moreMenu = document.getElementById('more-actions-menu');
          if (moreBtn && moreMenu) {
            moreBtn.addEventListener('click', (e) => {
              e.stopPropagation();
              moreMenu.classList.toggle('hidden');
            });
            document.addEventListener('click', () => {
              moreMenu.classList.add('hidden');
            });
          }

          // Resend Email confirmation feedback
          const resendBtn = document.getElementById('resend-email-btn');
          if (resendBtn) {
            resendBtn.addEventListener('click', () => {
              const originalText = resendBtn.innerHTML;
              resendBtn.innerHTML = `<span class="material-symbols-outlined text-[18px] text-tertiary">check</span> Sent!`;
              setTimeout(() => {
                resendBtn.innerHTML = originalText;
              }, 2500);
            });
          }
        </script>
      </main>
    </div>
  </body>
</html>
