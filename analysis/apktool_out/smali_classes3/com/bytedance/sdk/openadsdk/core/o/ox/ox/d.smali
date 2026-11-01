.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;
.super Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;


# instance fields
.field private iw:I

.field private mn:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->s:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->iw:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->mn:Z

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->s:Z

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->iw:I

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->mn:Z

    return-void
.end method

.method public ox()Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->ox:I

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->p:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/r;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->p:Z

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->mn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p()Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->s:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;->iw:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p()Z

    move-result v0

    return v0

    :cond_2
    if-ne v2, v3, :cond_3

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p()Z

    move-result v0

    return v0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p()Z

    move-result v0

    :cond_4
    return v0
.end method
