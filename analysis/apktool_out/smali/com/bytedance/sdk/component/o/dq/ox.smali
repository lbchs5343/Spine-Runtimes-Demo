.class public Lcom/bytedance/sdk/component/o/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/component/o/dq/ox;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/o/dq/iw;

.field public final dq:Ljava/lang/Runnable;

.field private ox:Z

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/bytedance/sdk/component/o/dq/iw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/bytedance/sdk/component/o/dq/ox;->d:Lcom/bytedance/sdk/component/o/dq/iw;

    return-void
.end method

.method private ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->d:Lcom/bytedance/sdk/component/o/dq/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/o/dq/iw;->dq(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/o/dq/ox;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/dq/ox;->dq(Lcom/bytedance/sdk/component/o/dq/ox;)I

    move-result p1

    return p1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/dq/ox;->p:Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/o/dq/ox;)I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    instance-of v1, v0, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    instance-of v1, p1, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dq()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/o/dq/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/ox;->d:Lcom/bytedance/sdk/component/o/dq/iw;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/o/dq/ox;->ox:Z

    return-void
.end method

.method public run()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    instance-of v3, v2, Lcom/bytedance/sdk/component/o/kk;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "BizRunnable"

    if-eqz v3, :cond_0

    check-cast v2, Lcom/bytedance/sdk/component/o/kk;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/o/kk;->dq()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v6, v3}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/o/dq/ox;->dq:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {v6, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/component/o/dq/ox;->ox(Z)V

    return-void
.end method
