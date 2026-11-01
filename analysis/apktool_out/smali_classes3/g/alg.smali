.class public abstract Lg/alg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dba;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2319b811d5894e77L


# instance fields
.field protected name:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->DEBUG:Lg/bmk;

    invoke-virtual {p0, v0, p2, p1, p3}, Lg/alg;->s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->ERROR:Lg/bmk;

    invoke-virtual {p0, v0, p2, p1, p3}, Lg/alg;->s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    sget-object p1, Lg/bmk;->WARN:Lg/bmk;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lg/bmk;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p3, p2

    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    array-length p2, p3

    if-eqz p2, :cond_3

    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    new-array v0, p2, [Ljava/lang/Object;

    if-lez p2, :cond_2

    const/4 v1, 0x0

    invoke-static {p3, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non-sensical empty or null argument array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1, p3}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    sget-object p1, Lg/bmk;->TRACE:Lg/bmk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lg/bmk;->ERROR:Lg/bmk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lg/bmk;->INFO:Lg/bmk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lg/bmk;->DEBUG:Lg/bmk;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract i(Lg/bmk;[Ljava/lang/Object;)V
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lg/bmk;->INFO:Lg/bmk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lg/bmk;->WARN:Lg/bmk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lg/bmk;->ERROR:Lg/bmk;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lg/bmk;->ERROR:Lg/bmk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs n(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->DEBUG:Lg/bmk;

    invoke-virtual {p0, v0, p1, p2}, Lg/alg;->d(Lg/bmk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lg/bmk;->DEBUG:Lg/bmk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lg/bmk;->WARN:Lg/bmk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->WARN:Lg/bmk;

    invoke-virtual {p0, v0, p1, p2}, Lg/alg;->d(Lg/bmk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->TRACE:Lg/bmk;

    invoke-virtual {p0, v0, p2, p1, p3}, Lg/alg;->s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Lg/alg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/dsr;->l(Ljava/lang/String;)Lg/dba;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    instance-of p2, p4, Ljava/lang/Throwable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v0

    invoke-virtual {p0, p1, p2}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v0

    aput-object p4, p2, v1

    invoke-virtual {p0, p1, p2}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/bmk;->WARN:Lg/bmk;

    invoke-virtual {p0, v0, p2, p1, p3}, Lg/alg;->s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic u(Lg/bmk;)Z
    .locals 0

    invoke-static {p0, p1}, Lg/awf;->v(Lg/dba;Lg/bmk;)Z

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lg/bmk;->DEBUG:Lg/bmk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lg/alg;->i(Lg/bmk;[Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "Found resource shared library {}, pkgId: {}"

    sget-object v1, Lg/bmk;->INFO:Lg/bmk;

    invoke-virtual {p0, v1, v0, p1, p2}, Lg/alg;->s(Lg/bmk;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs x([Ljava/lang/Object;)V
    .locals 2

    const-string v0, "Potential zip bomb attack detected, invalid sizes: compressed {}, uncompressed {}, name {}"

    sget-object v1, Lg/bmk;->ERROR:Lg/bmk;

    invoke-virtual {p0, v1, v0, p1}, Lg/alg;->d(Lg/bmk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
