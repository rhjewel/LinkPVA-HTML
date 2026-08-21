(function () {
    "use strict";

    const body = document.body;
    const header = document.querySelector("[data-header]");
    const menuToggle = document.querySelector("[data-menu-toggle]");
    const mobileMenu = document.querySelector("[data-mobile-menu]");
    const searchToggle = document.querySelector("[data-search-toggle]");
    const searchForm = document.querySelector("[data-search-form]");
    const backToTop = document.querySelector("[data-back-to-top]");
    const currentYear = document.querySelector("[data-current-year]");

    function setMenuState(isOpen) {
        if (!menuToggle || !mobileMenu) return;

        menuToggle.setAttribute("aria-expanded", String(isOpen));
        menuToggle.querySelector(".visually-hidden").textContent = isOpen ? "Close navigation" : "Open navigation";
        menuToggle.querySelector("i").className = isOpen ? "bi bi-x-lg" : "bi bi-list";
        mobileMenu.classList.toggle("is-open", isOpen);
        body.classList.toggle("is-menu-open", isOpen);
    }

    if (menuToggle && mobileMenu) {
        menuToggle.addEventListener("click", function () {
            setMenuState(menuToggle.getAttribute("aria-expanded") !== "true");
        });

        mobileMenu.addEventListener("click", function (event) {
            if (event.target.closest("a") || event.target === mobileMenu) {
                setMenuState(false);
            }
        });
    }

    if (searchToggle && searchForm) {
        searchToggle.addEventListener("click", function () {
            const willOpen = searchForm.hidden;
            searchForm.hidden = !willOpen;
            searchToggle.setAttribute("aria-expanded", String(willOpen));

            if (willOpen) {
                searchForm.querySelector("input").focus();
            }
        });
    }

    document.querySelectorAll("[data-accordion] button").forEach(function (button) {
        button.addEventListener("click", function () {
            const accordion = button.closest("[data-accordion]");
            const item = button.closest(".linkpva-accordion-item");
            const panel = document.getElementById(button.getAttribute("aria-controls"));
            const willOpen = button.getAttribute("aria-expanded") !== "true";

            accordion.querySelectorAll(".linkpva-accordion-item").forEach(function (currentItem) {
                const currentButton = currentItem.querySelector("button");
                const currentPanel = document.getElementById(currentButton.getAttribute("aria-controls"));
                currentButton.setAttribute("aria-expanded", "false");
                currentPanel.hidden = true;
                currentItem.classList.remove("is-open");
            });

            if (willOpen) {
                button.setAttribute("aria-expanded", "true");
                panel.hidden = false;
                item.classList.add("is-open");
            }
        });
    });

    function updateScrollState() {
        if (header) header.classList.toggle("is-sticky", window.scrollY > 40);
        if (backToTop) backToTop.classList.toggle("is-visible", window.scrollY > 500);
    }

    window.addEventListener("scroll", updateScrollState, { passive: true });
    updateScrollState();

    if (backToTop) {
        backToTop.addEventListener("click", function () {
            window.scrollTo({ top: 0, behavior: "smooth" });
        });
    }

    document.addEventListener("keydown", function (event) {
        if (event.key === "Escape") {
            setMenuState(false);

            if (searchForm && !searchForm.hidden) {
                searchForm.hidden = true;
                searchToggle.setAttribute("aria-expanded", "false");
                searchToggle.focus();
            }
        }
    });

    window.addEventListener("resize", function () {
        if (window.innerWidth >= 992) setMenuState(false);
    });

    if (currentYear) currentYear.textContent = new Date().getFullYear();
}());
