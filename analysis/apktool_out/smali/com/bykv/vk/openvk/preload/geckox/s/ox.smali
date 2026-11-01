.class public Lcom/bykv/vk/openvk/preload/geckox/s/ox;
.super Lcom/bykv/vk/openvk/preload/d/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/s/ox$dq;,
        Lcom/bykv/vk/openvk/preload/geckox/s/ox$d;,
        Lcom/bykv/vk/openvk/preload/geckox/s/ox$ox;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/d/p<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;>;",
        "Ljava/util/List<",
        "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
        ">;>;"
    }
.end annotation


# instance fields
.field private ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

.field private kk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;",
            ">;>;"
        }
    .end annotation
.end field

.field private mn:Lcom/bykv/vk/openvk/preload/geckox/p;

.field private no:Ljava/lang/String;

.field private o:Lcom/bykv/vk/openvk/preload/geckox/o/dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/p;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    return-void
.end method

.method private d(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/ig/d;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->ia:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v6, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->kk:Ljava/lang/String;

    iget-object v7, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/kk;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v10, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->mp:Ljava/lang/String;

    iget-object v11, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->ig:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/bykv/vk/openvk/preload/geckox/ig/d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/d;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    new-instance v6, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;

    invoke-direct {v6}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;-><init>()V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iput-object v7, v6, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$d;->dq:Ljava/lang/Long;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;

    move-result-object p1

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->d(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;-><init>()V

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->no:Ljava/lang/String;

    iput-object v5, v4, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->kk:Ljava/util/Map;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->kk:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$dq;->dq:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->dq(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ia:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->ox:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ia:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq;->ox(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method private static d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/mn/dq;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/mn/dq;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/mn/dq;->dq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "gecko-debug-tag"

    const-string v2, "releaseLock:"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static dq(Ljava/util/List;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/util/Map;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "all channel update finished"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "start get server channel version[v3]... local channel version:"

    aput-object v6, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const-string v7, "gecko-debug-tag"

    invoke-static {v7, v4}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->dq(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v8, v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-static {v4, v8}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->ox()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->p()J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-gez v14, :cond_1

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v5

    const-string v14, "rollback\uff1a"

    aput-object v14, v15, v6

    aput-object v10, v15, v3

    const-string v10, "->"

    const/4 v14, 0x3

    aput-object v10, v15, v14

    const/4 v10, 0x4

    aput-object v11, v15, v10

    invoke-static {v7, v15}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v11, v11, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lcom/bykv/vk/openvk/preload/geckox/s/ox$1;

    invoke-direct {v9, v1}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/s/ox;)V

    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_2

    array-length v10, v9

    if-nez v10, :cond_3

    :cond_2
    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v14, v9, v11

    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v17, v15, v12

    if-lez v17, :cond_4

    new-instance v15, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--pending-delete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/utils/iw;->dq()Lcom/bykv/vk/openvk/preload/geckox/utils/iw;

    move-result-object v3

    new-instance v5, Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;

    invoke-direct {v5, v1, v15}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;-><init>(Lcom/bykv/vk/openvk/preload/geckox/s/ox;Ljava/io/File;)V

    invoke-virtual {v3, v5}, Lcom/bykv/vk/openvk/preload/geckox/utils/iw;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    if-nez v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :catch_0
    const/16 v18, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :goto_3
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {v1, v3}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ox(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    :try_start_2
    invoke-interface {v0, v3}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->d(Ljava/util/List;)V

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v18

    invoke-static {v7, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v5, v4

    :goto_5
    :try_start_3
    const-string v6, "filterChannel:"

    invoke-static {v7, v6, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->d(Ljava/util/List;)V

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v18

    invoke-static {v7, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    invoke-direct {v1, v3}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->dq(Ljava/util/List;)V

    return-object v4

    :catchall_2
    move-exception v0

    const/4 v6, 0x1

    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->d(Ljava/util/List;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v18

    invoke-static {v7, v3}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private dq(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->no:Ljava/lang/String;

    const-string v3, "/gecko/server/v3/package"

    invoke-static {v1, v2, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/utils/kk;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->iw:Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->p:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

    invoke-interface {v2, v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/mp/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/mp/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    iget v3, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->ox:I

    iput v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->mn:I

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->p:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->dq:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "x-tt-logid"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    move-object v4, v5

    goto :goto_1

    :cond_1
    const-string v5, "X-Tt-Logid"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "X-TT-LOGID"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    :goto_1
    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->s:Ljava/lang/String;

    iget v2, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->ox:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->d:Ljava/lang/String;

    const-string v2, "gecko-debug-tag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "response:"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox$3;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$3;-><init>(Lcom/bykv/vk/openvk/preload/geckox/s/ox;)V

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    if-nez v0, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/bykv/vk/openvk/preload/dq/p/dq;

    invoke-direct {v4, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;-><init>(Ljava/io/Reader;)V

    iget-boolean v3, v2, Lcom/bykv/vk/openvk/preload/dq/iw;->o:Z

    iput-boolean v3, v4, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    invoke-virtual {v2, v4, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/dq/p/dq;)V

    :goto_2
    check-cast v1, Lcom/bykv/vk/openvk/preload/geckox/ig/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ig/p;->dq:I

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ig/p;->d:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->o:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    invoke-static {v2, v0, v3, v4}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bykv/vk/openvk/preload/geckox/o/dq;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ig/p;->d:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/ox;->dq()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->dq(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq(J)V

    goto :goto_3

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    const-string v0, "check update error\uff1aresponse.data==null"

    iput-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-static {v1, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/s/ox$dq;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$dq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/16 p1, 0x7d0

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "check update error\uff0cunknow status code\uff0cresponse.status\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/bykv/vk/openvk/preload/geckox/ig/p;->dq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/s/ox$dq;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$dq;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json parse failed\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox$d;

    const-string v2, " caused by:"

    invoke-static {v3, v0, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    :try_start_3
    new-instance p1, Landroid/accounts/NetworkErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net work get failed, code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/bykv/vk/openvk/preload/geckox/mp/d;->ox:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ig:Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/s/ox$ox;

    const-string v2, "request failed\uff1aurl:"

    const-string v3, ", caused by:"

    invoke-static {v2, v1, v3}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bykv/vk/openvk/preload/geckox/s/ox$ox;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private dq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/ox;->dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private ox(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/mn/dq;",
            ">;>;"
        }
    .end annotation

    const-string v0, "gecko-debug-tag"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object v6, v6, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v6}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "can not create channel dir\uff1a"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v0, v7}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can not create channel dir:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "update.lock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bykv/vk/openvk/preload/geckox/mn/dq;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/mn/dq;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_3
    const-string v6, "filterChannel:"

    invoke-static {v0, v6, v5}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->o:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6, v4, v5}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "onUpdateFailed:"

    invoke-static {v0, v5, v4}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final varargs dq([Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/preload/d/p;->dq([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/p;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->ia:Ljava/util/Map;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->kk:Ljava/util/Map;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->o:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;->no:Ljava/lang/String;

    return-void
.end method
