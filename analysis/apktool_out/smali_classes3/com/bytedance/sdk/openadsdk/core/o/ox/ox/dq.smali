.class public abstract Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field protected d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected dq:Landroid/content/Context;

.field protected ox:I

.field protected p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p:Z

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->ox:I

    return v0
.end method

.method public dq(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq:Landroid/content/Context;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p:Z

    return-void
.end method

.method public dq()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq:Landroid/content/Context;

    const-string v2, "tt_no_network"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/r;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->dq:Z

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->ox:Z

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public abstract ox()Z
.end method

.method public p()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/r;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_6

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->ox(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->mn()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->mn()I

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x6400000

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/r;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    if-le v0, v1, :cond_2

    return v4

    :cond_2
    return v2

    :cond_3
    return v4

    :cond_4
    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    return v4

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->ox(I)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
.end method
