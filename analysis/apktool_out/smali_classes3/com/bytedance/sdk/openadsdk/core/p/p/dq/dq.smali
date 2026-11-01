.class public abstract Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->ia:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->kk:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->o:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->dq()V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;I)V

    :cond_2
    return-void
.end method

.method public abstract dq()V
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/p/s;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->ia:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->kk:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->d()V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->dq()V

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/dq;->d()V

    return-void
.end method
