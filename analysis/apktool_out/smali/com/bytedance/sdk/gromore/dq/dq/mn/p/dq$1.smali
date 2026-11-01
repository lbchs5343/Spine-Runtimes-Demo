.class Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/mn/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/dq/mn/dq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;)Lcom/bytedance/msdk/ox/p/kk;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;-><init>(Lcom/bytedance/msdk/ox/p/kk;Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(Ljava/util/List;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(Ljava/util/List;)V

    return-void
.end method
