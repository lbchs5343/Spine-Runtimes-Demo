.class public abstract Lcom/bytedance/msdk/core/mn/d/dq;
.super Lcom/bytedance/msdk/core/mn/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/iw;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/mn/d/dq;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->ox(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/mn/d/dq;Lcom/bytedance/msdk/core/no/no;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/core/no/no;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public ox(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/ox;->u:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/mn/d/dq$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/mn/d/dq$1;-><init>(Lcom/bytedance/msdk/core/mn/d/dq;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->ox(Ljava/util/List;)V

    return-void
.end method

.method public p(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/ox;->u:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    :try_start_0
    new-instance v3, Lcom/bytedance/msdk/core/mn/d/dq$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/bytedance/msdk/core/mn/d/dq$2;-><init>(Lcom/bytedance/msdk/core/mn/d/dq;Ljava/util/List;I)V

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    goto :goto_2

    :catchall_1
    nop

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    invoke-super {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->p(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
