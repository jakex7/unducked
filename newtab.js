document.addEventListener('DOMContentLoaded', function () {
    chrome.tabs.getCurrent(function (tab) {
        chrome.tabs.update(tab.id, {url: "chrome://new-tab-page"});
    });
});
