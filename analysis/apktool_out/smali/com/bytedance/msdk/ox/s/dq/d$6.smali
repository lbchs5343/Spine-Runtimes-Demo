.class Lcom/bytedance/msdk/ox/s/dq/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/dq/d;->er()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->ox:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d(Lcom/bytedance/msdk/ox/s/dq/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d(Lcom/bytedance/msdk/ox/s/dq/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ox(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/s/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->ig()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/p/no;)Lcom/bytedance/msdk/api/p/no;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->p(Lcom/bytedance/msdk/ox/s/dq/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->s(Lcom/bytedance/msdk/ox/s/dq/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$6;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    new-instance v1, Lcom/bytedance/msdk/api/d/dq;

    const v2, 0xa054

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_5
    return-void
.end method
