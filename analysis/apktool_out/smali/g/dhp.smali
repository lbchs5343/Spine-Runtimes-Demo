.class public final Lg/dhp;
.super Lg/bgf;
.source "SourceFile"


# direct methods
.method public static a(Lg/amj;)Z
    .locals 3

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lg/csv;->RETURN:Lg/csv;

    check-cast p0, Lg/lh;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_4

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/dhp;->a(Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown container type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final _cs(Lg/hed;Lg/cfm;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lg/bgf;->_cs(Lg/hed;Lg/cfm;)Z

    instance-of p1, p2, Lg/eln;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ad(Lg/hed;Lg/cih;Lg/cfm;)V
    .locals 4

    iget-object p3, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lg/fza;

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p2, Lg/fza;

    sget-object v0, Lg/csv;->RETURN:Lg/csv;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p1, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lg/hed;->bi(Lg/fza;)Lg/gcv;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cfm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lg/cab;

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_4
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p3, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cfm;

    instance-of v2, v1, Lg/foe;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/amj;

    if-ne v3, p3, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lg/dhp;->a(Lg/amj;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_8
    :goto_2
    move-object p3, v1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object p1, Lg/csv;->RETURN:Lg/csv;

    invoke-virtual {p2, p1}, Lg/lh;->v(Lg/csv;)V

    :cond_a
    :goto_3
    return-void
.end method
