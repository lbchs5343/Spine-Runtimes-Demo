.class Lcom/bytedance/sdk/component/dq/r;
.super Ljava/lang/Object;


# instance fields
.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bytedance/sdk/component/dq/le;

.field private final p:Lcom/bytedance/sdk/component/dq/i;

.field private s:Lcom/bytedance/sdk/component/dq/no$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/dq/i;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/dq/i;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/dq/fw;->dq:Lcom/bytedance/sdk/component/dq/le;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/r;->ox:Lcom/bytedance/sdk/component/dq/le;

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->p:Lcom/bytedance/sdk/component/dq/i;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->dq:Ljava/util/Set;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->dq:Ljava/util/Set;

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->d:Ljava/util/Set;

    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->d:Ljava/util/Set;

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;Z)Lcom/bytedance/sdk/component/dq/k;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/bytedance/sdk/component/dq/r;->p:Lcom/bytedance/sdk/component/dq/i;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/r;->dq:Ljava/util/Set;

    invoke-virtual {p3, p1, v1}, Lcom/bytedance/sdk/component/dq/i;->dq(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/dq/i$ox;

    move-result-object p1

    iget-object p3, p1, Lcom/bytedance/sdk/component/dq/i$ox;->ox:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    iget-object p3, p1, Lcom/bytedance/sdk/component/dq/i$ox;->d:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lcom/bytedance/sdk/component/dq/k;->ox:Lcom/bytedance/sdk/component/dq/k;

    return-object p1

    :cond_2
    iget-object p3, p1, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/dq/d;->d()Lcom/bytedance/sdk/component/dq/k;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_3

    return-object v0

    :cond_3
    iget-object p1, p1, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/dq/r;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;Z)Lcom/bytedance/sdk/component/dq/k;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lcom/bytedance/sdk/component/dq/le$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/r;->ox:Lcom/bytedance/sdk/component/dq/le;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/dq/le;->d(Lcom/bytedance/sdk/component/dq/le$dq;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/dq/i$dq;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/dq/r;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;Z)Lcom/bytedance/sdk/component/dq/k;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dq(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;
    .locals 7
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/dq/i$dq;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/dq/r;->d:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/dq/d;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/bytedance/sdk/component/dq/k;->dq:Lcom/bytedance/sdk/component/dq/k;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/component/dq/r;->dq:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "."

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    sget-object v3, Lcom/bytedance/sdk/component/dq/k;->ox:Lcom/bytedance/sdk/component/dq/k;

    :cond_4
    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/r;->s:Lcom/bytedance/sdk/component/dq/no$d;

    if-eqz v0, :cond_6

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/dq/no$d;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/r;->s:Lcom/bytedance/sdk/component/dq/no$d;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/bytedance/sdk/component/dq/no$d;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_2
    sget-object v3, Lcom/bytedance/sdk/component/dq/k;->ox:Lcom/bytedance/sdk/component/dq/k;

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/dq/r;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/dq/r;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p1, :cond_8

    monitor-exit p0

    return-object p1

    :cond_8
    monitor-exit p0

    return-object v3

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/le$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/r;->ox:Lcom/bytedance/sdk/component/dq/le;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/dq/le;->dq(Lcom/bytedance/sdk/component/dq/le$dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/no$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/r;->s:Lcom/bytedance/sdk/component/dq/no$d;

    return-void
.end method
