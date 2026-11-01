.class public Lcom/bytedance/msdk/dq/ox/no;
.super Lcom/bytedance/msdk/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/dq;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PangleNativeLoader_loadNativeAd_renderControl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ox(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    new-instance v0, Lcom/bytedance/msdk/dq/ox/kk;

    invoke-direct {v0}, Lcom/bytedance/msdk/dq/ox/kk;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/bytedance/msdk/dq/ox/kk;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/dq/dq;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_0
    new-instance v0, Lcom/bytedance/msdk/dq/ox/o;

    invoke-direct {v0}, Lcom/bytedance/msdk/dq/ox/o;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/bytedance/msdk/dq/ox/o;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/dq/dq;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "load ad fail adSlot is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->kk()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/bytedance/msdk/dq/ox/d;->dq(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    invoke-static {p1, v3}, Lcom/bytedance/msdk/dq/ox/d;->dq(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_2
    const-string p1, "tt_ad_origin_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/bytedance/msdk/dq/ox/no;->dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V

    return-void

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/bytedance/msdk/dq/ox/no;->d(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V

    return-void

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->ox()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method
