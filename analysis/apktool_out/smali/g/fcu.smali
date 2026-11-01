.class public final Lg/fcu;
.super Lg/pj;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fcu;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 8

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lg/hed;->ao:Lg/eys;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lg/acq;->af:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lg/fdl;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    iget-object v2, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v1, v2}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    iget-object v1, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lg/csv;->REMOVE:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lg/grs;

    invoke-direct {v3}, Lg/grs;-><init>()V

    invoke-virtual {v3}, Lg/grs;->aa()V

    invoke-virtual {v3}, Lg/grs;->m()V

    invoke-static {p1}, Lg/ejh;->f(Lg/hed;)Lg/ejh;

    move-result-object v4

    new-instance v5, Lg/grb;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lg/grb;-><init>(Lg/ejh;Z)V

    iget-object v4, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v3, v7}, Lg/grb;->ab(Lg/eek;Lg/eos;Lg/zw;)V
    :try_end_0
    .catch Lg/bae; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lg/grs;->m()V

    iget-object v3, v3, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*/"

    const-string v5, "*\\/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Code restructure failed: missing block: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", code lost:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/ebh;->bs(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lg/enz;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    iget-object v1, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v0, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    :cond_4
    :goto_2
    return-void
.end method
