.class public final Lg/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:I

.field public f:I


# virtual methods
.method public final g(Ljava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lg/ic;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ic;

    iget v3, p0, Lg/ic;->c:I

    iget v4, v2, Lg/ic;->e:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lg/ic;->f:I

    invoke-virtual {p0, v3, v2}, Lg/ic;->i(ILg/ic;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final h(Lg/bwo;I)I
    .locals 8

    iget-object v0, p0, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/brh;

    iget-object v1, v1, Lg/brh;->bj:Lg/brh;

    check-cast v1, Lg/aep;

    invoke-virtual {p1}, Lg/bwo;->ah()V

    invoke-virtual {v1, p1, v2}, Lg/brh;->g(Lg/bwo;Z)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/brh;

    invoke-virtual {v4, p1, v2}, Lg/brh;->g(Lg/bwo;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget v3, v1, Lg/aep;->u:I

    if-lez v3, :cond_2

    invoke-static {v1, p1, v0, v2}, Lg/dzm;->ag(Lg/aep;Lg/bwo;Ljava/util/ArrayList;I)V

    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    iget v4, v1, Lg/aep;->n:I

    if-lez v4, :cond_3

    invoke-static {v1, p1, v0, v3}, Lg/dzm;->ag(Lg/aep;Lg/bwo;Ljava/util/ArrayList;I)V

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lg/bwo;->ab()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "["

    const-string v7, "   at "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    const-string v7, "\n   at"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lg/ic;->b:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    new-instance v4, Lg/fbc;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lg/fbc;-><init>(I)V

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v5, v3, Lg/brh;->cw:Lg/hac;

    invoke-static {v5}, Lg/bwo;->r(Ljava/lang/Object;)I

    iget-object v5, v3, Lg/brh;->bx:Lg/hac;

    invoke-static {v5}, Lg/bwo;->r(Ljava/lang/Object;)I

    iget-object v5, v3, Lg/brh;->br:Lg/hac;

    invoke-static {v5}, Lg/bwo;->r(Ljava/lang/Object;)I

    iget-object v5, v3, Lg/brh;->as:Lg/hac;

    invoke-static {v5}, Lg/bwo;->r(Ljava/lang/Object;)I

    iget-object v3, v3, Lg/brh;->bp:Lg/hac;

    invoke-static {v3}, Lg/bwo;->r(Ljava/lang/Object;)I

    iget-object v3, p0, Lg/ic;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    iget-object p2, v1, Lg/brh;->cw:Lg/hac;

    invoke-static {p2}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, v1, Lg/brh;->br:Lg/hac;

    invoke-static {v0}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lg/bwo;->ah()V

    :goto_3
    sub-int/2addr v0, p2

    goto :goto_4

    :cond_5
    iget-object p2, v1, Lg/brh;->bx:Lg/hac;

    invoke-static {p2}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, v1, Lg/brh;->as:Lg/hac;

    invoke-static {v0}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lg/bwo;->ah()V

    goto :goto_3

    :goto_4
    return v0
.end method

.method public final i(ILg/ic;)V
    .locals 4

    iget-object v0, p0, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/brh;

    iget-object v2, p2, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v2, p2, Lg/ic;->e:I

    if-nez p1, :cond_1

    iput v2, v1, Lg/brh;->az:I

    goto :goto_0

    :cond_1
    iput v2, v1, Lg/brh;->ci:I

    goto :goto_0

    :cond_2
    iget p1, p2, Lg/ic;->e:I

    iput p1, p0, Lg/ic;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/ic;->f:I

    if-nez v1, :cond_0

    const-string v1, "Horizontal"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Vertical"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "Both"

    goto :goto_0

    :cond_2
    const-string v1, "Unknown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ic;->e:I

    const-string v2, "] <"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/brh;

    const-string v3, " "

    invoke-static {v0, v3}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, " >"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
