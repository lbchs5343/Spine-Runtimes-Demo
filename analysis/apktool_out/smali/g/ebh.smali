.class public abstract Lg/ebh;
.super Lg/ccm;
.source "SourceFile"

# interfaces
.implements Lg/gut;


# virtual methods
.method public final bs(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lg/dcj;->a:Lg/dba;

    invoke-interface {p0}, Lg/awj;->a()Lg/dwg;

    move-result-object v0

    iget-object v0, v0, Lg/dwg;->p:Lg/dcj;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lg/dcj;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lg/dcj;->a:Lg/dba;

    invoke-static {p0, p1}, Lg/dcj;->e(Lg/awj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/dba;->k(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lg/afa;->WARN:Lg/afa;

    invoke-static {p0, v0, p1}, Lg/bnz;->b(Lg/ebh;Lg/afa;Ljava/lang/String;)V

    sget-object p1, Lg/csv;->INCONSISTENT_CODE:Lg/csv;

    invoke-virtual {p0, p1}, Lg/lh;->w(Lg/csv;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lg/awj;->a()Lg/dwg;

    move-result-object v0

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-object v0, v0, Lg/ur;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lg/evh;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lg/afa;->WARN:Lg/afa;

    invoke-static {p0, p2, p1}, Lg/bnz;->b(Lg/ebh;Lg/afa;Ljava/lang/String;)V

    return-void
.end method

.method public final bu(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lg/afa;->WARN:Lg/afa;

    invoke-static {p0, v0, p1}, Lg/bnz;->b(Lg/ebh;Lg/afa;Ljava/lang/String;)V

    return-void
.end method

.method public final bv(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lg/afa;->INFO:Lg/afa;

    invoke-static {p0, v0, p1}, Lg/bnz;->b(Lg/ebh;Lg/afa;Ljava/lang/String;)V

    return-void
.end method

.method public final bw(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lg/afa;->DEBUG:Lg/afa;

    invoke-static {p0, v0, p1}, Lg/bnz;->b(Lg/ebh;Lg/afa;Ljava/lang/String;)V

    return-void
.end method

.method public final bx(Lg/afa;)Z
    .locals 1

    invoke-interface {p0}, Lg/awj;->a()Lg/dwg;

    move-result-object v0

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-object v0, v0, Lg/ur;->aq:Lg/afa;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
