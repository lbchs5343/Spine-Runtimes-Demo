.class final Lcom/bytedance/msdk/api/p/q$1;
.super Lcom/bytedance/msdk/api/p/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/q;->dq(Lcom/bytedance/msdk/dq/ox/q;)Lcom/bytedance/msdk/api/p/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/q;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/q;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/q$1;->dq:Lcom/bytedance/msdk/dq/ox/q;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/q;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/msdk/api/p/kk;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/q$1;->dq:Lcom/bytedance/msdk/dq/ox/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/q;->jy()Lcom/bytedance/msdk/dq/ox/jy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/ox/jy;->dq()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/ox/jy;->d()D

    move-result-wide v1

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    new-instance v1, Lcom/bytedance/msdk/api/p/kk;

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/ox/jy;->dq()D

    move-result-wide v2

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/ox/jy;->d()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/msdk/api/p/kk;-><init>(DD)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/q;->d()Lcom/bytedance/msdk/api/p/kk;

    move-result-object v0

    return-object v0
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/q$1;->dq:Lcom/bytedance/msdk/dq/ox/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/q;->kk()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/q;->dq()Z

    move-result v0

    return v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/q$1;->dq:Lcom/bytedance/msdk/dq/ox/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/q;->ia()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/q;->ox()Z

    move-result v0

    return v0
.end method
