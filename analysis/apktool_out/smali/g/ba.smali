.class public final Lg/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/eem;


# instance fields
.field public final b:Lg/cci;

.field public final c:Lg/ur;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lg/acr;->ap()Lg/aud;

    move-result-object v0

    sget-object v1, Lg/fvw;->LOWER_CASE_WITH_DASHES:Lg/fvw;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lg/aud;->n:Lg/fvw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/aud;->k:Z

    invoke-virtual {v0}, Lg/aud;->p()Lg/eem;

    move-result-object v0

    sput-object v0, Lg/ba;->a:Lg/eem;

    return-void
.end method

.method public constructor <init>(Lg/cci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ba;->b:Lg/cci;

    iget-object p1, p1, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    iput-object p1, p0, Lg/ba;->c:Lg/ur;

    return-void
.end method


# virtual methods
.method public final d(Lg/ggg;Lg/cwx;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lg/grs;

    iget-object v1, p0, Lg/ba;->c:Lg/ur;

    invoke-direct {v0, v1}, Lg/grs;-><init>(Lg/ur;)V

    invoke-virtual {p1, v0, p2}, Lg/ggg;->v(Lg/eos;Lg/cwx;)V

    iget-object p1, v0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lg/cci;Lg/ggg;)Lg/bkz;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lg/ba;->c:Lg/ur;

    if-nez v2, :cond_0

    new-instance v2, Lg/ggg;

    invoke-direct {v2, v0, v3}, Lg/ggg;-><init>(Lg/cci;Lg/ur;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lg/ggg;

    invoke-direct {v4, v0, v2}, Lg/ggg;-><init>(Lg/cci;Lg/ggg;)V

    move-object v2, v4

    :goto_0
    iget-object v4, v0, Lg/cci;->ak:Lg/ve;

    new-instance v5, Lg/bkz;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/bkz;->aw(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/ve;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lg/ve;->m()Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Lg/cci;->bi()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v4, v0, Lg/cci;->d:Lg/gqc;

    iget v4, v4, Lg/gqc;->ab:I

    iget-object v4, v0, Lg/cci;->af:Lg/cwx;

    if-eqz v4, :cond_3

    sget-object v6, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v4, v6}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lg/csv;->REMOVE_SUPER_CLASS:Lg/csv;

    iget-object v7, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v2, v4}, Lg/ba;->d(Lg/ggg;Lg/cwx;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lg/bkz;->av(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lg/cci;->j:Ljava/util/List;

    new-instance v6, Lg/gtj;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v2, v7}, Lg/gtj;-><init>(Lg/ba;Lg/ggg;I)V

    invoke-static {v4, v6}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lg/bkz;->au(Ljava/util/List;)V

    :cond_4
    new-instance v4, Lg/grs;

    invoke-direct {v4, v3}, Lg/grs;-><init>(Lg/ur;)V

    invoke-static {v4, v0}, Lg/bzu;->f(Lg/eos;Lg/ebh;)V

    invoke-static {v4, v0}, Lg/bzu;->g(Lg/eos;Lg/ebh;)V

    invoke-virtual {v2, v4}, Lg/ggg;->y(Lg/eos;)V

    iget-object v4, v4, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Lg/bkz;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v4, v0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/hcd;

    sget-object v7, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    iget-object v9, v6, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    new-instance v7, Lg/nh;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v8, v9, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v9}, Lg/dsj;->g()Z

    new-instance v8, Lg/grs;

    invoke-direct {v8, v3}, Lg/grs;-><init>(Lg/ur;)V

    invoke-virtual {v2, v8, v6}, Lg/ggg;->ab(Lg/eos;Lg/hcd;)V

    iget-object v8, v8, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lg/hcd;->h:Lg/gqc;

    iget v6, v6, Lg/gqc;->ab:I

    iget-object v6, v5, Lg/bkz;->as:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Lg/bkz;->at:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v4, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/hed;

    sget-object v7, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    iget-object v9, v6, Lg/hed;->ab:Lg/atc;

    iget-object v10, v6, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    new-instance v7, Lg/goc;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v8, v10, Lg/ayu;->f:Ljava/lang/String;

    iget-object v11, v10, Lg/ayu;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v8, v6, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v1, v2, v8}, Lg/ba;->d(Lg/ggg;Lg/cwx;)Ljava/lang/String;

    iget-object v8, v10, Lg/ayu;->c:Ljava/util/List;

    new-instance v10, Lg/gtj;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v2, v11}, Lg/gtj;-><init>(Lg/ba;Lg/ggg;I)V

    invoke-static {v8, v10}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lg/goc;->aq:Ljava/util/List;

    new-instance v8, Lg/ejh;

    invoke-direct {v8, v2, v6}, Lg/ejh;-><init>(Lg/ggg;Lg/hed;)V

    new-instance v10, Lg/flc;

    invoke-direct {v10, v3}, Lg/flc;-><init>(Lg/ur;)V

    invoke-virtual {v8, v10}, Lg/ejh;->m(Lg/eos;)Z

    iget-object v10, v10, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Lg/hed;->ax:Lg/gqc;

    iget v10, v10, Lg/gqc;->ab:I

    iget-boolean v10, v6, Lg/hed;->ar:Z

    if-eqz v10, :cond_8

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    move-object/from16 v19, v3

    move-object/from16 p2, v4

    move-object/from16 v24, v9

    goto/16 :goto_8

    :cond_8
    iget-object v10, v6, Lg/hed;->am:Lg/cci;

    iget-object v10, v10, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v10}, Lg/dwg;->ac()Lg/flc;

    move-result-object v10

    :try_start_0
    invoke-virtual {v8, v10}, Lg/ejh;->i(Lg/eos;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v10}, Lg/flc;->finish()Lg/emz;

    move-result-object v8

    check-cast v8, Lg/bov;

    iget-object v10, v8, Lg/bov;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_9
    iget-object v13, v3, Lg/ur;->x:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v8, v8, Lg/bov;->b:Lg/ffr;

    iget-object v13, v8, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-boolean v14, v6, Lg/hed;->ar:Z

    if-eqz v14, :cond_a

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_a
    invoke-interface {v9}, Lg/atc;->j()I

    move-result v14

    int-to-long v14, v14

    :goto_5
    const-wide/16 v16, 0x10

    add-long v14, v14, v16

    array-length v11, v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 p2, v4

    iget-object v4, v3, Lg/ur;->x:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v18, 0x0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v11, :cond_c

    aget-object v20, v10, v3

    add-int/lit8 v21, v3, 0x2

    move/from16 v22, v3

    new-instance v3, Lg/cuf;

    move/from16 v23, v4

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lg/cuf;-><init>(I)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v4, v8, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/NavigableMap;

    move-object/from16 v21, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cdv;

    instance-of v8, v4, Lg/ahw;

    if-eqz v8, :cond_b

    check-cast v4, Lg/ahw;

    iget v4, v4, Lg/ahw;->a:I

    move-object/from16 v24, v9

    int-to-long v8, v4

    const-wide/16 v25, 0x2

    mul-long v8, v8, v25

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object/from16 v24, v9

    :goto_7
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    add-int v3, v3, v23

    add-int v18, v3, v18

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v8, v21

    move/from16 v4, v23

    move-object/from16 v9, v24

    goto :goto_6

    :cond_c
    move-object/from16 v24, v9

    move-object v8, v12

    :goto_8
    iput-object v8, v7, Lg/goc;->ar:Ljava/util/List;

    iget-boolean v3, v6, Lg/hed;->ar:Z

    if-eqz v3, :cond_d

    const-wide/16 v11, 0x0

    goto :goto_9

    :cond_d
    invoke-interface/range {v24 .. v24}, Lg/atc;->j()I

    move-result v3

    int-to-long v11, v3

    :goto_9
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    iget-object v3, v5, Lg/bkz;->at:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p2

    move-object/from16 v3, v19

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Lg/gck;

    const-string v3, "Method generation error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    iget-object v3, v0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_b

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v5, Lg/bkz;->aq:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cci;

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v7, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v1, v4, v2}, Lg/ba;->e(Lg/cci;Lg/ggg;)Lg/bkz;

    move-result-object v4

    iget-object v6, v5, Lg/bkz;->aq:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    :goto_b
    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->n()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v2}, Lg/ggg;->r()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lg/fov;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    invoke-static {v0, v2}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object v0, v5, Lg/bkz;->ar:Ljava/util/List;

    :cond_12
    return-object v5
.end method
