.class public final Lg/goe;
.super Lg/eiy;
.source "SourceFile"

# interfaces
.implements Lg/foe;


# instance fields
.field public g:Lg/amj;

.field public h:Lg/amj;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/goe;->h:Lg/amj;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lg/amj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lg/goe;->g:Lg/amj;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lg/amj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lg/fsw;->f(Lg/goe;Lg/eos;Z)V

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/goe;->h:Lg/amj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg/goe;->g:Lg/amj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lg/amj;Lg/amj;)Z
    .locals 2

    iget-object v0, p0, Lg/goe;->h:Lg/amj;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lg/goe;->h:Lg/amj;

    instance-of p1, p2, Lg/cfm;

    if-eqz p1, :cond_1

    check-cast p2, Lg/cfm;

    check-cast p2, Lg/bjk;

    iput-object p0, p2, Lg/bjk;->d:Lg/cfm;

    return v1

    :cond_0
    iget-object v0, p0, Lg/goe;->g:Lg/amj;

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lg/goe;->g:Lg/amj;

    instance-of p1, p2, Lg/cfm;

    if-eqz p1, :cond_1

    check-cast p2, Lg/cfm;

    check-cast p2, Lg/bjk;

    iput-object p0, p2, Lg/bjk;->d:Lg/cfm;

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IF "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eiy;->ab:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " THEN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/goe;->h:Lg/amj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ELSE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/goe;->g:Lg/amj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/eiy;->ab:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lg/goe;->h:Lg/amj;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lg/goe;->g:Lg/amj;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
