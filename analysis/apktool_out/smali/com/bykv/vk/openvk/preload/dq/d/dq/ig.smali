.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/dq/ig$dq;
    }
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
.field private final d:Lcom/bykv/vk/openvk/preload/dq/fw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/fw<",
            "TT;>;"
        }
    .end annotation
.end field

.field final dq:Lcom/bykv/vk/openvk/preload/dq/iw;

.field private final iw:Lcom/bykv/vk/openvk/preload/dq/d/dq/ig$dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/dq/ig<",
            "TT;>.dq;"
        }
    .end annotation
.end field

.field private mn:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bykv/vk/openvk/preload/dq/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final s:Lcom/bykv/vk/openvk/preload/dq/i;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/fw;Lcom/bykv/vk/openvk/preload/dq/o;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/fw<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/dq/o<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig$dq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig$dq;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;B)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->iw:Lcom/bykv/vk/openvk/preload/dq/d/dq/ig$dq;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->d:Lcom/bykv/vk/openvk/preload/dq/fw;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->ox:Lcom/bykv/vk/openvk/preload/dq/o;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->s:Lcom/bykv/vk/openvk/preload/dq/i;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->mn:Lcom/bykv/vk/openvk/preload/dq/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->s:Lcom/bykv/vk/openvk/preload/dq/i;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->p:Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/i;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->mn:Lcom/bykv/vk/openvk/preload/dq/r;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->ox:Lcom/bykv/vk/openvk/preload/dq/o;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->d()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object p1

    instance-of p1, p1, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->ox:Lcom/bykv/vk/openvk/preload/dq/o;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/dq/o;->dq()Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->d:Lcom/bykv/vk/openvk/preload/dq/fw;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ig;->d()Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/fw;->dq()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V

    return-void
.end method
