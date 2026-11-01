.class final Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->dq(Ljava/util/Map$Entry;)Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq$1;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->dq(Ljava/util/Map$Entry;)Lcom/bykv/vk/openvk/preload/dq/d/ia$p;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->dq(Lcom/bykv/vk/openvk/preload/dq/d/ia$p;Z)V

    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ia$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    iget v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/ia;->ox:I

    return v0
.end method
