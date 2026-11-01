.class public Lcom/bytedance/sdk/gromore/dq/dq/ox/s;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/kk;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

.field private dq:Lcom/bytedance/msdk/core/admanager/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/kk;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->iw()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/s;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->d:Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    return-object p0
.end method

.method private iw()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/s$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/s$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/s;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/api/p/dq/iw/dq;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->xi()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->z()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/s$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/s$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/s;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->d:Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/mn/p;->d(Z)V

    :cond_0
    return-void
.end method

.method public ox()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/p;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;->dq:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/iw;-><init>(Lcom/bytedance/msdk/core/admanager/dq;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/s/iw;)V

    return-object v0
.end method
