.class public abstract Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;
.super Lcom/bytedance/sdk/component/ia/d/dq/dq;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ox;


# instance fields
.field private final d:Landroid/content/Context;

.field protected final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private final iw:Ljava/lang/Runnable;

.field private ox:Lcom/bytedance/sdk/component/ia/dq/s;

.field private p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->s:Z

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d$1;-><init>(Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->iw:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-void
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/mn/dq;->dq()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->iw:Ljava/lang/Runnable;

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/mn/dq;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->s:Z

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->s:Z

    return p1
.end method

.method private dq(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteMemList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    const-string v1, "DBInsertMemRepo"

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public d(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    const-string p2, "_id"

    invoke-interface {p0, p2, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ox;->dq(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized d(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->mn()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1, p1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public d(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 3

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p()I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check db "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MaxCacheCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    if-lt p2, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method public dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)",
            "Lcom/bytedance/sdk/component/ia/d/dq/d;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/dq/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ia/d/dq/d;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "code:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ox;->delete(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Z)V

    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Z)V

    return-object v0
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public dq(IILcom/bytedance/sdk/component/ia/dq/d;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->d()I

    move-result p3

    if-le p3, p2, :cond_1

    sub-int/2addr p3, p2

    const-string p2, "_id"

    invoke-interface {p0, p3, p2, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ox;->dq(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public dq(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deleteMemList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DBInsertMemRepo"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->p()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check flush db "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public p()I
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq()Ljava/lang/String;

    move-result-object v3

    const-string v4, "count(1)"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v10}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    throw v0

    :goto_3
    if-eqz v1, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_4
    return v0
.end method
