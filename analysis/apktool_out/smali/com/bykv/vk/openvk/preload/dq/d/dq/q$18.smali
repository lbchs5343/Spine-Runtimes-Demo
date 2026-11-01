.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/q$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/preload/dq/r;

.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$18;->dq:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$18;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 0
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

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$18;->dq:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$18;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
