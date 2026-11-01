.class public final Lg/aod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public final c:Lg/eek;

.field public d:Lg/aod;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/eek;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aod;->c:Lg/eek;

    iput-object p2, p0, Lg/aod;->e:Ljava/util/ArrayList;

    iput p3, p0, Lg/aod;->a:I

    iput p3, p0, Lg/aod;->b:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lg/aod;->i(Lg/eek;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lg/aod;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static h(Lg/eek;Ljava/util/BitSet;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lg/eek;->ai:Lg/gks;

    if-nez p0, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lg/gks;->e:I

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public static i(Lg/eek;Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    sget-object v2, Lg/hay;->TERNARY:Lg/hay;

    if-ne v0, v2, :cond_0

    check-cast p0, Lg/dwk;

    iget-object p0, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {p0}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Lg/gks;

    if-eqz v2, :cond_1

    check-cast v0, Lg/gks;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/cly;

    if-eqz v1, :cond_3

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-static {v0, p1}, Lg/aod;->i(Lg/eek;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final j()Lg/aod;
    .locals 1

    iget-object v0, p0, Lg/aod;->d:Lg/aod;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/aod;->j()Lg/aod;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lg/aod;->d:Lg/aod;

    :cond_0
    iget-object v0, p0, Lg/aod;->d:Lg/aod;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lg/aod;->c:Lg/eek;

    invoke-virtual {v0}, Lg/eek;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/aod;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aod;

    invoke-virtual {v1}, Lg/aod;->k()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final l(Ljava/util/BitSet;)V
    .locals 2

    iget-object v0, p0, Lg/aod;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget v1, v1, Lg/gks;->e:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/aod;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aod;

    invoke-virtual {v1, p1}, Lg/aod;->l(Ljava/util/BitSet;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArgsInfo: |"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/aod;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/aod;->d:Lg/aod;

    if-nez v1, :cond_0

    const-string v1, "-"

    goto :goto_0

    :cond_0
    iget v1, v1, Lg/aod;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/aod;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/aod;->c:Lg/eek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
