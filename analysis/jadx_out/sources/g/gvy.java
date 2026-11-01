package g;

import org.chromium.support_lib_boundary.util.Features;

/* loaded from: classes.dex */
public abstract class gvy {

    /* renamed from: a, reason: collision with root package name */
    public static final fpc f18848a;

    /* renamed from: b, reason: collision with root package name */
    public static final fpc f18849b;

    /* renamed from: c, reason: collision with root package name */
    public static final fpc f18850c;

    /* renamed from: d, reason: collision with root package name */
    public static final fpc f18851d;

    /* renamed from: e, reason: collision with root package name */
    public static final fpc f18852e;

    static {
        new fpc(Features.VISUAL_STATE_CALLBACK, Features.VISUAL_STATE_CALLBACK, 0);
        new fpc(Features.OFF_SCREEN_PRERASTER, Features.OFF_SCREEN_PRERASTER, 0);
        new fpc(Features.SAFE_BROWSING_ENABLE, Features.SAFE_BROWSING_ENABLE, 3);
        new fpc(Features.DISABLED_ACTION_MODE_MENU_ITEMS, Features.DISABLED_ACTION_MODE_MENU_ITEMS, 1);
        new fpc(Features.START_SAFE_BROWSING, Features.START_SAFE_BROWSING, 4);
        new fpc(Features.SAFE_BROWSING_WHITELIST, Features.SAFE_BROWSING_WHITELIST, 4);
        new fpc(Features.SAFE_BROWSING_WHITELIST, Features.SAFE_BROWSING_ALLOWLIST, 4);
        new fpc(Features.SAFE_BROWSING_ALLOWLIST, Features.SAFE_BROWSING_WHITELIST, 4);
        new fpc(Features.SAFE_BROWSING_ALLOWLIST, Features.SAFE_BROWSING_ALLOWLIST, 4);
        new fpc(Features.SAFE_BROWSING_PRIVACY_POLICY_URL, Features.SAFE_BROWSING_PRIVACY_POLICY_URL, 4);
        new fpc(Features.SERVICE_WORKER_BASIC_USAGE, Features.SERVICE_WORKER_BASIC_USAGE, 1);
        new fpc(Features.SERVICE_WORKER_CACHE_MODE, Features.SERVICE_WORKER_CACHE_MODE, 1);
        new fpc(Features.SERVICE_WORKER_CONTENT_ACCESS, Features.SERVICE_WORKER_CONTENT_ACCESS, 1);
        new fpc(Features.SERVICE_WORKER_FILE_ACCESS, Features.SERVICE_WORKER_FILE_ACCESS, 1);
        new fpc(Features.SERVICE_WORKER_BLOCK_NETWORK_LOADS, Features.SERVICE_WORKER_BLOCK_NETWORK_LOADS, 1);
        new fpc(Features.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST, Features.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST, 1);
        new fpc(Features.RECEIVE_WEB_RESOURCE_ERROR, Features.RECEIVE_WEB_RESOURCE_ERROR, 0);
        new fpc(Features.RECEIVE_HTTP_ERROR, Features.RECEIVE_HTTP_ERROR, 0);
        new fpc(Features.SHOULD_OVERRIDE_WITH_REDIRECTS, Features.SHOULD_OVERRIDE_WITH_REDIRECTS, 1);
        new fpc(Features.SAFE_BROWSING_HIT, Features.SAFE_BROWSING_HIT, 4);
        new fpc(Features.WEB_RESOURCE_REQUEST_IS_REDIRECT, Features.WEB_RESOURCE_REQUEST_IS_REDIRECT, 1);
        new fpc(Features.WEB_RESOURCE_ERROR_GET_DESCRIPTION, Features.WEB_RESOURCE_ERROR_GET_DESCRIPTION, 0);
        new fpc(Features.WEB_RESOURCE_ERROR_GET_CODE, Features.WEB_RESOURCE_ERROR_GET_CODE, 0);
        new fpc(Features.SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY, Features.SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY, 4);
        new fpc(Features.SAFE_BROWSING_RESPONSE_PROCEED, Features.SAFE_BROWSING_RESPONSE_PROCEED, 4);
        new fpc(Features.SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL, Features.SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL, 4);
        new fpc(Features.WEB_MESSAGE_PORT_POST_MESSAGE, Features.WEB_MESSAGE_PORT_POST_MESSAGE, 0);
        new fpc(Features.WEB_MESSAGE_PORT_CLOSE, Features.WEB_MESSAGE_PORT_CLOSE, 0);
        f18850c = new fpc(Features.WEB_MESSAGE_ARRAY_BUFFER, Features.WEB_MESSAGE_ARRAY_BUFFER, 2);
        new fpc(Features.WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK, Features.WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK, 0);
        new fpc(Features.CREATE_WEB_MESSAGE_CHANNEL, Features.CREATE_WEB_MESSAGE_CHANNEL, 0);
        new fpc(Features.POST_WEB_MESSAGE, Features.POST_WEB_MESSAGE, 0);
        new fpc(Features.WEB_MESSAGE_CALLBACK_ON_MESSAGE, Features.WEB_MESSAGE_CALLBACK_ON_MESSAGE, 0);
        f18851d = new fpc(Features.GET_WEB_VIEW_CLIENT, Features.GET_WEB_VIEW_CLIENT, 3);
        new fpc(Features.GET_WEB_CHROME_CLIENT, Features.GET_WEB_CHROME_CLIENT, 3);
        new fpc(Features.GET_WEB_VIEW_RENDERER, Features.GET_WEB_VIEW_RENDERER, 6);
        new fpc(Features.WEB_VIEW_RENDERER_TERMINATE, Features.WEB_VIEW_RENDERER_TERMINATE, 6);
        new fpc(Features.TRACING_CONTROLLER_BASIC_USAGE, Features.TRACING_CONTROLLER_BASIC_USAGE, 5);
        new gze();
        new gze();
        new fpc(Features.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE, Features.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE, 6);
        new wv();
        new fpc("PROXY_OVERRIDE", Features.PROXY_OVERRIDE, 2);
        f18852e = new fpc("MULTI_PROCESS", Features.MULTI_PROCESS_QUERY, 2);
        new fpc(Features.FORCE_DARK, Features.FORCE_DARK, 6);
        new fpc("FORCE_DARK_STRATEGY", Features.FORCE_DARK_BEHAVIOR, 2);
        f18848a = new fpc(Features.WEB_MESSAGE_LISTENER, Features.WEB_MESSAGE_LISTENER, 2);
        new fpc("DOCUMENT_START_SCRIPT", Features.DOCUMENT_START_SCRIPT, 2);
        new fpc(Features.PROXY_OVERRIDE_REVERSE_BYPASS, Features.PROXY_OVERRIDE_REVERSE_BYPASS, 2);
        new fpc(Features.GET_VARIATIONS_HEADER, Features.GET_VARIATIONS_HEADER, 2);
        new fpc(Features.ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY, Features.ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY, 2);
        new fpc(Features.GET_COOKIE_INFO, Features.GET_COOKIE_INFO, 2);
        new fpc(Features.REQUESTED_WITH_HEADER_ALLOW_LIST, Features.REQUESTED_WITH_HEADER_ALLOW_LIST, 2);
        new fpc(Features.USER_AGENT_METADATA, Features.USER_AGENT_METADATA, 2);
        new djr(Features.MULTI_PROFILE, Features.MULTI_PROFILE, 2);
        new fpc("ATTRIBUTION_REGISTRATION_BEHAVIOR", Features.ATTRIBUTION_BEHAVIOR, 2);
        new fpc("WEBVIEW_MEDIA_INTEGRITY_API_STATUS", Features.WEBVIEW_MEDIA_INTEGRITY_API_STATUS, 2);
        f18849b = new fpc(Features.MUTE_AUDIO, Features.MUTE_AUDIO, 2);
    }
}
