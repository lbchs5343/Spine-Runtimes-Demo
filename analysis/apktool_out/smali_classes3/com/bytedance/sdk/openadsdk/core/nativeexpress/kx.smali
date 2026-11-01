.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;
.super Lcom/bytedance/sdk/component/adexpress/s/dq;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ig;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mp;


# instance fields
.field private cd:Lcom/bytedance/sdk/openadsdk/q/ia;

.field private f:I

.field private fw:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

.field private gh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

.field private i:J

.field private ia:Ljava/lang/String;

.field private ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

.field private jy:Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private mn:Landroid/content/Context;

.field private final mp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/o/d/ox;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/lang/String;

.field private o:Lcom/bytedance/sdk/openadsdk/iw/dq;

.field private q:Lcom/bytedance/sdk/openadsdk/core/c;

.field private r:Lcom/bytedance/sdk/component/adexpress/d/kk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/iw/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/adexpress/d/kk;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/s/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mp:Ljava/util/Map;

    const/16 v0, 0x8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->i:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->o:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ox()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->no:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->r:Lcom/bytedance/sdk/component/adexpress/d/kk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->dq(Lcom/bytedance/sdk/component/adexpress/theme/dq;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mp()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->jy()V

    return-void
.end method

.method private cd()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView$d;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adVisible"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "expressAdShow"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ou()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "v3"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mp:Ljava/util/Map;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->mn()V

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/r;->dq(Lcom/bytedance/sdk/component/mp/dq;IZ)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAppCacheEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setSupportZoom(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBuiltInZoomControls(Z)V

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUseWideViewPort(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "dynamic_show_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getRenderEngineCacheType()I

    move-result p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->no()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "engine_version"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->no()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "engine_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private fw()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    const-string v2, "splash_ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    return-object p0
.end method

.method private ox(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    return-object p0
.end method

.method private p(I)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->x()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->i:J

    sub-long/2addr v2, v6

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->i:J

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public W_()Lcom/bytedance/sdk/openadsdk/core/c;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    return-object v0
.end method

.method public b_(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "themeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ox(I)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->p(I)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->f:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->d(Z)V

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public dq(FF)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result p2

    int-to-float p2, p2

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(FF)V

    return-void
.end method

.method public dq(ZI)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(ZI)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->o:Lcom/bytedance/sdk/openadsdk/iw/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(ZI)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->o:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/dq;->d(Z)V

    :cond_0
    return-void
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->gh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    return-object v0
.end method

.method public ia()V
    .locals 3

    const-string v0, "expressShow"

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->ia()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ig()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/adexpress/d/no;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->mn(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->o:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    return-void
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "expressWebviewRecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public jy()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cd/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;-><init>()V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/cd/p;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/cd/p;-><init>()V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/cd/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/cd/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v2, "subscribe_app_ad"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "adInfo"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "webview_time_track"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "download_app_ad"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "embeded_ad"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/q/ia$dq;->d:Lcom/bytedance/sdk/openadsdk/q/ia$dq;

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/q/ia$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia$dq;

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/q/ox;Lcom/bytedance/sdk/openadsdk/q/dq;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/q/ia$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const-string v1, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mn:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->fw()Z

    move-result v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->no()Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ig/p;ZLcom/bytedance/sdk/openadsdk/q/ia;Lcom/bytedance/sdk/component/adexpress/d/mp;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->gh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->r:Lcom/bytedance/sdk/component/adexpress/d/kk;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq(Lcom/bytedance/sdk/openadsdk/q/ia;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->o()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->iw()Lcom/bytedance/sdk/component/dq/fw;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx$2;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public kk()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->fw:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Lcom/bytedance/sdk/component/adexpress/dq;)V

    return-void
.end method

.method public mp()V
    .locals 2

    const-string v0, "feed_video_middle_page"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->g()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->g()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->s:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->g()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->jy:Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->s:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->jy:Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->o()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->fw:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->d(Lcom/bytedance/sdk/component/adexpress/dq;)Z

    :cond_0
    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->no()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setOnShakeListener(Lcom/bytedance/sdk/component/widget/SSWebView$d;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->s()V

    :cond_3
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->mp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->cd:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->u()V

    return-void
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->kk:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->o:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const-string v0, "rewarded_video"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "fullscreen_interstitial_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->q:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/component/adexpress/s/d;)V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
