.class public final Lcom/bykv/vk/openvk/preload/geckox/ox;
.super Ljava/lang/Object;


# instance fields
.field d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dq:Lcom/bykv/vk/openvk/preload/geckox/o/d;

.field ox:Lcom/bykv/vk/openvk/preload/geckox/p;

.field p:Ljava/io/File;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->s:Ljava/util/List;

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/o/d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/o/d;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->d:Ljava/util/Queue;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->p:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/s;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/p;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->d(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/ox;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$8;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$8;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/d;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$9;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$9;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/p;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$10;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$10;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/dq;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$3;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$3;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/d/s;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/d;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$11;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$11;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/dq;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$2;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$2;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/dq/dq/ox;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->d(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/ox;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$8;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$8;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/d;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$9;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$9;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/p;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$10;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$10;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/dq;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$5;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$5;-><init>()V

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/iw;

    invoke-direct {p0, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/ox;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/d/d/dq;

    move-result-object p1

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/d;

    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/q/ox$11;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$11;-><init>()V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/dq;

    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/q/ox$4;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/ox$4;-><init>()V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/p;

    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    return-void
.end method

.method private dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/d/p<",
            "**>;>;",
            "Lcom/bykv/vk/openvk/preload/d/d/dq;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/d;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/o/d;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/d/d/dq;)V

    return-void
.end method


# virtual methods
.method public final dq()Z
    .locals 8

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->iw:Ljava/util/List;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_2

    return v2

    :cond_5
    return v4

    :cond_6
    :goto_1
    return v2
.end method

.method public final dq(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox;->ox:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_1

    return v4

    :cond_4
    return v1
.end method
