.class Lcom/bytedance/sdk/openadsdk/core/u$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/u$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/u$5;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/u$5;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/u$5;->s:Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget v6, v2, Lcom/bytedance/sdk/openadsdk/core/u$5;->p:I

    iget-object v7, v2, Lcom/bytedance/sdk/openadsdk/core/u$5;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/i/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/u$5;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/u$5;->d:J

    invoke-static {p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(Ljava/util/List;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5$1;->dq:Lcom/bytedance/sdk/openadsdk/core/u$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method
