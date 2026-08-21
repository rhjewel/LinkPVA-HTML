# LinkPVA — Static HTML Website Guideline

## 1. বর্তমান Project Scope

`LinkPVA` হবে LinkedIn account-related digital services বিক্রির জন্য একটি professional SMM eCommerce website। এই পর্যায়ে শুধু responsive static HTML template তৈরি হবে। এখন WordPress theme files, PHP templates, hooks বা WooCommerce integration তৈরি করা হবে না।

তবে static HTML এমনভাবে লেখা হবে যেন পরে WordPress এবং WooCommerce theme-এ convert করা সহজ হয়:

- Semantic এবং valid HTML5
- Reusable section/component structure
- Consistent `linkpva-` prefixed custom class names
- Product, cart, checkout এবং account page-এর realistic static UI
- Inline CSS/JavaScript নয়
- Hardcoded domain নয়; relative links ব্যবহার
- Accessible forms, navigation এবং interaction states

প্রধান service categories:

1. Buy Verified LinkedIn Accounts
2. Buy Old LinkedIn Accounts
3. Buy LinkedIn PVA Accounts
4. Buy LinkedIn Accounts With Followers

> Website copy, product claims এবং sales process প্রযোজ্য আইন, privacy rules এবং LinkedIn-এর current policies মেনে final review করতে হবে। Misleading guarantee, fake identity, unauthorized access বা policy bypass-এর ভাষা ব্যবহার করা যাবে না।

## 2. Existing Project Assets

বর্তমান project একটি blank HTML starter। Available assets:

### CSS

- Bootstrap 5
- Bootstrap Icons
- Boxicons
- Font Awesome
- Swiper
- Nice Select
- GLightbox
- Main compiled CSS এবং source SCSS (`style.css`, `style.scss`)

### JavaScript

- jQuery 3.7.1
- Bootstrap এবং Popper
- Swiper
- Nice Select
- Waypoints + CounterUp
- GLightbox
- Empty custom script (`custom.js`)

### Existing design tokens

- Heading font: Manrope
- Body font: Inter
- Primary: `#2563EB`
- Primary hover: `#1D4ED8`
- Dark accent: `#0F172A`
- Background: `#F8FAFC`
- Text: `#475569`
- Muted text: `#64748B`
- Border: `#E2E8F0`
- Success: `#16A34A`
- Warning: `#F59E0B`

### Asset usage rules

- Existing local libraries reuse করতে হবে; duplicate library যোগ করা যাবে না।
- Primary icon set হবে Bootstrap Icons। প্রয়োজন না হলে Boxicons/Font Awesome load করা হবে না।
- Project-এ বর্তমানে hero বা product image নেই। Build শুরুর আগে original/licensed visual assets approve করতে হবে।
- LinkedIn logo/trademark এমনভাবে ব্যবহার করা যাবে না যাতে official affiliation বা partnership বোঝায়।
- `style.scss` custom styling-এর source of truth এবং `style.css` compiled output হবে।
- `custom.js`-এ সব custom interaction namespaced এবং section-based হবে।
- Google Fonts production version-এ local files বা privacy-friendly loading দিয়ে replace করার option রাখতে হবে।

## 3. Target Audience and Conversion Goal

Target users:

- SMM agency owners
- B2B lead-generation teams
- Recruiters এবং sales professionals
- Digital marketing freelancers
- Bulk service buyers

Primary conversion path:

`Homepage → Product listing → Product details → Cart → Checkout → Order confirmation`

Secondary goals:

- Pre-sale question করা
- Bulk quotation চাওয়া
- Delivery/refund policy পড়া
- Customer login এবং order status UI দেখা

## 4. Brand and UX Direction

Design হবে clean, trustworthy এবং professional B2B eCommerce style। অতিরিক্ত flashy SMM look, fake urgency বা exaggerated claims এড়িয়ে চলতে হবে।

- Blue primary color action এবং trust-এর জন্য
- Dark navy headings hierarchy-এর জন্য
- White/light-gray surfaces readability-এর জন্য
- Green শুধু verified positive status-এর জন্য
- Amber শুধু real caution/limited status-এর জন্য
- Rounded cards, subtle shadow এবং generous whitespace
- Clear product facts এবং visible policy links
- Keyboard-accessible controls এবং visible focus state
- Mobile-first responsive layout

## 5. Static HTML Page Plan

1. `index.html` — Homepage
2. `shop.html` — All products, category filter এবং sorting
3. `product-details.html` — Single product details
4. `cart.html` — Cart UI
5. `checkout.html` — Checkout UI
6. `order-success.html` — Order confirmation
7. `about.html` — Business overview
8. `faq.html` — Full FAQ
9. `contact.html` — Contact/pre-sale inquiry
10. `bulk-order.html` — Bulk quotation form
11. `login.html` — Login/register UI
12. `dashboard.html` — Customer account/order overview mockup
13. `blog.html` — Blog listing, categories, search এবং pagination
14. `blog-details.html` — Single blog/article details
15. `terms.html` — Terms of service
16. `privacy.html` — Privacy policy
17. `refund-policy.html` — Refund/replacement policy
18. `delivery-policy.html` — Digital delivery policy
19. `404.html` — Not-found page

Static cart, checkout, login এবং dashboard শুধু frontend demonstration হবে; real payment, authentication বা order processing থাকবে না।

## 6. Recommended Homepage Content and Section Order

এই section-এর copy এবং order একটি conversion-focused working draft; fixed নয়। Product data, delivery policy, real reviews এবং brand assets পাওয়ার পরে copy refine করা যাবে। তবে এক page-এ একই benefit/CTA বারবার repeat না করে প্রতিটি section-এর আলাদা purpose রাখতে হবে।

### 6.1 Utility bar

Header-এর আগে একটি slim information bar:

- `Need help with an order? Contact Support`
- `View Delivery Policy`
- Actual support hours, যদি confirmed থাকে

Unverified `24/7`, instant delivery বা limited-time claim দেখানো যাবে না।

### 6.2 Main header

- LinkPVA logo/wordmark
- Navigation: Home, Shop, Categories, Blog, FAQ, Contact
- Product search
- Customer account icon
- Cart icon এবং item count
- Accessible mobile menu
- Current page state

### 6.3 Hero banner — first screen

**Recommended eyebrow:**

> LinkedIn Account Marketplace

**Recommended H1:**

> Buy LinkedIn Accounts with Clear Details and Flexible Options

**Recommended subheading:**

> Compare verified, aged, PVA, and follower-based account listings, review the available specifications, and follow a straightforward ordering process.

**Buttons:**

- `Browse All Accounts` — primary CTA; `shop.html`-এ যাবে
- `How It Works` — secondary CTA; homepage process section-এ যাবে

দুটি button একই destination-এ যাবে না। Primary CTA purchase intent এবং secondary CTA information intent serve করবে।

**Recommended supporting content:**

- Hero-এর পাশে বা নিচে concise product/category preview
- Original/licensed visual বা interface-style illustration
- No fake dashboard screenshot, testimonial বা platform affiliation badge
- Optional microcopy: `Clear account details • Multiple account types • Purchase support`
- `Trusted`, `secure` বা similar claim launch-এর আগে evidence/process দিয়ে verify করতে হবে

### 6.4 Trust badge strip

Icon সহ four-item responsive strip ব্যবহার করা ভালো, যাতে claimগুলো concise এবং mobile-এ readable থাকে:

- Detailed Account Information
- Multiple Account Options
- Clear Delivery Process
- Purchase Support

Confirmed evidence পাওয়ার পরে optional alternatives:

- `Quality Checked Profiles` — documented quality-check process থাকলে
- `Secure Checkout` — real SSL/payment setup থাকলে
- `Fast Account Delivery` — defined delivery SLA থাকলে
- `Thousands of Happy Customers` — customer records দিয়ে verify হলে

Checkmark একা verification প্রমাণ করে না; প্রতিটি strong claim-এর supporting policy/process থাকতে হবে।

### 6.5 Shop by account type

**Heading:**

> Shop LinkedIn Accounts by Type

**Intro:**

> Explore account categories and compare the details that matter to your requirements.

Featured products-এর আগে চারটি service category দ্রুত বোঝানোর জন্য cards:

- **Verified LinkedIn Accounts** — Browse listings with clearly stated verification information.
- **Old/Aged LinkedIn Accounts** — Compare accounts by age range and available profile details.
- **LinkedIn PVA Accounts** — Review PVA-related specifications before choosing an option.
- **LinkedIn Accounts With Followers** — Compare available follower ranges and account attributes.

প্রতিটি card-এ icon/approved image, 1–2 line description এবং `Explore Category` link থাকবে। এতে user সরাসরি সঠিক product group-এ যেতে পারবে এবং SEO/internal linking ভালো হবে।

### 6.6 Featured LinkedIn Accounts

**Heading:**

> Featured LinkedIn Accounts

**Intro:**

> Explore selected account listings and compare their key specifications before placing an order.

Static homepage-এ 4–8টি realistic product card থাকবে। ভবিষ্যৎ dynamic product output মাথায় রেখে একই reusable markup ব্যবহার করতে হবে।

প্রতিটি product card:

- Product title
- Category
- Starting price বা fixed price
- সর্বোচ্চ 3টি key attributes
- Real stock/availability status
- Product image/neutral illustration
- `View Details` button
- Rating শুধু genuine review data থাকলে
- Sale badge শুধু actual discount থাকলে

Section footer CTA: `View All Products` → `shop.html`

### 6.7 Why Choose LinkPVA

**Heading:**

> A Clearer Way to Choose LinkedIn Accounts

**Intro:**

> LinkPVA is designed to make product comparison, ordering, and purchase support easier to understand.

Four cards/columns:

1. **Clear Product Specifications**  
   Review relevant account details and available options before making a decision.
2. **Simple Ordering Experience**  
   Choose a listing, confirm your selection, and follow a straightforward checkout flow.
3. **Transparent Delivery Information**  
   See the expected delivery process and applicable order conditions before purchase.
4. **Purchase Support**  
   Contact the support team when you need help with product selection or an existing order.

Payment protection এবং order handling statement launch-এর আগে selected payment provider/process অনুযায়ী final করতে হবে।

### 6.8 How LinkPVA Works

**Heading:**

> How Ordering Works

**Intro:**

> From product selection to order delivery, the process is designed to stay clear and simple.

1. **Choose Your Account**  
   Compare account types, specifications, prices, and available options.
2. **Complete Your Order**  
   Confirm your selection and complete the checkout information.
3. **Receive Account Details**  
   Receive the relevant order details through the stated delivery method after confirmation.

**Modification:** Static HTML stage-এ `WooCommerce checkout system` লেখা হবে না, কারণ WooCommerce এখনো integrated নয়। Platform-independent checkout wording ব্যবহার হবে।

প্রতিটি step-এ numbered icon, short copy এবং connecting line থাকবে। Delivery method ও estimated time-এর policy link third step-এর পাশে থাকবে।

### 6.9 Customer reviews — Trustpilot + Facebook

**Recommended heading:**

> Customer Feedback

Evidence-backed rating summary available হলে heading `Rated by Our Customers` করা যাবে। `Trusted By Our Customers` strong trust claim হওয়ায় verified review volume ছাড়া ব্যবহার না করাই ভালো।

Desktop layout:

- Left: Trustpilot rating/review area
- Right: Facebook page review area

Mobile layout: single-column stacked cards।

**Implementation rule:**

- Static stage-এ lightweight branded placeholder/card structure থাকবে।
- Official widget শুধু approved business profile URL/ID এবং genuine public reviews পাওয়ার পরে embed হবে।
- Example reviews final page-এ real review হিসেবে publish করা যাবে না। Placeholder হলে স্পষ্ট `Demo content` label অথবা section hidden থাকবে।
- Review text, reviewer name/photo এবং rating ব্যবহারের permission/source রাখতে হবে।
- Third-party widget privacy, cookie consent, loading performance এবং accessibility review করতে হবে।
- Widget load fail করলে fallback link থাকবে: `Read reviews on Trustpilot/Facebook`।
- Trustpilot/Facebook trademark guideline অনুসরণ করতে হবে; custom fake logo/rating badge নয়।

### 6.10 Verified results or service facts

Possible stats:

- `10,000+` Accounts Delivered
- `5,000+` Happy Customers
- `24/7` Customer Support
- `100+` Countries Served

**Strict rule:** সব সংখ্যার internal evidence থাকলেই section publish হবে। Evidence approve না হওয়া পর্যন্ত numerical statistics section বাদ দিয়ে নিচের service facts দেখানো হবে। CounterUp animation real numbers approve হওয়ার পরেই ব্যবহার করা হবে।

Possible evidence-free alternative:

- Detailed Account Information
- Clear Ordering Process
- Multiple Account Categories
- Dedicated Purchase Support

### 6.11 Informational SEO section

**Heading:**

> What to Consider When Choosing a LinkedIn Account

Length: approximately 300–500 words। Content হবে user-first, factual এবং naturally written। Keyword stuffing করা যাবে না।

Target phrases:

- buy LinkedIn accounts
- LinkedIn accounts for sale
- aged LinkedIn accounts
- premium LinkedIn accounts

Recommended content outline:

1. Available account types-এর overview
2. Product details/attributes দেখে কীভাবে choose করতে হবে
3. Ordering এবং delivery process
4. Support, replacement এবং policy transparency
5. Responsible use এবং platform-policy disclaimer

`premium`, `verified`, `safe` বা similar claims-এর clear meaning product specification/policy-তে define করতে হবে। SEO copy দিয়ে ranking guarantee, account performance guarantee বা platform endorsement বোঝানো যাবে না।

### 6.12 FAQ section

**Heading:**

> Frequently Asked Questions

Initial questions:

1. What types of LinkedIn accounts are available?
2. How does account delivery work?
3. How can I choose the right LinkedIn account?
4. Do you provide customer support?
5. What payment methods are available?

Recommended additional questions:

6. What information is included with each account listing?
7. What is your replacement or refund policy?
8. How long does order confirmation and delivery take?
9. How is customer and order information protected?
10. Can I place a bulk order?

Answers final product, payment, delivery এবং refund rules approve হওয়ার পরে লিখতে হবে। Accessible accordion ব্যবহার হবে; FAQ structured data শুধু visible content-এর সঙ্গে exactly match করলে যোগ হবে।

### 6.13 Latest articles — recommended

Homepage থেকে blog discoverable করার জন্য 3টি recent/featured article card দেখানো হবে।

**Heading:**

> Latest Insights and Resources

**Intro:**

> Explore practical guides to help you understand account types, product details, ordering, and responsible account use.

প্রতিটি card-এ approved image, category, title, short excerpt, publish date এবং `Read Article` link থাকবে। Section CTA: `View All Articles` → `blog.html`। Placeholder article publish করা যাবে না; real content প্রস্তুত না থাকলে section hidden থাকবে।

### 6.14 Bulk order CTA

FAQ-এর পরে compact section:

- Heading: `Need LinkedIn Accounts in Bulk?`
- Short factual description
- CTA: `Request a Bulk Quote` → `bulk-order.html`

Minimum quantity বা discount verify না হলে percentage saving claim থাকবে না।

### 6.15 Final CTA

**Heading:**

> Ready to Compare Available LinkedIn Accounts?

**Copy:**

> Browse current listings, review the available details, and choose the option that fits your requirements.

**Buttons:**

- `Browse All Products`
- `Contact Support`

### 6.16 Footer

- Logo এবং short business description
- Product category links
- Company/help links, Blog এবং article categories
- Delivery, refund, privacy এবং terms links
- Contact details
- Accepted payment methods — confirmed gateways only
- Copyright
- Independent business/trademark disclaimer

## 7. Product UI Architecture

Static template-এ variable product-এর সম্ভাব্য state visualভাবে cover করতে হবে, যদিও কোনো real commerce logic থাকবে না।

### Product categories

- Verified Accounts
- Old/Aged Accounts
- PVA Accounts
- Accounts With Followers

### Possible product attributes

- Account age/range
- Country/region
- Connection/follower range
- Verification status
- Email included: yes/no
- Profile completeness
- Delivery method
- Estimated delivery window
- Replacement window
- Stock status

### Product details page

- Breadcrumb
- Product title, price এবং stock
- Short factual summary
- Product gallery/approved visual
- Variation selectors
- Quantity control এবং static add-to-cart interaction
- Specification table
- Delivery workflow
- Buyer requirements
- Replacement/refund conditions
- Disclaimer
- FAQ
- Genuine reviews or empty state
- Related products

Account credentials বা sensitive delivery data public HTML, analytics event, URL query string বা page source-এ রাখা যাবে না।

## 8. Static HTML Coding Standards

- Correct `<!doctype html>`, language, charset এবং viewport
- Semantic landmarks: `header`, `nav`, `main`, `section`, `article`, `aside`, `footer`
- প্রতি page-এ একটি meaningful `h1`; logical heading hierarchy
- প্রতিটি section-এর descriptive heading বা accessible label
- Custom classes-এ `linkpva-` prefix
- JavaScript hooks-এর জন্য `data-*` attributes; CSS class-এর ওপর unnecessary dependency নয়
- Inline CSS, inline JavaScript এবং inline event handler নয়
- Shared layout ও component markup সব page-এ consistent
- Relative URLs; hardcoded production domain নয়
- সব form control-এর visible label, name, help/error state
- Buttons action-এর জন্য এবং links navigation-এর জন্য
- Valid lists, tables এবং interactive element nesting
- Images-এ `alt`, `width`, `height`; decorative image-এর empty alt
- User-visible text HTML-এর মধ্যে পরিষ্কারভাবে থাকবে, image-এর মধ্যে নয়
- Bootstrap grid ব্যবহার করা যাবে, কিন্তু meaningful content structure framework-independent থাকবে
- Cart, checkout, login এবং account UI-তে loading, empty, validation, error এবং success state design করতে হবে
- Future conversion সহজ করতে product card/notice/form markup reusable রাখতে হবে; এখন কোনো PHP/WordPress code নয়

## 9. Reusable Component Inventory

- Utility bar
- Desktop header/navigation
- Accessible mobile menu
- Search form
- Account এবং cart buttons
- Primary, secondary, outline এবং text buttons
- Breadcrumb
- Category card
- Product card
- Price এবং status badge
- Product attribute list
- Quantity control
- Filter/sort controls
- Pagination
- Blog/article card
- Blog category/tag controls
- Article metadata এবং author block
- Table of contents
- Social share/copy-link controls
- Related article card
- Trust item
- Process step
- Review/widget fallback card
- Statistic/fact item
- FAQ accordion
- Alerts/notices
- Form fields এবং validation messages
- Modal/lightbox only where necessary
- Empty, loading, error এবং success states
- Final CTA
- Footer
- Back-to-top control

## 10. Existing Library Usage Map

| Asset | Planned use |
|---|---|
| Bootstrap | Responsive grid, utilities এবং mobile navigation foundation |
| Bootstrap Icons | Primary UI icon set |
| Font Awesome / Boxicons | Only when a required icon is unavailable |
| Swiper | Product/review carousel only if UX benefits; desktop grid preferred |
| Nice Select | Product/filter selects with native fallback |
| GLightbox | Approved product media preview |
| Waypoints + CounterUp | Verified statistics only |
| `style.scss` | Custom style source |
| `style.css` | Compiled browser stylesheet |
| `custom.js` | UI initialization and interaction |

Unused library কোনো page-এ load করা হবে না।

## 11. Responsive Plan

Existing breakpoints:

- Mobile: 0–575px
- Small tablet: 576–767px
- Tablet: 768–991px
- Laptop: 992–1199px
- Desktop: 1200–1399px
- Large desktop: 1400px+

Key requirements:

- 320px width-এ horizontal overflow নয়
- Touch-friendly header, accordion, filters এবং controls
- Product grid: 1 → 2 → 3/4 columns, content অনুযায়ী
- Trust badges এবং process steps clean wrap/stack করবে
- Reviews mobile-এ one-column
- Stats 2-column বা 1-column fallback
- Tables mobile-এ accessible horizontal scroll বা card layout
- Checkout mobile-এ single column এবং clear order summary
- Sticky element content/browser UI ঢাকবে না

## 12. Accessibility Requirements

Target: WCAG 2.2 AA practical compliance.

- Adequate color contrast
- Visible `:focus-visible`
- Full keyboard navigation
- Skip-to-content link
- Mobile menu/modal focus management
- Icon-only button-এর accessible name
- Decorative icons screen reader থেকে hidden
- Meaningful images-এর accurate alt text
- Form error শুধু color দিয়ে নয়
- Accordion/carousel-এর correct ARIA state
- Reduced-motion support
- No autoplay carousel/video
- Dynamic status-এর প্রয়োজন হলে live region
- Third-party review widgets-এর accessible fallback

## 13. Performance Plan

- Required assets only
- Production CSS/JS minified; SCSS/source preserved
- Non-critical scripts deferred
- Below-the-fold images lazy-loaded
- Hero/LCP image optimized WebP/AVIF ও responsive source
- Image dimensions set করে layout shift কমানো
- Duplicate icon libraries avoid করা
- Third-party review widgets lazy-load/on-interaction where practical
- No unnecessary animation বা background video
- All local pages-এর console এবং network audit
- Target Lighthouse direction: Performance, Accessibility, Best Practices এবং SEO প্রতিটিতে 90+

## 14. SEO Plan

- Unique title এবং meta description
- One H1 এবং logical heading hierarchy
- Descriptive internal links
- Canonical placeholder strategy without fake live domain
- Open Graph metadata structure
- Product cards এবং SEO copy-এর content duplication avoid করা
- Accurate price/availability/review data only
- Breadcrumb markup
- FAQ structured data visible answers-এর সঙ্গে exact match হলে
- Keyword use natural; no stuffing
- Policy/help pages footer থেকে discoverable
- Final structured data integration future dynamic stage-এর আগে নয়, static stage-এ sample JSON-LD clearly documented থাকলে তবেই

### Blog listing requirements

- Page H1: `LinkedIn and SMM Resources` অথবা approved equivalent
- Featured article followed by a responsive article grid
- Category filter, keyword search UI এবং pagination
- প্রতিটি card-এ image, category, title, excerpt, publish date এবং read-more link
- Card-এর title একমাত্র primary article link হবে; unnecessary duplicate links avoid করতে হবে
- Empty search/category result state

### Blog details requirements

- Breadcrumb এবং article category
- Single descriptive H1
- Publish/update date, author এবং estimated reading time
- Hero/featured image with descriptive alt text
- Readable content width এবং logical H2/H3 hierarchy
- Optional table of contents for long articles
- Lists, quotes, tables এবং callout styles
- Contextual internal links to relevant products, categories এবং policy/help content
- Author box, tags এবং related articles
- Previous/next article navigation
- Share buttons হবে explicit user action; automatic tracking নয়
- Article schema শুধু visible author/date/content-এর সঙ্গে match করলে
- Unique title, meta description, canonical এবং Open Graph data
- Thin, copied, keyword-stuffed বা misleading content publish করা যাবে না

## 15. Trust, Privacy and Security Rules

- Static demo-তে কোনো real payment বা credential collection নয়
- Checkout/login form submit হলে demo behavior স্পষ্ট করা
- Card details project files/local storage-এ রাখা নয়
- External widget/cookie load-এর আগে consent requirement assess করা
- Minimum necessary customer data fields
- Fake reviews, false scarcity, unverifiable numbers বা security seal নয়
- Real business identity এবং working support details launch-এর আগে required
- Delivery/refund/replacement policy product page ও footer থেকে accessible
- Product/service legality এবং platform-policy review launch gate হবে

## 16. Content Required Before Coding

- Final brand name এবং logo
- Business email/support channel এবং hours
- Currency এবং target region
- Exact product list, price এবং stock examples
- প্রতিটি product-এর real attributes
- Delivery time, method এবং confirmation process
- Refund/replacement rules
- Bulk pricing logic
- Planned payment methods
- Trustpilot business profile URL/ID
- Facebook page URL/ID
- Genuine reviews এবং usage permission
- Verified statistics এবং supporting records
- Legal business details এবং policy copy
- Licensed product/hero visuals
- Trademark/independent-business disclaimer

## 17. Static Website Implementation Phases

### Phase A — Content and claim approval

- Homepage content review
- Brand, product matrix এবং policies approve
- Reviews/stats evidence verify
- Licensed visuals approve

### Phase B — Design foundation

- Colors, typography এবং design tokens finalize
- Spacing, radius, shadows, buttons এবং forms
- Header/footer এবং common components
- Homepage desktop/mobile visual direction

### Phase C — Homepage static build

- Approved section order implement
- Responsive behavior
- Interactions এবং fallback states
- Content and claim QA

### Phase D — Remaining static pages

- Shop/category
- Product details
- Cart/checkout/order confirmation
- Login/dashboard UI
- About, FAQ, contact এবং bulk order
- Blog listing এবং blog details
- Policy এবং 404 pages

### Phase E — Static QA

- HTML validation
- Cross-browser and responsive tests
- Keyboard/accessibility smoke test
- Broken link, missing asset এবং console error check
- Performance audit
- Content, review, statistics এবং policy review

WordPress theme conversion এই document-এর current scope-এর বাইরে এবং static site approval-এর পরে আলাদা phase হিসেবে plan করা হবে।

## 18. Acceptance Checklist

- Homepage approved content/order অনুযায়ী complete
- All approved pages responsive এবং consistent
- No placeholder content accidentally presented as real
- No fake claims, reviews, ratings, statistics বা scarcity
- Four service categories clearly represented
- Product/listing/detail states consistent
- Blog listing/detail pages এবং article components consistent
- Keyboard navigation এবং visible focus works
- Forms show validation, error এবং success states
- Static checkout/login clearly identified as demo UI where necessary
- No sensitive information frontend/source/local storage-এ exposed
- No broken links, missing assets বা blocking console errors
- HTML validates এবং headings/landmarks are logical
- Required policy links are present
- Desktop, tablet এবং mobile QA approved

## 19. Decisions Required Before Homepage Coding

1. Brand name `LinkPVA` final কি না
2. Logo/wordmark ready কি না
3. Hero-তে visual থাকবে নাকি product preview cards
4. Primary CTA `shop.html` এবং secondary CTA `How It Works` section—এই routing approve কি না
5. Trust badge claims-এর কোনগুলো evidence দিয়ে confirm করা যাবে
6. Featured products-এর exact sample data
7. Trustpilot এবং Facebook real profile/widget details
8. Genuine reviews available কি না
9. Statistics-এর কোন সংখ্যাগুলো verified
10. Delivery time/process
11. Support channel এবং actual hours
12. Currency এবং target region
13. Refund/replacement policy
14. Product visuals-এর source/license
15. Homepage-এর recommended clear, professional B2B tone approve কি না

---

এই guideline approve হওয়ার পর প্রথম implementation milestone হবে **design foundation + responsive homepage static HTML**। এখন কোনো WordPress theme structure বা PHP code তৈরি করা হবে না।
