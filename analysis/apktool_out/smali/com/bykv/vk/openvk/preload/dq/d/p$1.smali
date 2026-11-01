.class final Lcom/bykv/vk/openvk/preload/dq/d/p$1;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Z

.field private iw:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic ox:Lcom/bykv/vk/openvk/preload/dq/iw;

.field final synthetic p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

.field final synthetic s:Lcom/bykv/vk/openvk/preload/dq/d/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/p;ZZLcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->s:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->dq:Z

    iput-boolean p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->d:Z

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->ox:Lcom/bykv/vk/openvk/preload/dq/iw;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    return-void
.end method

.method private d()Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->iw:Lcom/bykv/vk/openvk/preload/dq/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->ox:Lcom/bykv/vk/openvk/preload/dq/iw;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->s:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/i;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->iw:Lcom/bykv/vk/openvk/preload/dq/r;

    return-object v0
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

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->dq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->d()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/p$1;->d()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method
