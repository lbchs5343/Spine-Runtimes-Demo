.class public final Lcom/bytedance/sdk/component/d/dq/ig$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/dq/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field public d:J

.field public final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/kk;",
            ">;"
        }
    .end annotation
.end field

.field ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/mp;",
            ">;"
        }
    .end annotation
.end field

.field public iw:J

.field public kk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mn:Ljava/util/concurrent/TimeUnit;

.field private no:Lcom/bytedance/sdk/component/ox/d/k$dq;

.field public o:Landroid/os/Bundle;

.field public ox:Ljava/util/concurrent/TimeUnit;

.field public p:J

.field public s:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq:Ljava/util/List;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/k$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/k$dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq:Ljava/util/List;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->ox:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->p:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->s:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->iw:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->mn:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->kk:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ia:Ljava/util/List;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->o:Ljava/util/Set;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->kk:Ljava/util/Set;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->d:J

    long-to-int v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->wp:I

    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->ox:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->n:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->p:J

    long-to-int v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->e:I

    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->s:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->op:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->iw:J

    long-to-int v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->kx:I

    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->mn:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ir:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->o:Ljava/util/Set;

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->bl:Ljava/util/Set;

    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/ig;->ig:Landroid/os/Bundle;

    iput-object p1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ji:Landroid/os/Bundle;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq:Ljava/util/List;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Lcom/bytedance/sdk/component/d/dq/ig;->ia:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ia:Ljava/util/List;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/k$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/d/k$dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-void
.end method


# virtual methods
.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    invoke-virtual {p1, v0, v1, p3}, Lcom/bytedance/sdk/component/ox/d/k$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-object p0
.end method

.method public dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    invoke-virtual {p1, v0, v1, p3}, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-object p0
.end method

.method public dq(Landroid/os/Bundle;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->o:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ji:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/ig$dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/d/dq/ig$dq$1;-><init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;Lcom/bytedance/sdk/component/d/dq/kk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq(Lcom/bytedance/sdk/component/ox/d/r;)Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-object p0
.end method

.method public dq(Ljava/util/List;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/mp;",
            ">;)",
            "Lcom/bytedance/sdk/component/d/dq/ig$dq;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/bytedance/sdk/component/d/dq/mp;->d:Lcom/bytedance/sdk/component/d/dq/mp;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/bytedance/sdk/component/d/dq/mp;->dq:Lcom/bytedance/sdk/component/d/dq/mp;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/d/dq/mp;->ox:Lcom/bytedance/sdk/component/d/dq/mp;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ia:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain http/1.0: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols doesn\'t contain http/1.1: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/d/dq/ig$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->kk:Ljava/util/Set;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/k$dq;)Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/d/dq/ig$dq;)Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    return-object v0
.end method

.method public ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    invoke-virtual {p1, v0, v1, p3}, Lcom/bytedance/sdk/component/ox/d/k$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;

    :cond_0
    return-object p0
.end method
