.class public Lcom/bytedance/sdk/openadsdk/core/q/s;
.super Ljava/lang/Object;


# instance fields
.field public d:D

.field public dq:D

.field public ox:D

.field public p:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq:D

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->d:D

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->ox:D

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->d:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->d:D

    return-void
.end method

.method public dq()V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq:D

    return-void
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->p:D

    return-void
.end method

.method public ox()V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->ox:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->ox:D

    return-void
.end method

.method public p()D
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->dq:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->d:D

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public s()D
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->p:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/s;->d:D

    div-double/2addr v2, v0

    return-wide v2
.end method
