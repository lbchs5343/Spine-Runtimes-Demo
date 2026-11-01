.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;
    }
.end annotation


# instance fields
.field private final dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/d;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-virtual {v2, p2}, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;

    move-result-object p2

    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/d$dq;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/d/kk;)V

    return-object v2
.end method
