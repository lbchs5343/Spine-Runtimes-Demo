.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
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
.field private final d:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final dq:Lcom/bykv/vk/openvk/preload/dq/iw;

.field private final ox:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->ox:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->ox:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->ox:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    instance-of v2, v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method
