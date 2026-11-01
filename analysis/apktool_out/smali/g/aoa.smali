.class public final Lg/aoa;
.super Lg/azc;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Lg/w;Lg/boj;)V
    .locals 2

    sget-object v0, Lg/aum;->a:Lg/aum;

    invoke-interface {p2, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object p1

    sget-object v0, Lg/bmr;->j:Lg/bmr;

    invoke-interface {p1, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p1

    instance-of p1, p1, Lg/cpk;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lg/aoa;->i(Lg/boj;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final _bh()Z
    .locals 3

    iget-boolean v0, p0, Lg/aoa;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lg/boj;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/aoa;->threadLocalIsSet:Z

    iget-object v0, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    new-instance v1, Lg/ger;

    invoke-direct {v1, p1, p2}, Lg/ger;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lg/aoa;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ger;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/boj;

    invoke-virtual {v0}, Lg/ger;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lg/aoa;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    invoke-static {p1}, Lg/cux;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lg/azc;->l:Lg/w;

    invoke-interface {v0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lg/gs;->c:Lg/hy;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, Lg/eyt;->bb(Lg/bdp;Lg/boj;Ljava/lang/Object;)Lg/aoa;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lg/azc;->l:Lg/w;

    invoke-virtual {v0, p1}, Lg/bry;->_z(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lg/aoa;->_bh()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-static {v1, v3}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lg/aoa;->_bh()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v1, v3}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method
