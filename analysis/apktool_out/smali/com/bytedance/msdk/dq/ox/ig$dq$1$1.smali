.class Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;
.super Lcom/bytedance/sdk/openadsdk/f/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ig$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->mn(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->ia(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->ox(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->p(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->s(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->iw(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    div-long v2, p3, p1

    :cond_0
    long-to-int v6, v2

    const/4 v7, -0x1

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJIILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->no(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->ig(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->mp(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->q(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kk(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->o(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/p/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
