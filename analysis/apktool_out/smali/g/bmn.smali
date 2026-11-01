.class public final Lg/bmn;
.super Lg/bjk;
.source "SourceFile"

# interfaces
.implements Lg/foe;


# instance fields
.field public g:Lg/guv;

.field public h:Lg/amj;

.field public final i:Lg/eys;

.field public j:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lg/cfm;Lg/eys;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bjk;-><init>(Lg/cfm;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lg/bmn;->j:Ljava/util/Map;

    iput-object p2, p0, Lg/bmn;->i:Lg/eys;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bmn;->i:Lg/eys;

    invoke-virtual {v0}, Lg/eys;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 5

    iget-object v0, p1, Lg/grb;->m:Lg/hed;

    check-cast p2, Lg/grs;

    const-string v1, "try {"

    invoke-virtual {p2, v1}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    iget-object v1, p0, Lg/bmn;->g:Lg/guv;

    iget-object v1, v1, Lg/guv;->b:Ljava/util/List;

    sget-object v2, Lg/evh;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lg/cih;

    invoke-static {v1}, Lg/ffb;->bq(Lg/cih;)Lg/eek;

    move-result-object v1

    invoke-static {p2, v1}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    invoke-static {p2, v0, v1}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v1, p0, Lg/bmn;->i:Lg/eys;

    invoke-virtual {p1, p2, v1}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    iget-object v1, p0, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aea;

    invoke-virtual {v2}, Lg/aea;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    sget-object v3, Lg/fsw;->a:Lg/dba;

    const-string v4, "Several \'all\' handlers in try/catch block in {}"

    invoke-interface {v3, v0, v4}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2, v2}, Lg/fsw;->e(Lg/eos;Lg/aea;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p1, p2, v3}, Lg/fsw;->e(Lg/eos;Lg/aea;)V

    :cond_4
    iget-object v0, p0, Lg/bmn;->h:Lg/amj;

    if-eqz v0, :cond_5

    const-string v1, "} finally {"

    invoke-virtual {p2, v1}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    :cond_5
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lg/grs;->ad(C)Lg/grs;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Try: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bmn;->i:Lg/eys;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " catches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lg/bmn;->h:Lg/amj;

    if-eqz v1, :cond_1

    const-string v1, " finally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bmn;->h:Lg/amj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/bmn;->i:Lg/eys;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg/bmn;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lg/bmn;->h:Lg/amj;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
