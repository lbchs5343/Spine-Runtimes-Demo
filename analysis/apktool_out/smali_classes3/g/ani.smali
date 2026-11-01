.class public final Lg/ani;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dba;


# instance fields
.field public volatile aa:Lg/dba;

.field public final ab:Ljava/util/Queue;

.field public final d:Z

.field public i:Ljava/lang/Boolean;

.field public s:Ljava/lang/reflect/Method;

.field public y:Lg/gma;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ani;->z:Ljava/lang/String;

    iput-object p2, p0, Lg/ani;->ab:Ljava/util/Queue;

    iput-boolean p3, p0, Lg/ani;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final ac()Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0}, Lg/dba;->ac()Z

    move-result v0

    return v0
.end method

.method public final ad()Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0}, Lg/dba;->ad()Z

    move-result v0

    return v0
.end method

.method public final ae()Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0}, Lg/dba;->ae()Z

    move-result v0

    return v0
.end method

.method public final af()Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0}, Lg/dba;->af()Z

    move-result v0

    return v0
.end method

.method public final ag()Z
    .locals 5

    iget-object v0, p0, Lg/ani;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/ani;->aa:Lg/dba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lg/cae;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lg/ani;->s:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/ani;->i:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/ani;->i:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lg/ani;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final ah()Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0}, Lg/dba;->ah()Z

    move-result v0

    return v0
.end method

.method public final ai()Lg/dba;
    .locals 3

    iget-object v0, p0, Lg/ani;->aa:Lg/dba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ani;->aa:Lg/dba;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lg/ani;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lg/eir;->d:Lg/eir;

    return-object v0

    :cond_1
    iget-object v0, p0, Lg/ani;->y:Lg/gma;

    if-nez v0, :cond_2

    new-instance v0, Lg/gma;

    iget-object v1, p0, Lg/ani;->ab:Ljava/util/Queue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lg/gma;->logger:Lg/ani;

    iget-object v2, p0, Lg/ani;->z:Ljava/lang/String;

    iput-object v2, v0, Lg/gma;->name:Ljava/lang/String;

    iput-object v1, v0, Lg/gma;->eventQueue:Ljava/util/Queue;

    iput-object v0, p0, Lg/ani;->y:Lg/gma;

    :cond_2
    iget-object v0, p0, Lg/ani;->y:Lg/gma;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->e(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lg/ani;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/ani;

    iget-object v2, p0, Lg/ani;->z:Ljava/lang/String;

    iget-object p1, p1, Lg/ani;->z:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ani;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/ani;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs n(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lg/dba;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lg/bmk;)Z
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->u(Lg/bmk;)Z

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/dba;->w(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method public final varargs x([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/ani;->ai()Lg/dba;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dba;->x([Ljava/lang/Object;)V

    return-void
.end method
