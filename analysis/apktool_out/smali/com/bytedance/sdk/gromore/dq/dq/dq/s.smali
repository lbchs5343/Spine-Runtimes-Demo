.class public Lcom/bytedance/sdk/gromore/dq/dq/dq/s;
.super Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;


# instance fields
.field private dq:Lcom/bytedance/msdk/api/p/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Map;Lcom/bytedance/msdk/api/p/dq/dq/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/dq/ox;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/p/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq:Lcom/bytedance/msdk/api/p/d;

    return-void

    :cond_0
    invoke-interface {p3, p1}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq(Landroid/app/Activity;)Lcom/bytedance/msdk/api/p/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq:Lcom/bytedance/msdk/api/p/d;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/msdk/api/p/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq:Lcom/bytedance/msdk/api/p/d;

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq:Lcom/bytedance/msdk/api/p/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq:Lcom/bytedance/msdk/api/p/d;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/s;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/d;->dq(Lcom/bytedance/msdk/api/p/mn;)V

    :cond_0
    return-void
.end method
