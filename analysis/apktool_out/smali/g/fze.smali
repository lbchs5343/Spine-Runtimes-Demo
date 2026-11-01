.class public abstract Lg/fze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final e:Lg/gac;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lg/esn;


# direct methods
.method public constructor <init>(Lg/gac;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fze;->e:Lg/gac;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lg/fze;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lg/ccn;

    invoke-direct {p1, p0}, Lg/ccn;-><init>(Lg/fze;)V

    new-instance v0, Lg/esn;

    invoke-direct {v0, p1}, Lg/esn;-><init>(Lg/cvw;)V

    iput-object v0, p0, Lg/fze;->g:Lg/esn;

    return-void
.end method


# virtual methods
.method public abstract d()Ljava/lang/String;
.end method

.method public final h(Lg/cap;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/fze;->g:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cap;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/fze;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public final i()Lg/cap;
    .locals 3

    iget-object v0, p0, Lg/fze;->e:Lg/gac;

    invoke-virtual {v0}, Lg/gac;->aj()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fze;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fze;->g:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cap;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/fze;->j()Lg/cap;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lg/cap;
    .locals 2

    invoke-virtual {p0}, Lg/fze;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/fze;->e:Lg/gac;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lg/gac;->aj()V

    invoke-virtual {v1}, Lg/gac;->al()V

    invoke-virtual {v1}, Lg/gac;->ao()Lg/fgd;

    move-result-object v1

    invoke-interface {v1}, Lg/fgd;->i()Lg/crd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/crd;->f(Ljava/lang/String;)Lg/cap;

    move-result-object v0

    return-object v0
.end method
