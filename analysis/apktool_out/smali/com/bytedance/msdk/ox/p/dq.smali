.class public Lcom/bytedance/msdk/ox/p/dq;
.super Lcom/bytedance/msdk/ox/p/p;


# instance fields
.field d:Lcom/bytedance/msdk/dq/d/ox;

.field dq:Lcom/bytedance/msdk/dq/d/d;

.field private gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

.field private r:Lcom/bytedance/msdk/api/p/dq/iw/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/p;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/msdk/ox/p/dq$3;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/dq$3;-><init>(Lcom/bytedance/msdk/ox/p/dq;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/dq;->dq:Lcom/bytedance/msdk/dq/d/d;

    new-instance p1, Lcom/bytedance/msdk/ox/p/dq$4;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/dq$4;-><init>(Lcom/bytedance/msdk/ox/p/dq;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/dq;->d:Lcom/bytedance/msdk/dq/d/ox;

    return-void
.end method

.method private d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/p/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/dq$1;-><init>(Lcom/bytedance/msdk/ox/p/dq;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/bytedance/msdk/ox/p/o;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;Lcom/bytedance/msdk/ox/p/o$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/dq;->r:Lcom/bytedance/msdk/api/p/dq/iw/dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/p/dq$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/p/dq$2;-><init>(Lcom/bytedance/msdk/ox/p/dq;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/dq;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/iw/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->i()I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/ox/p/o;->dq()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->r:Lcom/bytedance/msdk/api/p/dq/iw/dq;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/bytedance/msdk/ox/p/dq;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string p2, "activity can not be null !"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/ox/p/dq;->d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/iw/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/msdk/ox/p/p;->d(Lcom/bytedance/msdk/api/dq/d;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/dq;->gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/dq;->dq:Lcom/bytedance/msdk/dq/d/d;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->no()Lcom/bytedance/msdk/ox/ox/dq/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/iw/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/dq;->r:Lcom/bytedance/msdk/api/p/dq/iw/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->d:Lcom/bytedance/msdk/dq/d/ox;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->dq:Lcom/bytedance/msdk/dq/d/d;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/p/p;->dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/d;->dq()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/dq;->gh:Lcom/bytedance/msdk/api/p/dq/iw/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/iw/d;->d()V

    :cond_0
    return-void
.end method
