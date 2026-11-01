.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/d/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final dq:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/iw;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/d/kk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TE;>;",
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;

    invoke-direct {v0, p1, p3, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/r;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;->d:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    return-void
.end method


# virtual methods
.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;->d:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/d/kk;->dq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    return-object v0
.end method

.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void
.end method
