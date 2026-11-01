.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;
.super Lcom/bykv/vk/openvk/preload/dq/p/ox;


# static fields
.field private static final iw:Ljava/io/Writer;

.field private static final mn:Lcom/bykv/vk/openvk/preload/dq/f;


# instance fields
.field public d:Lcom/bykv/vk/openvk/preload/dq/no;

.field public final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/no;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw:Ljava/io/Writer;

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->mn:Lcom/bykv/vk/openvk/preload/dq/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/ox;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->d:Lcom/bykv/vk/openvk/preload/dq/no;

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/no;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/q;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/openvk/preload/dq/q;->dq(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/dq/no;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->d:Lcom/bykv/vk/openvk/preload/dq/no;

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v0

    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/kk;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private iw()Lcom/bykv/vk/openvk/preload/dq/no;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/no;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->mn:Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v0

    instance-of v0, v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method

.method public final dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/kk;-><init>()V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dq(J)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method

.method public final dq(Ljava/lang/Boolean;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method

.method public final dq(Ljava/lang/Number;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method

.method public final dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v0

    instance-of v0, v0, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq(Z)Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/q;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/q;-><init>()V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final p()Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->ia:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->iw()Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v0

    instance-of v0, v0, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final s()Lcom/bykv/vk/openvk/preload/dq/p/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-object p0
.end method
