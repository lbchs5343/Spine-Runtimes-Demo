.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    iput p3, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->f:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget p3, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->jy()I

    move-result p3

    iput p3, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->cd:I

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->td()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->q:Lorg/json/JSONObject;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->r:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;->dq()V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->dq:Lg/dlv;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lg/dlv;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
