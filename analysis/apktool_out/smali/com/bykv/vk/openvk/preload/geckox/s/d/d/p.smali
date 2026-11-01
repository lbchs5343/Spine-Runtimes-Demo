.class public Lcom/bykv/vk/openvk/preload/geckox/s/d/d/p;
.super Lcom/bykv/vk/openvk/preload/d/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/d/p<",
        "Landroid/util/Pair<",
        "Lcom/bykv/vk/openvk/preload/geckox/ox/dq;",
        "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
        ">;",
        "Landroid/util/Pair<",
        "Lcom/bykv/vk/openvk/preload/geckox/ox/dq;",
        "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mn:Lcom/bykv/vk/openvk/preload/geckox/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/p;-><init>()V

    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/preload/d/d;Landroid/util/Pair;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "Landroid/util/Pair<",
            "Lcom/bykv/vk/openvk/preload/geckox/ox/dq;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;>;",
            "Landroid/util/Pair<",
            "Lcom/bykv/vk/openvk/preload/geckox/ox/dq;",
            "Lcom/bykv/vk/openvk/preload/geckox/ig/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "start merge patch zip file, channel:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "gecko-debug-tag"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->iw()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->dq()V

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->s()V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->ox()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "res.zip"

    invoke-static {v3, v4, v5}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bykv/vk/openvk/preload/geckox/utils/BsPatch;->dq(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq/dq;->dq(Ljava/io/File;J)Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    move-result-object v0

    :try_start_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->s()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->s()V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merged patch zip file failed, channel\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkg id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->mn()Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;->dq()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", caused by:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    throw p0
.end method


# virtual methods
.method public final bridge synthetic dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/p;->dq(Lcom/bykv/vk/openvk/preload/d/d;Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final varargs dq([Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/preload/d/p;->dq([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/p;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/d/d/p;->mn:Lcom/bykv/vk/openvk/preload/geckox/p;

    return-void
.end method
