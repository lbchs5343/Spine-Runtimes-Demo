.class public Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/dq;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/p;-><init>()V

    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/preload/d/d;Landroid/util/Pair;)Ljava/lang/Object;
    .locals 4
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

    const-string v2, "start check full zip file, channel:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "gecko-debug-tag"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->d(J)V

    :try_start_0
    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/ox/d/d;

    invoke-direct {v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/ox/d/d;-><init>(Lcom/bykv/vk/openvk/preload/geckox/ox/dq;)V

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->iw()Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/ia;->dq(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/d/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check full zip file failed, channel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->iw()Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;->dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", caused by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/d/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
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

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/s/d/dq/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
