.class public final Lg/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lg/ve;

.field public final d:Lg/cwx;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/dwg;Lg/cwx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {p0, p1, p2, p3}, Lg/ve;->k(Lg/dwg;Lg/cwx;Z)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lg/ve;ZZ)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    if-eqz p2, :cond_4

    if-eqz p4, :cond_0

    const/16 v0, 0x24

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lg/ve;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lg/ve;->c:Lg/ve;

    const/4 p4, 0x1

    invoke-static {p0, p3, p2, p4, p4}, Lg/ve;->f(Ljava/lang/String;Ljava/lang/String;Lg/ve;ZZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lg/ve;->m()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lg/ve;->l()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p2, Lg/ve;->b:Ljava/lang/String;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lg/dwg;Ljava/lang/String;)Lg/ve;
    .locals 0

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    invoke-static {p0, p1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lg/dwg;Lg/cwx;)Lg/ve;
    .locals 2

    if-eqz p1, :cond_5

    instance-of v0, p1, Lg/aoe;

    if-eqz v0, :cond_0

    sget-object p1, Lg/cwx;->t:Lg/aog;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lg/btl;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lg/cwx;->bm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/dwg;->h:Lg/fzn;

    iget-object v0, v0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ve;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lg/dwg;->i:Lg/ur;

    iget-boolean v0, v0, Lg/ur;->m:Z

    new-instance v1, Lg/ve;

    invoke-direct {v1, p0, p1, v0}, Lg/ve;-><init>(Lg/dwg;Lg/cwx;Z)V

    iget-object p0, p0, Lg/dwg;->h:Lg/fzn;

    iget-object v0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/ve;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    new-instance p0, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not class type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lg/gck;

    const-string p1, "Null class type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/ve;

    invoke-virtual {p0, p1}, Lg/ve;->p(Lg/ve;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/ve;

    if-eqz v0, :cond_1

    check-cast p1, Lg/ve;

    iget-object p1, p1, Lg/ve;->d:Lg/cwx;

    iget-object v0, p0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/ve;->d:Lg/cwx;

    iget v0, v0, Lg/cwx;->az:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ve;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ve;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lg/dwg;Lg/cwx;Z)V
    .locals 6

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq p3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v2, p0, Lg/ve;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object p1

    iput-object p1, p0, Lg/ve;->c:Lg/ve;

    add-int/2addr p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    iput-object v1, p0, Lg/ve;->a:Ljava/lang/String;

    iput-object v2, p0, Lg/ve;->c:Lg/ve;

    :cond_3
    iput-object p2, p0, Lg/ve;->e:Ljava/lang/String;

    iget-object p1, p0, Lg/ve;->a:Ljava/lang/String;

    iget-object p3, p0, Lg/ve;->c:Lg/ve;

    invoke-static {p1, p2, p3, v4, v4}, Lg/ve;->f(Ljava/lang/String;Ljava/lang/String;Lg/ve;ZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/ve;->b:Ljava/lang/String;

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lg/ve;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/ve;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/ve;->c:Lg/ve;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lg/ve;->f(Ljava/lang/String;Ljava/lang/String;Lg/ve;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ve;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lg/ve;->c:Lg/ve;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lg/ve;->f(Ljava/lang/String;Ljava/lang/String;Lg/ve;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/ve;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2e

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/ve;->q()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lg/ve;)I
    .locals 1

    iget-object v0, p0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ve;->c:Lg/ve;

    invoke-virtual {v1}, Lg/ve;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/ve;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lg/gck;

    const-string v1, "Package is null for not inner class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Lg/ve;
    .locals 1

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/ve;->s()Lg/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/ve;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ve;->c:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ve;->b:Ljava/lang/String;

    return-object v0
.end method
