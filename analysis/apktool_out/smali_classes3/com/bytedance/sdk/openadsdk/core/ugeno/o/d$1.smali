.class Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->mp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->mp()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->iw(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->mn(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ig/s;

    move-result-object p1

    const-string p2, "ad meta info load fail"

    const/4 p3, -0x3

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->ia(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->kk(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->o(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->no(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->mp()V

    return-void
.end method
