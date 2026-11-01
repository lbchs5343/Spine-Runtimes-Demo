.class public final Lg/ghm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/hed;

.field public final b:Lg/bei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ghm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/bei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ghm;->a:Lg/hed;

    iput-object p2, p0, Lg/ghm;->b:Lg/bei;

    return-void
.end method

.method public static c(Lg/hed;Lg/fza;)Lg/gxv;
    .locals 4

    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->IF:Lg/hay;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lg/bgw;

    new-instance v1, Lg/eii;

    new-instance v2, Lg/evf;

    invoke-direct {v2, v0}, Lg/evf;-><init>(Lg/bgw;)V

    invoke-direct {v1, v2}, Lg/eii;-><init>(Lg/evf;)V

    new-instance v2, Lg/gxv;

    iget-object v3, v0, Lg/bgw;->_br:Lg/fza;

    iget-object v0, v0, Lg/bgw;->x:Lg/fza;

    invoke-direct {v2, p0, v1, v3, v0}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;)V

    iget-object p0, v2, Lg/gxv;->b:Ljava/lang/Object;

    check-cast p0, Lg/fon;

    invoke-virtual {p0, p1}, Lg/fon;->c(Lg/fza;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lg/hed;Lg/fza;Lg/gxv;)Lg/gxv;
    .locals 11

    iget-object v0, p2, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    iget-object v1, p2, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance p0, Lg/gxv;

    invoke-direct {p0, p2, v3}, Lg/gxv;-><init>(Lg/gxv;Lg/fza;)V

    iput-object v0, p0, Lg/gxv;->i:Ljava/lang/Object;

    return-object p0

    :cond_0
    sget-object v2, Lg/csv;->RETURN:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v3, p2, Lg/gxv;->i:Ljava/lang/Object;

    return-object p2

    :cond_1
    if-ne v0, v1, :cond_2

    move-object v2, v0

    goto/16 :goto_2

    :cond_2
    if-nez v1, :cond_3

    move-object v2, v3

    goto/16 :goto_2

    :cond_3
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v2

    iget-object v4, v0, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget v4, v0, Lg/fza;->x:I

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v4

    iget-object v5, v1, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget v5, v1, Lg/fza;->x:I

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    iget-object v2, p0, Lg/hed;->ad:Lg/fza;

    iget v2, v2, Lg/fza;->x:I

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->clear(I)V

    invoke-static {p0, v5}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v2

    iget-object v4, v0, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v4, v1, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v4, p0, Lg/hed;->ad:Lg/fza;

    iget v4, v4, Lg/fza;->x:I

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->clear(I)V

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v4

    invoke-static {p0, v2}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v6

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v7

    if-ne v5, v1, :cond_7

    iget v8, v5, Lg/fza;->x:I

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    :cond_7
    if-ne v5, v0, :cond_8

    iget v8, v5, Lg/fza;->x:I

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    :cond_8
    iget-object v8, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    invoke-static {v0, v9}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v9, Lg/fza;->x:I

    invoke-virtual {v6, v10}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-static {v1, v9}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget v9, v9, Lg/fza;->x:I

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_b
    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    if-nez v8, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {p0, v7}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v7

    invoke-static {p0, v6}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v6

    if-eqz v7, :cond_d

    if-ne v7, v6, :cond_d

    goto :goto_0

    :cond_d
    iget v5, v5, Lg/fza;->x:I

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_e
    invoke-static {p0, v4}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v2

    if-eqz v2, :cond_f

    goto :goto_2

    :cond_f
    invoke-static {p0, v0, v1}, Lg/ffb;->z(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v2

    :goto_2
    iput-object v2, p2, Lg/gxv;->i:Ljava/lang/Object;

    invoke-static {p2, v0}, Lg/ghm;->m(Lg/gxv;Lg/fza;)Z

    move-result v2

    invoke-static {p2, v1}, Lg/ghm;->m(Lg/gxv;Lg/fza;)Z

    move-result v4

    if-eqz v2, :cond_10

    if-eqz v4, :cond_10

    return-object v3

    :cond_10
    if-eqz v4, :cond_11

    new-instance v2, Lg/gxv;

    invoke-direct {v2, p2, v0}, Lg/gxv;-><init>(Lg/gxv;Lg/fza;)V

    iput-object v1, v2, Lg/gxv;->i:Ljava/lang/Object;

    :goto_3
    move-object p2, v2

    goto :goto_4

    :cond_11
    if-eqz v2, :cond_12

    invoke-static {p2}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object p2

    new-instance v2, Lg/gxv;

    invoke-direct {v2, p2, v1}, Lg/gxv;-><init>(Lg/gxv;Lg/fza;)V

    iput-object v0, v2, Lg/gxv;->i:Ljava/lang/Object;

    goto :goto_3

    :cond_12
    :goto_4
    iget-object v0, p2, Lg/gxv;->i:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    if-nez v0, :cond_15

    iget-object v0, p2, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    invoke-static {p0, v0}, Lg/ghm;->j(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object v0

    iget-object v1, p2, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-static {p0, v1}, Lg/ghm;->j(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object p0

    if-nez v0, :cond_13

    if-eqz p0, :cond_13

    iput-object p0, p2, Lg/gxv;->i:Ljava/lang/Object;

    goto :goto_5

    :cond_13
    if-eqz v0, :cond_14

    if-nez p0, :cond_14

    iput-object v0, p2, Lg/gxv;->i:Ljava/lang/Object;

    goto :goto_5

    :cond_14
    if-eqz v0, :cond_15

    if-ne v0, p0, :cond_15

    iput-object v0, p2, Lg/gxv;->i:Ljava/lang/Object;

    :cond_15
    :goto_5
    iget-object p0, p2, Lg/gxv;->i:Ljava/lang/Object;

    check-cast p0, Lg/fza;

    if-nez p0, :cond_16

    goto :goto_6

    :cond_16
    iget-object v0, p1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_6
    const/4 p0, 0x0

    goto :goto_7

    :cond_17
    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_7
    if-eqz p0, :cond_18

    iput-object v3, p2, Lg/gxv;->i:Ljava/lang/Object;

    :cond_18
    return-object p2
.end method

.method public static e(Lg/fza;)Lg/fza;
    .locals 4

    iget-object p0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    sget-object v1, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    move-object v0, p0

    :cond_4
    iget-object p0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lg/ghm;->e(Lg/fza;)Lg/fza;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lg/gxv;Lg/fza;)Lg/gxv;
    .locals 3

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fon;

    iget-object v1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-virtual {v0, v2}, Lg/fon;->d(Lg/fza;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lg/ghm;->h(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lg/gxv;)V
    .locals 4

    iget-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fon;

    iget-object v1, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fon;

    invoke-virtual {v0}, Lg/fon;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v2, v0

    check-cast v2, Lg/fdz;

    invoke-virtual {v2}, Lg/fdz;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lg/fdz;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-virtual {p0}, Lg/gxv;->l()Lg/fza;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v3, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    sget-object v3, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_3
    iget-object p0, p0, Lg/gxv;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    sget-object v1, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static h(Lg/gxv;Lg/fza;)Lg/gxv;
    .locals 11

    iget-object v0, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    if-eqz p1, :cond_c

    sget-object v1, Lg/acq;->at:Lg/acq;

    iget-object v2, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->j(Lg/fky;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    iget-object v2, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->IF:Lg/hay;

    if-ne v2, v3, :cond_1

    invoke-static {v0, p1}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lg/ghm;->e(Lg/fza;)Lg/fza;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v3, v2, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    iget-object v3, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    const/4 v8, 0x0

    if-nez v7, :cond_5

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gsh;

    iget-object v7, v7, Lg/gsh;->ae:Lg/eek;

    invoke-static {p1, v7}, Lg/ffb;->af(Lg/fza;Lg/eek;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v2, v7}, Lg/ffb;->af(Lg/fza;Lg/eek;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    if-le v9, v4, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    :cond_9
    move v4, v5

    :goto_2
    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {v0, v2}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {p0, v2}, Lg/ghm;->h(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p0, p1, Lg/gxv;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_c
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lg/gxv;)Lg/gxv;
    .locals 12

    iget-object v0, p0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    iget-object v1, p0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    iget-object v2, p0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v2, Lg/fza;

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {v0}, Lg/ffb;->ao(Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v2}, Lg/ffb;->ao(Lg/fza;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {p0, v0}, Lg/ghm;->f(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lg/ghm;->f(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object v3

    if-eqz v3, :cond_1d

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v3, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v8, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v8, Lg/fon;

    invoke-virtual {v8}, Lg/fon;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    move-object v9, v8

    check-cast v9, Lg/fdz;

    invoke-virtual {v9}, Lg/fdz;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lg/fdz;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    sget-object v10, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v9, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_3

    :cond_4
    iget-object v8, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    invoke-static {v2, v8}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v3, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    invoke-static {v1, v8}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-static {v3}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object v3

    :cond_6
    iget-object v8, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    invoke-static {v0, v8}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v8

    iget-object v9, v3, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v9, Lg/fza;

    invoke-static {v2, v9}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v9

    if-nez v8, :cond_14

    if-nez v9, :cond_14

    iget-object v7, v0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_7

    iget-object v7, v0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v7, v2, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_8

    iget-object v7, v2, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_8

    :cond_8
    if-eqz v6, :cond_9

    move-object v7, v2

    goto :goto_1

    :cond_9
    move-object v7, v0

    :goto_1
    invoke-static {v7}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v7

    invoke-virtual {v3}, Lg/gxv;->l()Lg/fza;

    move-result-object v8

    invoke-static {v8, v7}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p0, v0}, Lg/ghm;->f(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object v0

    invoke-static {p0, v2}, Lg/ghm;->f(Lg/gxv;Lg/fza;)Lg/gxv;

    move-result-object v1

    if-eqz v0, :cond_1d

    if-nez v1, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v0}, Lg/gxv;->l()Lg/fza;

    move-result-object v2

    iget-object v2, v2, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v1}, Lg/gxv;->l()Lg/fza;

    move-result-object v3

    iget-object v3, v3, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-static {v0}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object v0, v2

    :cond_c
    iget-object v2, v0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v2, Lg/fza;

    invoke-static {v1}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object v1, v3

    :cond_d
    iget-object v3, v1, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    iget-object v4, v0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v4, Lg/fza;

    iget-object v5, v1, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v5, Lg/fza;

    if-ne v4, v5, :cond_e

    if-ne v2, v3, :cond_e

    invoke-static {p0, v0, v1}, Lg/ghm;->k(Lg/gxv;Lg/gxv;Lg/gxv;)Lg/gxv;

    move-result-object p0

    return-object p0

    :cond_e
    if-ne v4, v3, :cond_1d

    if-ne v2, v5, :cond_1d

    invoke-static {v1}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lg/ghm;->k(Lg/gxv;Lg/gxv;Lg/gxv;)Lg/gxv;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {v3}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v7, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v7, Lg/fza;

    invoke-static {v2, v7}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v3, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v7, Lg/fza;

    invoke-static {v1, v7}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    invoke-static {v3}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object v1

    move-object v3, v1

    :cond_11
    if-eqz v6, :cond_12

    iget-object v1, v3, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-static {v2, v1}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v1

    goto :goto_2

    :cond_12
    iget-object v1, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-static {v0, v1}, Lg/ffb;->ch(Lg/fza;Lg/fza;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_18

    :cond_13
    :goto_3
    return-object p0

    :cond_14
    if-nez v7, :cond_18

    if-eqz v8, :cond_15

    if-eqz v6, :cond_16

    :cond_15
    if-eqz v9, :cond_17

    if-eqz v6, :cond_17

    :cond_16
    const/4 v1, 0x1

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_18

    iget-object v0, p0, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0

    :cond_18
    iget-object v1, v3, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    iget-object v7, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v7, Lg/fza;

    iget-object v8, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v8, Lg/hed;

    iget-object v9, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    if-eqz v6, :cond_19

    invoke-static {v2, v1, v9, v8}, Lg/ghm;->l(Lg/fza;Lg/fza;Ljava/util/Set;Lg/hed;)Lg/fza;

    move-result-object v1

    goto :goto_5

    :cond_19
    invoke-static {v0, v7, v9, v8}, Lg/ghm;->l(Lg/fza;Lg/fza;Ljava/util/Set;Lg/hed;)Lg/fza;

    move-result-object v7

    :goto_5
    if-eqz v6, :cond_1a

    sget-object v0, Lg/ath;->AND:Lg/ath;

    goto :goto_6

    :cond_1a
    sget-object v0, Lg/ath;->OR:Lg/ath;

    :goto_6
    iget-object v2, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lg/eii;

    iget-object v6, v3, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v6, Lg/eii;

    iget-object v9, v2, Lg/eii;->a:Lg/ath;

    const/4 v10, 0x2

    if-ne v9, v0, :cond_1b

    new-instance v0, Lg/eii;

    invoke-direct {v0, v2}, Lg/eii;-><init>(Lg/eii;)V

    iget-object v2, v0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    new-instance v9, Lg/eii;

    new-array v11, v10, [Lg/eii;

    aput-object v2, v11, v4

    aput-object v6, v11, v5

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v0, v2}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    move-object v0, v9

    :goto_7
    new-instance v2, Lg/gxv;

    invoke-direct {v2, v8, v0, v7, v1}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;)V

    new-array v0, v10, [Lg/gxv;

    aput-object p0, v0, v4

    aput-object v3, v0, v5

    invoke-virtual {v2, v0}, Lg/gxv;->m([Lg/gxv;)V

    invoke-static {v2}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object p0

    if-eqz p0, :cond_1c

    return-object p0

    :cond_1c
    return-object v2

    :cond_1d
    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Lg/hed;Lg/fza;)Lg/fza;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lg/fza;->i:Ljava/util/BitSet;

    invoke-static {p0, v1}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

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

    sget-object v3, Lg/acq;->bh:Lg/acq;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v3}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/eng;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lg/eng;->a:Lg/aea;

    iget-object v3, v2, Lg/aea;->j:Lg/guv;

    iget-object v3, v3, Lg/guv;->a:Lg/fza;

    invoke-virtual {p1, v3}, Lg/fza;->ae(Lg/fza;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lg/ffb;->bu(Lg/hed;Lg/aea;)Lg/fza;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static k(Lg/gxv;Lg/gxv;Lg/gxv;)Lg/gxv;
    .locals 9

    iget-object v0, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v0, Lg/eii;

    iget-object v1, p1, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v1, Lg/eii;

    iget-object v2, p2, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lg/eii;

    new-instance v3, Lg/eii;

    sget-object v4, Lg/ath;->TERNARY:Lg/ath;

    const/4 v5, 0x3

    new-array v6, v5, [Lg/eii;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    aput-object v2, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lg/eii;-><init>(Lg/ath;Ljava/util/List;)V

    new-instance v2, Lg/gxv;

    iget-object v4, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v4, Lg/hed;

    iget-object v6, p1, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v6, Lg/fza;

    iget-object v8, p1, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    invoke-direct {v2, v4, v3, v6, v8}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;)V

    new-array v3, v5, [Lg/gxv;

    aput-object p0, v3, v7

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    invoke-virtual {v2, v3}, Lg/gxv;->m([Lg/gxv;)V

    invoke-static {v2}, Lg/ghm;->g(Lg/gxv;)V

    return-object v2
.end method

.method public static l(Lg/fza;Lg/fza;Ljava/util/Set;Lg/hed;)Lg/fza;
    .locals 3

    if-ne p0, p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lg/ffb;->bz(Lg/fza;Lg/fza;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lg/ffb;->ar(Lg/fza;Lg/fza;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p3, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {p0, p3}, Lg/lh;->w(Lg/csv;)V

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_2
    invoke-static {p3, p0, p1}, Lg/ffb;->z(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/agx;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p2}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p3, p0, v0, v1}, Lg/ffb;->at(Lg/hed;Lg/fza;Lg/fza;Ljava/util/function/Consumer;)V

    new-instance p0, Lg/agx;

    const/16 v1, 0xd

    invoke-direct {p0, v1, p2}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p3, p1, v0, p0}, Lg/ffb;->at(Lg/hed;Lg/fza;Lg/fza;Ljava/util/function/Consumer;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    invoke-static {p0}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object p3

    invoke-static {p1}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v0

    invoke-virtual {p3, v0}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p3, v0}, Lg/ffb;->bz(Lg/fza;Lg/fza;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lg/gck;

    const-string p1, "Unexpected merge pattern"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {p0, p3, v1}, Lg/ffb;->az(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object p0

    if-nez p0, :cond_7

    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v1}, Lg/ffb;->az(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static m(Lg/gxv;Lg/fza;)Z
    .locals 7

    sget-object v0, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    sget-object v3, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lg/acq;->at:Lg/acq;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v3}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gcv;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gcv;

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/gxv;->i:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    if-eqz v0, :cond_4

    if-ne p1, v0, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1

    :cond_4
    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    iget-object p0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast p0, Lg/fon;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    sget-object v3, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lg/ffb;->bx(Lg/fza;)Lg/fza;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fon;->d(Lg/fza;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    :goto_2
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method
