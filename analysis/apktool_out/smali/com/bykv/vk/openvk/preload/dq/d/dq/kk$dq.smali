.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Lcom/bykv/vk/openvk/preload/dq/d/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/kk;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/dq;",
            ")TT;"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/d/kk;->dq()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->o:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p()V

    return-object v0

    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :goto_3
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/ox;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;

    invoke-virtual {v1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->dq(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->ia:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :goto_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
