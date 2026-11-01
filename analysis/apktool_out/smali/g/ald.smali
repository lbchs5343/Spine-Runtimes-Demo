.class public final Lg/ald;
.super Lg/baf;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public b:Lg/eln;

.field public final c:Ljava/util/HashSet;

.field public final synthetic d:I

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/ald;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/ald;->a:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/ald;->c:Ljava/util/HashSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ald;->e:Z

    return-void
.end method


# virtual methods
.method public final _ar(Lg/hed;Lg/cfm;)V
    .locals 4

    iget-object p1, p0, Lg/ald;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lg/ald;->b:Lg/eln;

    sget-object v1, Lg/diu;->a:Lg/dba;

    new-instance v1, Lg/eek;

    sget-object v2, Lg/hay;->BREAK:Lg/hay;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/eek;-><init>(Lg/hay;I)V

    sget-object v2, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v1, v2}, Lg/lh;->w(Lg/csv;)V

    new-instance v2, Lg/ayi;

    invoke-direct {v2, v0}, Lg/ayi;-><init>(Lg/eln;)V

    invoke-virtual {v1, v2}, Lg/lh;->m(Lg/eue;)V

    new-instance v0, Lg/gqu;

    invoke-direct {v0, v1}, Lg/gqu;-><init>(Lg/eek;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lg/ald;->c:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lg/brj;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Lg/brj;-><init>(I)V

    invoke-static {p1, p2}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_1
    return-void
.end method

.method public final _cs(Lg/hed;Lg/cfm;)Z
    .locals 12

    iget v0, p0, Lg/ald;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    instance-of v1, v0, Lg/cih;

    if-eqz v1, :cond_c

    check-cast v0, Lg/cih;

    invoke-virtual {p0, v0}, Lg/ald;->h(Lg/cih;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lg/cih;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    invoke-interface {v0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eek;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-static {v2, p1}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    instance-of v1, p1, Lg/cih;

    if-eqz v1, :cond_1

    check-cast p1, Lg/cih;

    invoke-interface {p1}, Lg/cih;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eek;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lg/eek;->ba()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v0, p2}, Lg/ald;->g(Lg/cih;Lg/amj;)V

    goto/16 :goto_5

    :pswitch_0
    instance-of v0, p2, Lg/foe;

    if-eqz v0, :cond_c

    instance-of v0, p2, Lg/eln;

    if-nez v0, :cond_c

    move-object v0, p2

    check-cast v0, Lg/bjk;

    iget-object v0, v0, Lg/bjk;->d:Lg/cfm;

    sget-object v1, Lg/csv;->FALL_THROUGH:Lg/csv;

    move-object v2, v0

    check-cast v2, Lg/lh;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {v0}, Lg/gs;->v(Lg/amj;)Lg/cih;

    move-result-object v1

    invoke-static {v1}, Lg/ffb;->ah(Lg/cih;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lg/ald;->h(Lg/cih;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    check-cast p2, Lg/foe;

    invoke-interface {p2}, Lg/foe;->e()Ljava/util/List;

    move-result-object p2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v6, 0x1

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/amj;

    if-nez v7, :cond_5

    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lg/gs;->ae(Lg/amj;)Lg/fep;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    iget-object v9, v8, Lg/fep;->b:Lg/eek;

    iget-object v10, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->BREAK:Lg/hay;

    if-ne v10, v11, :cond_7

    iget-object v6, v8, Lg/fep;->a:Lg/cih;

    invoke-static {v6, v7}, Lg/gs;->i(Lg/cih;Lg/amj;)Lg/amj;

    move-result-object v7

    new-instance v8, Lg/bns;

    invoke-direct {v8, v6, v7}, Lg/bns;-><init>(Lg/cih;Lg/amj;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Lg/eek;->ba()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/bns;

    iget-object v5, v4, Lg/bns;->b:Lg/cih;

    iget-object v4, v4, Lg/bns;->a:Lg/amj;

    invoke-virtual {p0, v5, v4}, Lg/ald;->g(Lg/cih;Lg/amj;)V

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    iget-object p2, p0, Lg/ald;->a:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lg/ald;->e:Z

    :cond_a
    sget-object p2, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    invoke-virtual {p1, p2}, Lg/lh;->w(Lg/csv;)V

    :cond_b
    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {p0, v1, v0}, Lg/ald;->g(Lg/cih;Lg/amj;)V

    :cond_c
    :goto_5
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lg/cih;Lg/amj;)V
    .locals 3

    invoke-interface {p1}, Lg/cih;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->BREAK:Lg/hay;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lg/acw;->am(Ljava/util/List;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    check-cast p1, Lg/lh;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    iget-object p1, p0, Lg/ald;->c:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final h(Lg/cih;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/cih;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eek;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->BREAK:Lg/hay;

    if-ne v0, v1, :cond_0

    sget-object v0, Lg/acq;->be:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/ayi;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/ayi;->a:Lg/cfm;

    iget-object v0, p0, Lg/ald;->b:Lg/eln;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
