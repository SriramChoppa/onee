<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · modern & friendly e‑commerce</title>
  <!-- Google Fonts & Font Awesome for clean UI -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- DESIGN TOKENS (FRIENDLY, SOFT, WELCOMING) ---------- */
    :root {
      --bg: #fcfaf7;                /* warm off-white */
      --bg-card: #ffffff;
      --primary: #1e2b3c;           /* deep navy but softer */
      --primary-light: #2f4057;
      --accent: #e07a5f;            /* warm terracotta */
      --accent-light: #f9e3dc;
      --accent-dark: #c05a3e;
      --muted: #6f6f7e;
      --muted-light: #9e9eae;
      --surface: #f5f2ef;
      --success: #3b9e8b;
      --warning: #f2c14e;
      --radius: 24px;               /* larger radius = friendlier */
      --radius-sm: 14px;
      --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 4px 12px rgba(0, 0, 0, 0.02);
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.04), 0 4px 10px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 24px 48px rgba(224, 122, 95, 0.10), 0 8px 20px rgba(0, 0, 0, 0.04);
      --transition: 0.2s ease;
      --container: 1260px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button {
      font-family: inherit;
      cursor: pointer;
      border: none;
      background: none;
      color: inherit;
    }

    img {
      display: block;
      max-width: 100%;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ---------- UTILITIES ---------- */
    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    /* ---------- BUTTONS ---------- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      letter-spacing: 0.2px;
      box-shadow: var(--shadow-sm);
    }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: var(--shadow-hover);
    }

    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      border-color: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 20px 30px -8px rgba(30, 43, 60, 0.2);
    }

    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: #d9d9e0;
      box-shadow: none;
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.3);
      backdrop-filter: blur(6px);
      box-shadow: none;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.28);
      border-color: rgba(255, 255, 255, 0.5);
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 10px 20px;
      font-size: 13px;
    }

    /* ---------- HEADER (FRIENDLY) ---------- */
    header {
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      position: sticky;
      top: 0;
      z-index: 200;
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 14px 0;
      min-height: 78px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.5px;
      color: var(--primary);
      flex-shrink: 0;
    }
    .brand i {
      font-size: 28px;
      color: var(--accent);
    }
    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }
    nav.main-nav li a i {
      font-size: 14px;
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
      flex-shrink: 0;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 18px 0 20px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 230px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 5px rgba(224, 122, 95, 0.10);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted-light);
    }
    .search-wrap button {
      color: var(--muted);
      font-size: 16px;
      padding: 8px 0 8px 12px;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 19px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
      background: transparent;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .mobile-toggle {
      display: none;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      font-size: 22px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }

    #mobileMenu {
      display: none;
      background: #fff;
      padding: 18px 0 24px;
      border-top: 1px solid rgba(0, 0, 0, 0.03);
      box-shadow: 0 20px 30px -10px rgba(0, 0, 0, 0.05);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 18px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: var(--surface);
    }
    #mobileMenu ul li a i {
      width: 24px;
      color: var(--accent);
    }

    /* ---------- HERO (FRIENDLY & INVITING) ---------- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 60px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 24px 24px 0;
      background: linear-gradient(135deg, #1e2b3c 0%, #2b3d52 100%);
      box-shadow: var(--shadow);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.4;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(224, 122, 95, 0.25);
      color: #ffe8e0;
      padding: 6px 20px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      letter-spacing: 0.3px;
      margin-bottom: 20px;
      backdrop-filter: blur(6px);
      border: 1px solid rgba(255, 255, 255, 0.1);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 58px;
      font-weight: 700;
      color: #fff;
      line-height: 1.15;
      max-width: 700px;
      margin-bottom: 18px;
      text-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }
    .hero p {
      color: rgba(255, 255, 255, 0.88);
      font-size: 18px;
      max-width: 560px;
      margin-bottom: 32px;
      line-height: 1.6;
      font-weight: 400;
    }
    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    /* ---------- SECTIONS ---------- */
    .section {
      padding: 64px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 42px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 32px;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 6px;
      font-size: 16px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 15px;
      transition: var(--transition);
      white-space: nowrap;
    }
    .section-header .view-all:hover {
      gap: 14px;
      color: var(--accent-dark);
    }

    /* ---------- CATEGORIES ---------- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 26px 12px 22px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 28px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(1.05);
    }
    .cat-card h4 {
      font-size: 16px;
      font-weight: 600;
      color: var(--primary);
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 6px;
      font-weight: 400;
    }

    /* ---------- PRODUCTS ---------- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.4s ease;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.05);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 6px 14px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.4px;
      text-transform: uppercase;
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(6px);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 18px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 16px;
      font-weight: 600;
      line-height: 1.4;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 6px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 19px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      color: #f5a623;
      letter-spacing: 1px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
      letter-spacing: normal;
    }
    .product-card .footer {
      padding: 0 18px 18px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      box-shadow: 0 6px 14px rgba(30, 43, 60, 0.08);
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
      box-shadow: 0 10px 20px rgba(224, 122, 95, 0.25);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ---------- DEAL ---------- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 340px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.6px;
      align-self: flex-start;
      margin-bottom: 16px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 34px;
      font-weight: 700;
      margin-bottom: 8px;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 20px;
      font-size: 16px;
      line-height: 1.6;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 800;
      color: var(--primary);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 15px;
      color: var(--muted);
      margin: 8px 0 24px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 16px 0 28px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      min-width: 80px;
      text-align: center;
      box-shadow: 0 8px 16px rgba(30, 43, 60, 0.12);
    }
    .timer-box .num {
      font-size: 28px;
      font-weight: 700;
      line-height: 1.2;
      font-feature-settings: "tnum";
    }
    .timer-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.8px;
    }

    /* ---------- TESTIMONIALS ---------- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 12px 6px 24px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 5px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 999px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 30px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid rgba(0, 0, 0, 0.02);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateY(-4px);
    }
    .testimonial-card .stars {
      color: #f5a623;
      font-size: 18px;
      letter-spacing: 3px;
      margin-bottom: 14px;
    }
    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.7;
      color: var(--primary);
      margin-bottom: 20px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 15px;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* ---------- NEWSLETTER ---------- */
    .newsletter-wrap {
      background: linear-gradient(135deg, #1e2b3c 0%, #2b3d52 100%);
      border-radius: var(--radius);
      padding: 56px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow);
    }
    .newsletter-wrap .text h3 {
      font-size: 28px;
      font-weight: 700;
      margin-bottom: 6px;
    }
    .newsletter-wrap .text p {
      opacity: 0.8;
      font-size: 16px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 520px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 240px;
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 16px 36px;
      box-shadow: none;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
    }
    #newsletterMsg {
      margin-top: 14px;
      font-size: 14px;
      width: 100%;
      display: none;
      padding: 8px 0;
    }

    /* ---------- FOOTER ---------- */
    footer {
      margin-top: 24px;
      padding: 56px 0 32px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 15px;
      max-width: 320px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 18px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-4px);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 15px;
      margin-bottom: 18px;
      color: var(--primary);
      letter-spacing: 0.3px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
      color: var(--muted-light);
      font-size: 14px;
    }

    /* ---------- RESPONSIVE (FRIENDLY ON ALL DEVICES) ---------- */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 36px;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 44px;
      }
      .hero {
        min-height: 440px;
        margin: 18px 18px 0;
        padding: 48px 0;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 260px;
      }
      .deal-wrap .deal-content {
        padding: 32px 36px;
      }
      .newsletter-wrap {
        padding: 40px 32px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .search-wrap {
        min-width: 160px;
      }
    }

    @media (max-width: 768px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 16px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 14px;
      }
      .hero h1 {
        font-size: 34px;
      }
      .hero p {
        font-size: 16px;
      }
      .section-header h2 {
        font-size: 26px;
      }
      .deal-wrap .deal-content h3 {
        font-size: 26px;
      }
      .deal-wrap .deal-content .price-big {
        font-size: 30px;
      }
      .timer-box {
        min-width: 64px;
        padding: 10px 12px;
      }
      .timer-box .num {
        font-size: 22px;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 28px;
      }
      .brand {
        font-size: 20px;
      }
      .brand i {
        font-size: 22px;
      }
      .search-wrap {
        min-width: 130px;
        padding: 0 12px 0 16px;
      }
      .search-wrap input {
        font-size: 13px;
        padding: 10px 0;
      }
      .icon-btn {
        width: 40px;
        height: 40px;
        font-size: 16px;
      }
      .cart-count {
        width: 20px;
        height: 20px;
        font-size: 10px;
      }
      .testimonial-card {
        flex: 0 0 300px;
      }
      .section {
        padding: 40px 0;
      }
      .container {
        padding: 0 18px;
      }
      .hero .actions .btn {
        padding: 12px 24px;
        font-size: 14px;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .hero {
        margin: 12px 12px 0;
        min-height: 340px;
        padding: 32px 0;
        border-radius: var(--radius-sm);
      }
      .hero h1 {
        font-size: 28px;
      }
      .container {
        padding: 0 14px;
      }
      .deal-wrap .deal-content {
        padding: 24px 20px;
      }
      .deal-wrap .deal-img {
        flex: 0 0 200px;
      }
      .newsletter-wrap {
        padding: 28px 20px;
      }
      .newsletter-wrap .text h3 {
        font-size: 22px;
      }
      .product-card .body {
        padding: 14px 14px 10px;
      }
      .product-card .body h5 {
        font-size: 14px;
      }
      .product-card .body .price {
        font-size: 16px;
      }
      .product-card .footer {
        padding: 0 14px 14px;
      }
      .product-card .footer .add-btn {
        font-size: 13px;
        padding: 10px;
      }
      .timer-box {
        min-width: 52px;
        padding: 8px 10px;
      }
      .timer-box .num {
        font-size: 18px;
      }
      .timer-box .label {
        font-size: 9px;
      }
      .cat-card {
        padding: 
