.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;,
        Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;,
        Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/msdk/api/dq/d;

.field private ox:Lcom/bytedance/msdk/ox/s/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->fw()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pangle banner native express autoHeight:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TTMediationSDK"

    invoke-static {v6, v5}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    return-object p0
.end method

.method private ox(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->fw()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 0
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

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    if-nez p3, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "load ad fail adSlot is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    if-eqz p4, :cond_4

    const-string p2, "tt_ad_sub_type"

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    const-string p2, "tt_ad_origin_type"

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->d(Landroid/content/Context;)V

    return-void

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->ox(Landroid/content/Context;)V

    return-void

    :cond_2
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const p2, 0x13881

    const-string p3, "originType is mismatch"

    invoke-direct {p1, p2, p3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_3
    new-instance p2, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-direct {p2, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->dq(Landroid/content/Context;)V

    :cond_4
    return-void
.end method
