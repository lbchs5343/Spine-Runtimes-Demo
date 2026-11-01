.class public Lcom/bytedance/sdk/openadsdk/core/q/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field public dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

.field private volatile ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/q/s;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/q/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq(D)V

    return-void
.end method

.method private d(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-double v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq(D)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->ox:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->ia:[B

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->ia:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->ox()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "GET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dq(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/q/p;->d(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/s;->ox()V

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/s;->d()V

    :cond_2
    return-object p1
.end method

.method public dq(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p2

    const-string p2, "content-type"

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "Content-Type"

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_1
    move-object v1, p2

    if-eqz v1, :cond_2

    const-string p2, "font/ttf"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const-string v4, "OK"

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, ""

    const/16 v3, 0xc8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0

    :cond_3
    move-object v6, p1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, ""

    invoke-direct {p1, v1, p2, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p1, v5}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p;->dq:Lcom/bytedance/sdk/openadsdk/core/q/s;

    :cond_0
    return-void
.end method
