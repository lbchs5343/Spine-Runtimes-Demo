.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/s;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


# instance fields
.field private d:Lcom/bytedance/msdk/api/dq/d;

.field private ox:Lcom/bytedance/msdk/ox/s/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V
    .locals 2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_0
    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/p;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/p;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/ox/s/d/d;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    if-nez p3, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "load ad fail adSlot is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    if-eqz p4, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v1

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_2
    const-string p1, "tt_ad_origin_type"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;->d(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)V

    return-void

    :cond_4
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_6
    :goto_0
    return-void
.end method
