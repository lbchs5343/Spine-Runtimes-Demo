.class public abstract Lg/coh;
.super Lg/fyw;
.source "SourceFile"

# interfaces
.implements Lg/bdp;
.implements Lg/hcc;


# instance fields
.field public final o:Lg/boj;


# direct methods
.method public constructor <init>(Lg/boj;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lg/fyw;-><init>(Z)V

    sget-object p2, Lg/dwm;->o:Lg/dwm;

    invoke-interface {p1, p2}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p2

    check-cast p2, Lg/dta;

    invoke-virtual {p0, p2}, Lg/fyw;->aq(Lg/dta;)V

    invoke-interface {p1, p0}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p1

    iput-object p1, p0, Lg/coh;->o:Lg/boj;

    return-void
.end method


# virtual methods
.method public final _z(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lg/sl;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/wh;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lg/fyw;->al(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lg/dzm;->q:Lg/hy;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lg/coh;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/coh;->o:Lg/boj;

    return-object v0
.end method

.method public final getContext()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/coh;->o:Lg/boj;

    return-object v0
.end method

.method public final p(Lg/dwb;)V
    .locals 1

    iget-object v0, p0, Lg/coh;->o:Lg/boj;

    invoke-static {p1, v0}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lg/wh;

    if-eqz v0, :cond_1

    check-cast p1, Lg/wh;

    iget-object v0, p1, Lg/wh;->c:Ljava/lang/Throwable;

    sget-object v1, Lg/wh;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lg/coh;->r(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lg/coh;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public r(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public final s(Lg/dwt;Lg/coh;Lg/bto;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/bdc;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dwb;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lg/coh;->o:Lg/boj;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p3}, Lg/baf;->bc(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v1}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-eq p2, p1, :cond_2

    invoke-virtual {p0, p2}, Lg/coh;->_z(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p1, v1}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {p1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/coh;->_z(Ljava/lang/Object;)V

    return-void

    :cond_3
    check-cast p3, Lg/bry;

    invoke-virtual {p3, p2, p0}, Lg/bry;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    invoke-static {p1}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p1

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-interface {p1, p2}, Lg/bdp;->_z(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {p3, p2, p0}, Lg/kj;->y(Lg/bto;Lg/coh;Lg/coh;)V

    return-void
.end method

.method public t(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
