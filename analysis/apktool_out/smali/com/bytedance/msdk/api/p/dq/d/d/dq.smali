.class public Lcom/bytedance/msdk/api/p/dq/d/d/dq;
.super Ljava/lang/Object;


# instance fields
.field protected dq:Lcom/bytedance/msdk/api/p/dq/d/ox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/ox;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    return-void
.end method


# virtual methods
.method public d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(D)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->jy(I)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public ig()Lcom/bytedance/msdk/dq/d/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->u()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    return-object v0
.end method

.method public no()Lcom/bytedance/msdk/api/p/dq/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq:Lcom/bytedance/msdk/api/p/dq/d/ox;

    return-object v0
.end method
