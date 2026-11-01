.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;


# instance fields
.field private iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/d/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    return-object p0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->s:Ljava/lang/String;

    return-void
.end method
