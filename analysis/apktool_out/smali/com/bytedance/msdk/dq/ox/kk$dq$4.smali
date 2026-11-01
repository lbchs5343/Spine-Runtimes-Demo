.class Lcom/bytedance/msdk/dq/ox/kk$dq$4;
.super Lcom/bytedance/sdk/openadsdk/f/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/kk$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/kk$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/kk$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->h(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ji(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

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
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->k(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->wp(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->e(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->kx(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

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
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->op(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ir(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->u(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->c(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/ox/kk$dq;->dq(Lcom/bytedance/msdk/dq/ox/kk$dq;I)I

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->bl(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$4;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->n(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/p/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
