.class public Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/SSWebView$ox;


# static fields
.field private static final ig:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final d:Lcom/bytedance/sdk/openadsdk/core/c;

.field private dq:Lcom/bytedance/sdk/openadsdk/ig/ox;

.field protected volatile ia:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected iw:Z

.field private kk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mn:Z

.field private no:Z

.field private o:J

.field protected final ox:Landroid/content/Context;

.field protected final p:Ljava/lang/String;

.field protected s:Lcom/bytedance/sdk/openadsdk/core/ig/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ig:Ljava/util/HashSet;

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ico"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->mn:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->o:J

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->no:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->mn:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->o:J

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->no:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;Lcom/bytedance/sdk/openadsdk/ig/ox;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->mn:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->o:J

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->no:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/ig/ox;

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ig:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "image/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private dq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0xc3

    if-nez v0, :cond_1

    const-string v0, "main"

    const-string v1, "internal"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "weixin://wap/pay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "weixin://dl/business/?ticket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "alipays://platformapi/startapp?appId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    const-string v0, "landingpage"

    const-string v1, "lp_pay"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->no:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->o:J

    return-void
.end method

.method public d()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Z)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d()Z

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/r/n;->dq(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/bytedance/sdk/openadsdk/core/c;Landroid/webkit/WebResourceRequest;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d()Z

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/r/n;->dq(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Landroid/webkit/WebView;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->iw:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/no;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->mn:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v1, "Accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v1, "Accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    const-string p1, "SslError: "

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const-string v0, "SslError: unknown"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->s:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "WebChromeClient"

    if-nez p2, :cond_3

    const-string p2, "System killed the WebView rendering process to reclaim memory. Recreating..."

    invoke-static {v1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/s/s;->d()V

    :cond_2
    return v0

    :cond_3
    const-string p2, "The WebView rendering process crashed!"

    invoke-static {v1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/s/s;->d()V

    :cond_5
    return v0
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->no:Z

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/ig/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/ig/ox;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytedance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/r;->dq(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/c;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v6, "uri"

    invoke-virtual {v5, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    iget-object v6, v4, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lg/hat;->k()Lg/cpo;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    const/16 v6, 0xf

    invoke-interface {v3, v6, v4, v5}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/o/s;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/p;

    move-result-object v4

    instance-of v5, v4, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ox(Z)V

    :cond_3
    invoke-interface {v4, v3, v7}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/ox;->dq(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    :cond_6
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v3

    const-string v4, "is_landing_page_open_market"

    invoke-interface {v3, v4, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    if-eqz v7, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/q;->dq(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->n()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "lp_open_dpl"

    invoke-static {v4, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "lp_deeplink_fail_realtime"

    const-string v6, "lp_openurl_failed"

    if-eqz v1, :cond_9

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;

    invoke-direct {v2, p0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    const-string v6, "main"

    const-string v7, "internal"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v1, v5, v2, v6}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    return v0

    :cond_8
    invoke-static {v4, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox:Landroid/content/Context;

    invoke-direct {p0, v1, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->dq(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "lp_openurl"

    invoke-static {v4, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lp_deeplink_success_realtime"

    invoke-static {v4, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    :try_start_3
    invoke-static {v4, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    const-string v2, "WebChromeClient"

    const-string v3, "shouldOverrideUrlLoading"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
