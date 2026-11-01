.class Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/mn/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/dq/mn/dq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->d(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->d(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->o()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/p/dq/mn/dq;

    new-instance v3, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;

    iget-object v4, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {v4}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/msdk/ox/p/kk;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;-><init>(Lcom/bytedance/msdk/ox/p/kk;Lcom/bytedance/msdk/api/p/dq/mn/dq;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0x13881

    const-string v1, "list is null"

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
