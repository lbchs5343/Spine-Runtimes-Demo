.class public abstract Lg/gvy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fpc;

.field public static final b:Lg/fpc;

.field public static final c:Lg/fpc;

.field public static final d:Lg/fpc;

.field public static final e:Lg/fpc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/fpc;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "OFF_SCREEN_PRERASTER"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_ENABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "START_SAFE_BROWSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const/4 v1, 0x4

    const-string v2, "SAFE_BROWSING_WHITELIST"

    invoke-direct {v0, v2, v2, v1}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v3, "SAFE_BROWSING_ALLOWLIST"

    invoke-direct {v0, v2, v3, v1}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    invoke-direct {v0, v3, v2, v1}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    invoke-direct {v0, v3, v3, v1}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "RECEIVE_HTTP_ERROR"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_HIT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/gvy;->c:Lg/fpc;

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "POST_WEB_MESSAGE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "GET_WEB_VIEW_CLIENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/gvy;->d:Lg/fpc;

    new-instance v0, Lg/fpc;

    const-string v1, "GET_WEB_CHROME_CLIENT"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "GET_WEB_VIEW_RENDERER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/gze;

    invoke-direct {v0}, Lg/gze;-><init>()V

    new-instance v0, Lg/gze;

    invoke-direct {v0}, Lg/gze;-><init>()V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/wv;

    invoke-direct {v0}, Lg/wv;-><init>()V

    new-instance v0, Lg/fpc;

    const-string v1, "PROXY_OVERRIDE:3"

    const/4 v2, 0x2

    const-string v3, "PROXY_OVERRIDE"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "MULTI_PROCESS_QUERY"

    const-string v3, "MULTI_PROCESS"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/gvy;->e:Lg/fpc;

    new-instance v0, Lg/fpc;

    const-string v1, "FORCE_DARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "FORCE_DARK_BEHAVIOR"

    const/4 v2, 0x2

    const-string v3, "FORCE_DARK_STRATEGY"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEB_MESSAGE_LISTENER"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/gvy;->a:Lg/fpc;

    new-instance v0, Lg/fpc;

    const-string v1, "DOCUMENT_START_SCRIPT:1"

    const-string v3, "DOCUMENT_START_SCRIPT"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "GET_VARIATIONS_HEADER"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "GET_COOKIE_INFO"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    invoke-direct {v0, v1, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "USER_AGENT_METADATA"

    const-string v3, "USER_AGENT_METADATA"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/djr;

    const-string v1, "MULTI_PROFILE"

    const-string v3, "MULTI_PROFILE"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "ATTRIBUTION_BEHAVIOR"

    const-string v3, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "WEBVIEW_INTEGRITY_API_STATUS"

    const-string v3, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/fpc;

    const-string v1, "MUTE_AUDIO"

    const-string v3, "MUTE_AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lg/fpc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/gvy;->b:Lg/fpc;

    return-void
.end method
