.class public Lcom/bytedance/sdk/openadsdk/mp/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;-><init>()V

    return-void
.end method

.method private dq(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->q(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->i()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->kk(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    sub-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->gh(J)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/no;)V
    .locals 4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->o()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/mn;->dq()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/mn;->d()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq(JJ)V

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->gh()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->ia(J)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->mp(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->s()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq(Lcom/bytedance/sdk/component/iw/no;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    return-void
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/core/r/jw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    return-object v0
.end method
