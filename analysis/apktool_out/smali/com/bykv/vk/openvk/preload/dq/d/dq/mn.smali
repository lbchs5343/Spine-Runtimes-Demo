.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/d/ox;

.field final dq:Z


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;->d:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;->dq:Z

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 11
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

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/d/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->iw:Lcom/bykv/vk/openvk/preload/dq/r;

    goto :goto_0

    :goto_2
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v9

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;->d:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-virtual {v3, p2}, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;

    move-result-object v10

    new-instance v3, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;Lcom/bykv/vk/openvk/preload/dq/iw;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/d/kk;)V

    return-object v3
.end method
