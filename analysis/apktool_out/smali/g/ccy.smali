.class public final Lg/ccy;
.super Lg/pj;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ccy;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public static a(Lg/hed;[Lg/eek;ILg/ve;)Lg/aea;
    .locals 3

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    sget-object p1, Lg/acq;->bh:Lg/acq;

    iget-object v1, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, p1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/eng;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lg/eng;->a:Lg/aea;

    invoke-virtual {p1, p0, p3}, Lg/aea;->k(Lg/hed;Lg/ve;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Lg/eek;

    sget-object v1, Lg/hay;->NOP:Lg/hay;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/eek;-><init>(Lg/hay;I)V

    iput p2, v0, Lg/eek;->ag:I

    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    aput-object v0, p1, p2

    :cond_2
    new-instance p1, Lg/aea;

    invoke-direct {p1, p2}, Lg/aea;-><init>(I)V

    invoke-virtual {p1, p0, p3}, Lg/aea;->k(Lg/hed;Lg/ve;)Z

    iget-object p2, p0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lg/hed;->ap:Ljava/util/List;

    :cond_3
    iget-object p0, p0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lg/eng;

    invoke-direct {p0, p1}, Lg/eng;-><init>(Lg/aea;)V

    invoke-virtual {v0, p0}, Lg/lh;->m(Lg/eue;)V

    return-object p1
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 13

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lg/hed;->an:[Lg/eek;

    iget-object v1, p1, Lg/hed;->ab:Lg/atc;

    invoke-interface {v1}, Lg/atc;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eoo;

    invoke-interface {v2}, Lg/eoo;->f()Lg/avx;

    move-result-object v3

    iget-object v4, v3, Lg/avx;->a:[I

    iget-object v5, v3, Lg/avx;->b:[Ljava/lang/String;

    array-length v6, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    aget v10, v4, v9

    iget-object v11, p1, Lg/hed;->am:Lg/cci;

    iget-object v11, v11, Lg/cci;->ab:Lg/dwg;

    aget-object v12, v5, v9

    invoke-static {v11, v12}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v11

    invoke-static {p1, v0, v10, v11}, Lg/ccy;->a(Lg/hed;[Lg/eek;ILg/ve;)Lg/aea;

    move-result-object v10

    invoke-static {v10, v7}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget v3, v3, Lg/avx;->c:I

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    invoke-static {p1, v0, v3, v4}, Lg/ccy;->a(Lg/hed;[Lg/eek;ILg/ve;)Lg/aea;

    move-result-object v3

    invoke-static {v3, v7}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Lg/dbm;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lg/dbm;-><init>(I)V

    invoke-static {v3}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v7, v3}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Lg/coe;

    invoke-direct {v3, v7}, Lg/coe;-><init>(Ljava/util/List;)V

    invoke-interface {v2}, Lg/eoo;->e()I

    move-result v5

    invoke-interface {v2}, Lg/eoo;->d()I

    move-result v6

    const/4 v7, 0x0

    :cond_5
    if-gt v5, v6, :cond_9

    aget-object v9, v0, v5

    if-eqz v9, :cond_8

    sget-object v4, Lg/acq;->al:Lg/acq;

    iget-object v10, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/coe;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lg/coe;->a:Ljava/util/List;

    iget-object v10, v3, Lg/coe;->a:Ljava/util/List;

    invoke-static {v4, v10}, Lg/acr;->bi(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v10, Lg/dbm;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lg/dbm;-><init>(I)V

    invoke-static {v10}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v4, v10}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v10, Lg/coe;

    invoke-direct {v10, v4}, Lg/coe;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v10}, Lg/lh;->m(Lg/eue;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v9, v3}, Lg/lh;->m(Lg/eue;)V

    :goto_2
    if-nez v7, :cond_7

    sget-object v4, Lg/csv;->TRY_ENTER:Lg/csv;

    invoke-virtual {v9, v4}, Lg/lh;->w(Lg/csv;)V

    const/4 v7, 0x1

    :cond_7
    move-object v4, v9

    :cond_8
    invoke-static {v0, v5}, Lg/eak;->ba([Lg/eek;I)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    :cond_9
    if-eqz v7, :cond_a

    sget-object v2, Lg/csv;->TRY_LEAVE:Lg/csv;

    invoke-virtual {v4, v2}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Lg/eoo;->e()I

    move-result v2

    new-instance v4, Lg/eek;

    sget-object v5, Lg/hay;->NOP:Lg/hay;

    invoke-direct {v4, v5, v8}, Lg/eek;-><init>(Lg/hay;I)V

    iput v2, v4, Lg/eek;->ag:I

    sget-object v5, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    aput-object v4, v0, v2

    sget-object v2, Lg/csv;->TRY_ENTER:Lg/csv;

    invoke-virtual {v4, v2}, Lg/lh;->w(Lg/csv;)V

    sget-object v2, Lg/csv;->TRY_LEAVE:Lg/csv;

    invoke-virtual {v4, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v4, v3}, Lg/lh;->m(Lg/eue;)V

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-void
.end method
