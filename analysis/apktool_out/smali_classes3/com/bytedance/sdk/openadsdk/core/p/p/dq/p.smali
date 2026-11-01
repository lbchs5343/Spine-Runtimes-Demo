.class public abstract Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;
.super Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->no:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->ia:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->kk:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->o:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->dq()V

    :cond_1
    :goto_0
    if-ne p2, v2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->ox()V

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->ox()V

    return-void

    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->no:I

    if-eq p2, v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->ox()V

    :cond_4
    return-void
.end method

.method private s()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->iw()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->iw()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method


# virtual methods
.method public d()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->s()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract dq()V
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/p/s;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->ia:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->kk:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq()V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p()V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p()V

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p()V

    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-nez v0, :cond_4

    const/4 v1, 0x3

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    :cond_5
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq()V

    :cond_0
    return-void
.end method
