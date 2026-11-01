.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 2
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

    iget-object p2, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/d/d;->p(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/dq/d/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/Class;)V

    return-object v1
.end method
