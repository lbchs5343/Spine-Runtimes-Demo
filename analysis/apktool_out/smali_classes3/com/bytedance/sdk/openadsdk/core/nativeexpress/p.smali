.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$d;,
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/h;

.field private dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;

.field private ig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;"
        }
    .end annotation
.end field

.field private kk:I

.field private mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private ox:Landroid/content/Context;

.field private p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->o:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->no:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    return-object p1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d(Z)V

    return-void
.end method

.method private d(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no/dq;->dq(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/dq/d/mn$dq;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d(J)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->no:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->no:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/f/d/d/jy;
    .locals 3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    const/16 v0, 0x9

    if-eq v2, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not support adslog:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExpressAdLoadManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/le;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/le;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0
.end method

.method private dq()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/jy;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ur()Lcom/bytedance/sdk/openadsdk/core/r/vf;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ur()Lcom/bytedance/sdk/openadsdk/core/r/vf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/vf;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ur()Lcom/bytedance/sdk/openadsdk/core/r/vf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/vf;->dq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/vf;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox:Landroid/content/Context;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v5, v6, v4, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_d
    return-object v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw:Ljava/util/List;

    return-object p1
.end method

.method private dq(I)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->s(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    return-void
.end method

.method private dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;->dq()V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d()V

    :cond_2
    return-void
.end method

.method private dq(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->s()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_2
    move-object v8, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/ji;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/bytedance/sdk/openadsdk/mp/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->mn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/mp/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox()Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    move-result-object v5

    move-object v6, v3

    move-object v3, v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$dq;

    move-result-object v5

    move-object v7, v6

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d()I

    move-result v6

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->qz()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v3

    const-string v4, "material_meta"

    invoke-virtual {v3, v4, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ad_slot"

    invoke-virtual {v3, v5, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    goto/16 :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method private dq(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->o:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->o:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    const-string v0, "ExpressAdLoadManager"

    const-string v1, "CheckValidFutureTask-->cancel......success="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private dq(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;

    return-object p0
.end method

.method private ox(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s(J)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private p(J)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    const/16 p2, 0x68

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(I)V

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d()V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d()V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ox(J)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->iw:Ljava/util/List;

    return-object p0
.end method

.method private s(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->mn:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/q;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p(J)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p1, "ExpressAdLoadManager"

    const-string p2, "express ad is loading..."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->kk:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x1

    invoke-virtual {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->p:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    return-void
.end method
