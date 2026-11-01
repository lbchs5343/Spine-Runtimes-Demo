.class public final Lg/enz;
.super Lg/baf;
.source "SourceFile"

# interfaces
.implements Lg/avy;


# static fields
.field public static final a:Lg/enz;

.field public static final b:Lg/enz;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/enz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    sput-object v0, Lg/enz;->b:Lg/enz;

    new-instance v0, Lg/enz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    sput-object v0, Lg/enz;->a:Lg/enz;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/enz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static br(Lg/hed;Lg/eek;Lg/eek;)Z
    .locals 3

    sget-object v0, Lg/csv;->USE_LINES_HINTS:Lg/csv;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    iget p0, p1, Lg/ccm;->bp:I

    iget v1, p2, Lg/ccm;->bp:I

    if-eq p0, v1, :cond_9

    if-eqz p0, :cond_7

    if-eqz v1, :cond_7

    iget-object p0, p1, Lg/eek;->ai:Lg/gks;

    if-eqz p0, :cond_8

    iget-object p1, p2, Lg/eek;->ai:Lg/gks;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0}, Lg/vm;->q()Lg/abi;

    move-result-object p0

    iget-object p1, p2, Lg/eek;->ai:Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->q()Lg/abi;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eq p0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iget-object p0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gsh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Lg/gks;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    check-cast p2, Lg/gks;

    invoke-virtual {p2}, Lg/gks;->aa()Lg/eek;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget p2, p2, Lg/ccm;->bp:I

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lg/ebe;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, v1, v2}, Lj$/util/Map$b;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_6

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lg/enz;->e(Lg/eek;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {p2}, Lg/enz;->e(Lg/eek;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_2
    return v0
.end method

.method public static d(Lg/amj;)Lg/fza;
    .locals 2

    instance-of v0, p0, Lg/eys;

    if-eqz v0, :cond_0

    check-cast p0, Lg/eys;

    iget-object v0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    instance-of v0, p0, Lg/fza;

    if-eqz v0, :cond_0

    check-cast p0, Lg/fza;

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lg/eek;)Z
    .locals 5

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->TERNARY:Lg/hay;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/cly;

    if-eqz v4, :cond_1

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    invoke-static {v3}, Lg/enz;->e(Lg/eek;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static g(Ljava/util/List;Lg/fza;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    if-eq v0, p1, :cond_0

    iget-object v1, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static h(Lg/amj;)Z
    .locals 2

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    move-object v1, p0

    check-cast v1, Lg/lh;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/fza;

    if-eqz v0, :cond_1

    check-cast p0, Lg/fza;

    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Lg/cab;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lg/cab;

    iget-object v0, v0, Lg/cab;->z:Lg/fza;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_5

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/enz;->h(Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Lg/hed;Lg/cfm;)Z
    .locals 14

    instance-of v0, p1, Lg/goe;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p1, Lg/goe;

    sget-object v0, Lg/csv;->ELSE_IF_CHAIN:Lg/csv;

    iget-object v2, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lg/goe;->h:Lg/amj;

    iget-object v2, p1, Lg/goe;->g:Lg/amj;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_d

    invoke-static {v0}, Lg/enz;->d(Lg/amj;)Lg/fza;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v2, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    iget-object v6, v2, Lg/eek;->ai:Lg/gks;

    if-eqz v6, :cond_17

    iget-object v7, v6, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v7, v6, Lg/gks;->a:Lg/vm;

    invoke-virtual {v7}, Lg/vm;->q()Lg/abi;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-object v8, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eq v9, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gsh;

    invoke-virtual {v6, v8}, Lg/gks;->x(Lg/gsh;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v4, v8

    check-cast v4, Lg/gks;

    :cond_5
    if-nez v4, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4}, Lg/gks;->aa()Lg/eek;

    move-result-object v3

    invoke-virtual {p0}, Lg/hed;->bk()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v6}, Lg/cci;->bi()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v6}, Lg/ayu;->m()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lg/eek;->as()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p0, v2, v3}, Lg/enz;->br(Lg/hed;Lg/eek;Lg/eek;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_3

    :cond_8
    iget-object v6, v2, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v6, v4}, Lg/gks;->y(Lg/gks;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_3

    :cond_9
    :goto_0
    iget-object v6, p1, Lg/eiy;->ab:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    iget-object v8, p1, Lg/bjk;->d:Lg/cfm;

    invoke-interface {v8, p1, v6}, Lg/cfm;->f(Lg/amj;Lg/amj;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_3

    :cond_a
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lg/eek;->as()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v4, v3, Lg/eek;->ai:Lg/gks;

    iget-object v4, v4, Lg/gks;->a:Lg/vm;

    iget-object v8, v4, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_b

    invoke-virtual {v4}, Lg/vm;->q()Lg/abi;

    move-result-object v4

    if-ne v4, v7, :cond_b

    invoke-static {p0, v3}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    :cond_b
    invoke-static {v3}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v3

    goto :goto_1

    :cond_c
    invoke-virtual {v4}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    :goto_1
    invoke-static {v2}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v4

    iget-object v5, v7, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v5}, Lg/gks;->z()Lg/gks;

    move-result-object v5

    new-instance v8, Lg/dwk;

    iget-object v9, p1, Lg/eiy;->aa:Lg/eii;

    invoke-direct {v8, v9, v5, v4, v3}, Lg/dwk;-><init>(Lg/eii;Lg/gks;Lg/gsh;Lg/gsh;)V

    invoke-virtual {v8}, Lg/dwk;->y()V

    invoke-static {p0, v7}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    invoke-static {p0, v2}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    invoke-static {v0, v2}, Lg/con;->b(Lg/fza;Lg/eek;)V

    iget-object v0, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Lg/dwk;->_bs()V

    iget-object v0, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/eiy;->ab:Ljava/util/List;

    invoke-static {p1, v6}, Lg/enz;->g(Ljava/util/List;Lg/fza;)V

    invoke-static {p0}, Lg/eak;->av(Lg/hed;)V

    return v1

    :cond_d
    invoke-static {v0}, Lg/enz;->d(Lg/amj;)Lg/fza;

    move-result-object v0

    invoke-static {v2}, Lg/enz;->d(Lg/amj;)Lg/fza;

    move-result-object v2

    if-eqz v0, :cond_17

    if-nez v2, :cond_e

    goto/16 :goto_3

    :cond_e
    iget-object v6, p1, Lg/eiy;->ab:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_3

    :cond_f
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    iget-object v8, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    iget-object v9, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    invoke-static {p0, v8, v9}, Lg/enz;->br(Lg/hed;Lg/eek;Lg/eek;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_3

    :cond_10
    iget-object v10, v8, Lg/eek;->ai:Lg/gks;

    iget-object v11, v9, Lg/eek;->ai:Lg/gks;

    if-eqz v10, :cond_14

    if-eqz v11, :cond_14

    iget-object v12, v10, Lg/gks;->a:Lg/vm;

    invoke-virtual {v12}, Lg/vm;->q()Lg/abi;

    move-result-object v12

    iget-object v13, v11, Lg/gks;->a:Lg/vm;

    invoke-virtual {v13}, Lg/vm;->q()Lg/abi;

    move-result-object v13

    if-eqz v12, :cond_17

    if-eq v12, v13, :cond_11

    goto/16 :goto_3

    :cond_11
    iget-object v13, p1, Lg/bjk;->d:Lg/cfm;

    invoke-interface {v13, p1, v7}, Lg/cfm;->f(Lg/amj;Lg/amj;)Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_3

    :cond_12
    invoke-static {v0, v8}, Lg/con;->b(Lg/fza;Lg/eek;)V

    invoke-static {v2, v9}, Lg/con;->b(Lg/fza;Lg/eek;)V

    iget-object v0, v12, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_13

    iget-object v10, v12, Lg/eek;->ai:Lg/gks;

    invoke-static {p0, v8}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    goto :goto_2

    :cond_13
    invoke-virtual {v12, v11}, Lg/abi;->_ax(Lg/gks;)V

    :goto_2
    invoke-static {v8}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v0

    invoke-static {v9}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v1

    new-instance v2, Lg/dwk;

    iget-object v3, p1, Lg/eiy;->aa:Lg/eii;

    invoke-direct {v2, v3, v10, v0, v1}, Lg/dwk;-><init>(Lg/eii;Lg/gks;Lg/gsh;Lg/gsh;)V

    iget v0, v8, Lg/ccm;->bp:I

    iget v1, v9, Lg/ccm;->bp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Lg/eiy;->ac()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Lg/ccm;->bp:I

    iput-object v4, v8, Lg/eek;->ai:Lg/gks;

    invoke-static {p0, v9}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    iget-object p0, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lg/dwk;->_bs()V

    iget-object p0, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v7}, Lg/enz;->g(Ljava/util/List;Lg/fza;)V

    return v5

    :cond_14
    invoke-virtual {p0}, Lg/hed;->bg()Z

    move-result p0

    if-nez p0, :cond_17

    iget-object p0, v8, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->RETURN:Lg/hay;

    if-ne p0, v3, :cond_17

    iget-object p0, v9, Lg/eek;->ah:Lg/hay;

    if-ne p0, v3, :cond_17

    invoke-virtual {v8, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p0

    invoke-virtual {v9, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, p0, Lg/ekh;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v10, Lg/ekh;

    if-eq v11, v12, :cond_15

    goto :goto_3

    :cond_15
    iget-object v11, p1, Lg/bjk;->d:Lg/cfm;

    invoke-interface {v11, p1, v7}, Lg/cfm;->f(Lg/amj;Lg/amj;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_3

    :cond_16
    invoke-static {v0, v8}, Lg/con;->b(Lg/fza;Lg/eek;)V

    invoke-static {v2, v9}, Lg/con;->b(Lg/fza;Lg/eek;)V

    sget-object v1, Lg/csv;->RETURN:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->v(Lg/csv;)V

    invoke-virtual {v2, v1}, Lg/lh;->v(Lg/csv;)V

    new-instance v0, Lg/dwk;

    iget-object p1, p1, Lg/eiy;->aa:Lg/eii;

    invoke-direct {v0, p1, v4, p0, v10}, Lg/dwk;-><init>(Lg/eii;Lg/gks;Lg/gsh;Lg/gsh;)V

    new-instance p1, Lg/eek;

    invoke-direct {p1, v3, v5}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-static {v0}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v0

    invoke-virtual {p0}, Lg/flv;->j()Lg/cwx;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/flv;->f(Lg/cwx;)V

    invoke-virtual {p1, v0}, Lg/eek;->_an(Lg/gsh;)V

    iget-object p0, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lg/eek;->_bs()V

    iget-object p0, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v6, v7}, Lg/enz;->g(Ljava/util/List;Lg/fza;)V

    return v5

    :cond_17
    :goto_3
    return v1
.end method


# virtual methods
.method public _ar(Lg/hed;Lg/cfm;)V
    .locals 6

    iget v0, p0, Lg/enz;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    instance-of v0, p2, Lg/cab;

    if-eqz v0, :cond_0

    check-cast p2, Lg/cab;

    iget-object p1, p2, Lg/cab;->z:Lg/fza;

    iget-object v0, p2, Lg/cab;->i:Lg/fza;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lg/csv;->ALLOW_MULTIPLE_INSNS_LOOP_COND:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-object p1, p2, Lg/cab;->i:Lg/fza;

    goto/16 :goto_1

    :cond_0
    instance-of v0, p2, Lg/eln;

    if-eqz v0, :cond_1

    check-cast p2, Lg/eln;

    sget-object v0, Lg/diu;->a:Lg/dba;

    iget-object v0, p2, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/adk;

    iget-object v1, v1, Lg/adk;->b:Lg/amj;

    new-instance v2, Lg/fon;

    invoke-direct {v2, p1}, Lg/fon;-><init>(Lg/hed;)V

    new-instance v3, Lg/agx;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lg/agx;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lg/fdl;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v4, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    new-instance v3, Lg/bsj;

    invoke-direct {v3, v1, v2, p2}, Lg/bsj;-><init>(Lg/amj;Lg/fon;Lg/eln;)V

    invoke-static {p1, v3, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lg/eys;

    if-eqz p1, :cond_6

    check-cast p2, Lg/eys;

    iget-object p1, p2, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    sget-object v0, Lg/acq;->t:Lg/acq;

    move-object v1, p1

    check-cast v1, Lg/lh;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/azi;

    iget-object v1, v0, Lg/azi;->b:Lg/fza;

    iget-object v0, v0, Lg/azi;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    instance-of v1, p1, Lg/fza;

    if-eqz v1, :cond_5

    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lg/gqu;

    invoke-direct {v0, p1}, Lg/gqu;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lg/eys;->h(Lg/amj;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public _bq(Lg/hed;Lg/cfm;)Z
    .locals 0

    invoke-static {p1, p2}, Lg/enz;->j(Lg/hed;Lg/cfm;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lg/eak;->av(Lg/hed;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public _cs(Lg/hed;Lg/cfm;)Z
    .locals 6

    iget v0, p0, Lg/enz;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lg/baf;->_cs(Lg/hed;Lg/cfm;)Z

    move-result p1

    return p1

    :pswitch_0
    instance-of v0, p2, Lg/goe;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    check-cast p2, Lg/goe;

    iget-object v0, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v0}, Lg/gs;->z(Lg/amj;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p2, Lg/goe;->h:Lg/amj;

    invoke-static {v0}, Lg/gs;->z(Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lg/csv;->USE_LINES_HINTS:Lg/csv;

    iget-object v3, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lg/goe;->h:Lg/amj;

    invoke-static {v0}, Lg/gs;->at(Lg/amj;)I

    move-result v0

    iget-object v3, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v3}, Lg/gs;->at(Lg/amj;)I

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-le v0, v3, :cond_e

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p2, Lg/eiy;->aa:Lg/eii;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lg/eii;->f(Lg/eii;)Lg/eii;

    move-result-object v0

    iget-object v3, p2, Lg/eiy;->aa:Lg/eii;

    if-eq v0, v3, :cond_4

    iput-object v0, p2, Lg/eiy;->aa:Lg/eii;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lg/eii;->a:Lg/ath;

    sget-object v3, Lg/ath;->NOT:Lg/ath;

    if-ne v0, v3, :cond_4

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    :cond_4
    :goto_0
    iget-object v0, p2, Lg/goe;->h:Lg/amj;

    invoke-static {v0}, Lg/gs;->ba(Lg/amj;)I

    move-result v0

    iget-object v3, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v3}, Lg/gs;->ba(Lg/amj;)I

    move-result v3

    iget-object v4, p2, Lg/goe;->g:Lg/amj;

    invoke-static {p1, v4}, Lg/eak;->am(Lg/hed;Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p2, Lg/goe;->h:Lg/amj;

    invoke-static {p1, v4}, Lg/eak;->am(Lg/hed;Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ge v3, v0, :cond_5

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto/16 :goto_3

    :cond_5
    if-ne v3, v1, :cond_8

    invoke-static {p2}, Lg/gs;->y(Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lg/hed;->bg()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v0}, Lg/gs;->ac(Lg/amj;)Lg/eek;

    move-result-object v0

    sget-object v3, Lg/hay;->THROW:Lg/hay;

    invoke-static {v0, v3}, Lg/ack;->l(Lg/eek;Lg/hay;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x2

    if-le v0, v5, :cond_8

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    if-lt v0, v4, :cond_8

    :cond_7
    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto :goto_3

    :cond_8
    iget-object v4, p2, Lg/goe;->h:Lg/amj;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    invoke-static {v4, v4}, Lg/gs;->q(Lg/amj;Lg/amj;)Z

    move-result v4

    :goto_1
    iget-object v5, p2, Lg/goe;->g:Lg/amj;

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    invoke-static {v5, v5}, Lg/gs;->q(Lg/amj;Lg/amj;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_c

    if-eqz v4, :cond_b

    if-ge v3, v0, :cond_c

    :cond_b
    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto :goto_3

    :cond_c
    iget-object v0, p2, Lg/goe;->h:Lg/amj;

    invoke-static {v0}, Lg/eak;->au(Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v0}, Lg/eak;->au(Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v4, :cond_d

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    goto :goto_3

    :cond_d
    iget-object v0, p2, Lg/goe;->g:Lg/amj;

    invoke-static {v0}, Lg/gs;->as(Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lg/eak;->ab(Lg/goe;)V

    :cond_e
    :goto_3
    iget-object v0, p2, Lg/goe;->h:Lg/amj;

    invoke-static {p1, v0}, Lg/eak;->am(Lg/hed;Lg/amj;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    iget-object p1, p2, Lg/goe;->g:Lg/amj;

    instance-of p2, p1, Lg/eys;

    if-eqz p2, :cond_10

    move-object p2, p1

    check-cast p2, Lg/eys;

    iget-object p2, p2, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lg/goe;

    if-eqz v0, :cond_10

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/amj;

    sget-object v0, Lg/csv;->ELSE_IF_CHAIN:Lg/csv;

    check-cast p2, Lg/lh;

    invoke-virtual {p2, v0}, Lg/lh;->w(Lg/csv;)V

    check-cast p1, Lg/lh;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    :cond_10
    :goto_4
    return v1

    :pswitch_1
    instance-of p1, p2, Lg/eys;

    if-eqz p1, :cond_11

    check-cast p2, Lg/eys;

    iget-object p1, p2, Lg/eys;->g:Ljava/util/ArrayList;

    new-instance p2, Lg/bev;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lg/bev;-><init>(I)V

    invoke-static {p1, p2}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_11
    const/4 p1, 0x1

    return p1

    :pswitch_2
    instance-of v0, p2, Lg/cab;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    check-cast p2, Lg/cab;

    iget-object p2, p2, Lg/cab;->z:Lg/fza;

    if-eqz p2, :cond_12

    sget-object v0, Lg/csv;->ALLOW_MULTIPLE_INSNS_LOOP_COND:Lg/csv;

    iget-object v2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect condition in loop: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_12
    return v1

    :pswitch_3
    invoke-static {p1, p2}, Lg/enz;->j(Lg/hed;Lg/cfm;)Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p2, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    invoke-virtual {p1, p2}, Lg/lh;->w(Lg/csv;)V

    :cond_13
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bq(Lg/hed;Lg/cih;)V
    .locals 7

    iget v0, p0, Lg/enz;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {p2}, Lg/cih;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    iget-object v1, v0, Lg/eek;->ai:Lg/gks;

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lg/gks;->a:Lg/vm;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lg/vm;->t()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    new-instance v6, Lg/egm;

    invoke-direct {v6, p0, p1}, Lg/egm;-><init>(Lg/enz;Lg/hed;)V

    invoke-static {v5, v6}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_0

    sget-object v5, Lg/axo;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_6

    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lg/eek;->as()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    sget-object v5, Lg/asj;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v4, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    sget-object v2, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v0, v2}, Lg/lh;->w(Lg/csv;)V

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v0, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_4

    :cond_9
    :goto_6
    if-eqz v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lg/eek;->ai:Lg/gks;

    iget-object v0, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iput-object v2, v1, Lg/gks;->a:Lg/vm;

    goto :goto_7

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
