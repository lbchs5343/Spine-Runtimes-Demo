.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;


# instance fields
.field private iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->ox(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-eqz v0, :cond_0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->d()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private ox(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-eqz v0, :cond_0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    :cond_0
    return-void
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

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(I)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(I)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(Z)V

    return-void
.end method
