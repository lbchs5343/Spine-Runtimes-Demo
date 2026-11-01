.class public Lcom/bytedance/sdk/openadsdk/core/p/p/d;
.super Ljava/lang/Object;


# instance fields
.field protected d:I

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

.field protected p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox()Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    return-void
.end method

.method private d()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;-><init>(I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/s;-><init>(I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/d;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/d;-><init>(I)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;-><init>(I)V

    return-object v0
.end method

.method public static dq(I)Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object p0

    return-object p0
.end method

.method private ox()Lcom/bytedance/sdk/openadsdk/core/p/dq/d;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->d:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/d;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/d;)V

    return-object v0
.end method

.method private p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->mn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->hz()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
