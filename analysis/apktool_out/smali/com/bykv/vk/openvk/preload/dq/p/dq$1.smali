.class final Lcom/bykv/vk/openvk/preload/dq/p/dq$1;
.super Lcom/bykv/vk/openvk/preload/dq/d/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/iw;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->s:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    iput v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    iput v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    iput v0, p1, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
