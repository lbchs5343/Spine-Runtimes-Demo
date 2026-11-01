.class public final Lcom/bykv/vk/openvk/preload/geckox/q/ox$11;
.super Lcom/bykv/vk/openvk/preload/d/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/q/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/d/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/mn;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/preload/d/d;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-wide v0, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(J)Lcom/bykv/vk/openvk/preload/geckox/q/d;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->bl:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kx:J

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->op:Ljava/lang/String;

    return-void
.end method

.method public final ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/mn;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/preload/d/d;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-wide v0, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(J)Lcom/bykv/vk/openvk/preload/geckox/q/d;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->bl:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kx:J

    return-void
.end method
