.class public final Lg/dgs;
.super Lg/coh;
.source "SourceFile"

# interfaces
.implements Lg/ayw;
.implements Lg/bfl;


# instance fields
.field public final l:Lg/djo;


# direct methods
.method public constructor <init>(Lg/boj;Lg/djo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lg/coh;-><init>(Lg/boj;Z)V

    iput-object p2, p0, Lg/dgs;->l:Lg/djo;

    return-void
.end method


# virtual methods
.method public final _bi(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lg/fyw;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lg/gib;

    invoke-virtual {p0}, Lg/coh;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    :cond_1
    invoke-virtual {p0, p1}, Lg/dgs;->w(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final _cl(Ljava/lang/Throwable;)Z
    .locals 2

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lg/djo;->aa(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-interface {v0, p1, p2}, Lg/cvu;->d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-interface {v0, p1}, Lg/cvu;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lg/ps;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lg/djo;->u(Lg/djo;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-virtual {v0}, Lg/djo;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Lg/blg;
    .locals 2

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/blg;

    invoke-direct {v1, v0}, Lg/blg;-><init>(Lg/djo;)V

    return-object v1
.end method

.method public final r(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lg/djo;->aa(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lg/coh;->o:Lg/boj;

    invoke-static {p1, p2}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lg/dgi;

    iget-object p1, p0, Lg/dgs;->l:Lg/djo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/djo;->_cl(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final v(Lg/bie;)V
    .locals 5

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/djo;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lg/drx;->p:Lg/hy;

    if-ne v2, v3, :cond_4

    sget-object v4, Lg/drx;->s:Lg/hy;

    :cond_2
    invoke-virtual {v1, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/bie;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_4
    sget-object p1, Lg/drx;->s:Lg/hy;

    if-ne v2, p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Another handler is already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    iget-object v0, p0, Lg/dgs;->l:Lg/djo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg/djo;->aa(Ljava/lang/Throwable;Z)Z

    invoke-virtual {p0, p1}, Lg/fyw;->ae(Ljava/lang/Object;)Z

    return-void
.end method
