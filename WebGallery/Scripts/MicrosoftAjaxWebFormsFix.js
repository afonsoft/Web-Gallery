/**
 * This is required to fix a bug in MicrosoftAjaxWebForms.js
 * in Firefox where if window.event is not initialized, it loops stack
 * via arguments.callee.caller chain and breaks because of the
 * "use strict" mode
 *
 * Hacking window.event property is required because it is
 * not settable in Internet Explorer
 */
function hackEventWithinDoPostBack() {
    var originalEventDescriptor = Object.getOwnPropertyDescriptor(Window.prototype, "event");
    var hackEventVariable = false;
    var eventPropertyHolder;
    Object.defineProperty(window, "event", {
        configurable: true,
        get: function get() {
            var result = originalEventDescriptor ? originalEventDescriptor.get.apply(this, arguments) : eventPropertyHolder;
            if (result || !hackEventVariable)
                return result;
            return {};
        },
        set: function set(value) {
            if (originalEventDescriptor)
                originalEventDescriptor.set.apply(this, arguments);
            else
                eventPropertyHolder = value;
        }
    });

    var originalDoPostBack = window.__doPostBack;

    window.__doPostBack = function hackedDoPostBack() {
        hackEventVariable = true;
        originalDoPostBack.apply(this, arguments);
        hackEventVariable = false;
    };
}