.class public final Lg/bei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dzh;

.field public final b:Lg/fon;

.field public final c:Lg/hed;

.field public final d:I

.field public final e:Lg/ftm;

.field public final f:Lg/ghm;

.field public g:I


# direct methods
.method public constructor <init>(Lg/hed;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bei;->c:Lg/hed;

    new-instance v0, Lg/ftm;

    invoke-direct {v0}, Lg/ftm;-><init>()V

    iput-object v0, p0, Lg/bei;->e:Lg/ftm;

    new-instance v4, Lg/ghm;

    invoke-direct {v4, p1, p0}, Lg/ghm;-><init>(Lg/hed;Lg/bei;)V

    iput-object v4, p0, Lg/bei;->f:Lg/ghm;

    new-instance v1, Lg/dzh;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v1, v3, Lg/bei;->a:Lg/dzh;

    new-instance p1, Lg/fon;

    invoke-direct {p1, v2}, Lg/fon;-><init>(Lg/hed;)V

    iput-object p1, v3, Lg/bei;->b:Lg/fon;

    iget-object p1, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit16 p1, p1, 0x190

    iput p1, v3, Lg/bei;->d:I

    return-void
.end method


# virtual methods
.method public final h(Lg/fza;)Lg/eys;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lg/acq;->t:Lg/acq;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lg/eys;

    iget-object v4, v0, Lg/bei;->e:Lg/ftm;

    iget-object v5, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v5, v5, Lg/bnp;->b:Lg/bjk;

    invoke-direct {v3, v5}, Lg/eys;-><init>(Lg/cfm;)V

    iget-object v5, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v5, v5, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v2}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v9, v3

    goto/16 :goto_2f

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lg/hay;->BREAK:Lg/hay;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/azi;

    iget-object v6, v6, Lg/azi;->a:Lg/eek;

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    if-ne v7, v4, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v4, Lg/hay;->CONTINUE:Lg/hay;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/azi;

    iget-object v5, v5, Lg/azi;->a:Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    if-ne v6, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Lg/gqu;

    invoke-direct {v1, v2}, Lg/gqu;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lg/eys;->h(Lg/amj;)V

    return-object v3

    :cond_6
    iget-object v5, v0, Lg/bei;->b:Lg/fon;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lg/fon;->b:Ljava/util/BitSet;

    iget v6, v1, Lg/fza;->x:I

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v0, Lg/bei;->c:Lg/hed;

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found duplicated region for block: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8}, Lg/sm;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_7
    move-object v7, v1

    :goto_0
    if-eqz v7, :cond_0

    sget-object v8, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    iget-object v9, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_9

    move-object v12, v2

    move-object v9, v3

    move-object/from16 v17, v5

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2e

    :cond_9
    sget-object v8, Lg/acq;->at:Lg/acq;

    iget-object v11, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v8}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_c

    sget-object v13, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v14, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v0, Lg/bei;->a:Lg/dzh;

    if-ne v11, v9, :cond_a

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gcv;

    invoke-virtual {v13, v3, v8, v4}, Lg/dzh;->x(Lg/eys;Lg/gcv;Lg/ftm;)Lg/fza;

    move-result-object v8

    :goto_1
    const/4 v11, 0x1

    goto :goto_2

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gcv;

    iget-object v14, v11, Lg/gcv;->c:Lg/fza;

    if-ne v14, v7, :cond_b

    invoke-virtual {v13, v3, v11, v4}, Lg/dzh;->x(Lg/eys;Lg/gcv;Lg/ftm;)Lg/fza;

    move-result-object v8

    goto :goto_1

    :cond_c
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-static {v7}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v13

    iget-object v14, v3, Lg/eys;->g:Ljava/util/ArrayList;

    if-nez v11, :cond_d

    if-eqz v13, :cond_d

    sget-object v15, Lg/fxm;->a:[I

    iget-object v10, v13, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v15, v10

    if-eq v10, v9, :cond_4d

    const/4 v15, 0x2

    if-eq v10, v15, :cond_1b

    const/4 v15, 0x3

    if-eq v10, v15, :cond_e

    :cond_d
    move-object v12, v2

    move-object v9, v3

    move-object/from16 v17, v5

    move-object v10, v14

    goto/16 :goto_2d

    :cond_e
    new-instance v8, Lg/ft;

    invoke-direct {v8, v6, v0}, Lg/ft;-><init>(Lg/hed;Lg/bei;)V

    new-instance v10, Lg/glw;

    invoke-direct {v10, v3, v13}, Lg/glw;-><init>(Lg/eys;Lg/eek;)V

    iget-object v11, v10, Lg/glw;->g:Lg/eys;

    iget-object v15, v11, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v13, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    invoke-static {v10, v13, v7, v15, v9}, Lg/ft;->c(Lg/glw;Lg/gsh;Lg/fza;Ljava/util/LinkedHashSet;Ljava/util/HashSet;)V

    iget-object v13, v10, Lg/glw;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lg/eek;

    iget-object v1, v6, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v6, v12, v1}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v1

    move-object/from16 v17, v13

    if-eqz v1, :cond_f

    sget-object v13, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v1, v13}, Lg/lh;->w(Lg/csv;)V

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lg/eek;->_am(I)Lg/gsh;

    sget-object v1, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v12, v1}, Lg/lh;->w(Lg/csv;)V

    move-object/from16 v1, p1

    move-object/from16 v13, v17

    const/4 v12, 0x0

    goto :goto_3

    :cond_10
    invoke-static {v7}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "Unexpected end of synchronized block"

    invoke-virtual {v6, v1}, Lg/ebh;->bs(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_11
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    invoke-static {v9}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v9

    goto :goto_4

    :cond_12
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v12

    if-le v12, v13, :cond_13

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    invoke-static {v1, v15, v9}, Lg/ft;->d(Lg/fza;Ljava/util/LinkedHashSet;Ljava/util/HashSet;)Lg/fza;

    move-result-object v9

    goto :goto_4

    :cond_13
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v4, v10}, Lg/ftm;->e(Lg/bjk;)V

    if-eqz v9, :cond_14

    invoke-virtual {v4, v9}, Lg/ftm;->c(Lg/fza;)V

    goto :goto_9

    :cond_14
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-static {v12}, Lg/ffb;->aj(Lg/fza;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_19

    invoke-static {v13}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    iget-object v15, v6, Lg/hed;->ad:Lg/fza;

    if-ne v13, v15, :cond_15

    :goto_6
    move-object/from16 v17, v9

    const/4 v9, 0x1

    goto :goto_7

    :cond_15
    iget-object v13, v13, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_16

    goto :goto_6

    :cond_16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v17, v9

    const/4 v9, 0x1

    if-ne v15, v9, :cond_17

    const/4 v9, 0x0

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    iget-object v9, v13, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    goto :goto_7

    :cond_17
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_18

    goto :goto_8

    :cond_18
    move-object/from16 v9, v17

    goto :goto_5

    :cond_19
    :goto_8
    invoke-virtual {v4, v12}, Lg/ftm;->c(Lg/fza;)V

    move-object v9, v12

    goto :goto_5

    :cond_1a
    move-object/from16 v17, v9

    :goto_9
    iget-object v10, v11, Lg/eys;->g:Ljava/util/ArrayList;

    iget-object v8, v8, Lg/ft;->b:Lg/bei;

    invoke-virtual {v8, v1}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lg/ftm;->d()V

    move-object v8, v9

    :goto_a
    move-object v12, v2

    move-object v9, v3

    move-object/from16 v17, v5

    move-object v10, v14

    :goto_b
    const/4 v11, 0x1

    goto/16 :goto_2d

    :cond_1b
    new-instance v1, Lg/diu;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    check-cast v13, Lg/bzm;

    invoke-virtual {v13}, Lg/bzm;->ad()Lg/bx;

    move-result-object v8

    iget-object v8, v8, Lg/bx;->b:[I

    array-length v8, v8

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v10, v13, Lg/bzm;->ab:[Lg/fza;

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v8, :cond_1c

    aget-object v12, v10, v11

    new-instance v15, Lg/coq;

    move/from16 v18, v8

    const/4 v8, 0x7

    invoke-direct {v15, v8}, Lg/coq;-><init>(I)V

    invoke-static {v9, v12, v15}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v13, v11}, Lg/bzm;->af(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v18

    const/4 v15, 0x2

    goto :goto_c

    :cond_1c
    iget-object v8, v13, Lg/bzm;->z:Lg/fza;

    if-eqz v8, :cond_1d

    new-instance v10, Lg/coq;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Lg/coq;-><init>(I)V

    invoke-static {v9, v8, v10}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v11, Lg/eln;->g:Lg/cuf;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    new-instance v10, Lg/eln;

    invoke-direct {v10, v3, v7}, Lg/eln;-><init>(Lg/cfm;Lg/fza;)V

    new-instance v11, Lg/ayi;

    invoke-direct {v11, v10}, Lg/ayi;-><init>(Lg/eln;)V

    invoke-virtual {v13, v11}, Lg/lh;->m(Lg/eue;)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lg/ftm;->e(Lg/bjk;)V

    invoke-static {v6}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v11

    iget-object v12, v7, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fza;

    move-object/from16 v18, v8

    sget-object v8, Lg/csv;->LOOP_END:Lg/csv;

    move-object/from16 v19, v12

    iget-object v12, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :goto_e
    move-object/from16 v8, v18

    move-object/from16 v12, v19

    goto :goto_d

    :cond_1e
    iget-object v8, v15, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_e

    :cond_1f
    move-object/from16 v18, v8

    iget v8, v7, Lg/fza;->x:I

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->clear(I)V

    iget-object v8, v6, Lg/hed;->ad:Lg/fza;

    iget v8, v8, Lg/fza;->x:I

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_20

    invoke-static {v6, v11}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v8

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v14

    goto/16 :goto_13

    :cond_20
    invoke-virtual {v6, v7}, Lg/hed;->bi(Lg/fza;)Lg/gcv;

    move-result-object v8

    if-eqz v8, :cond_29

    iget-object v12, v8, Lg/gcv;->d:Lg/fza;

    iget-object v8, v8, Lg/gcv;->c:Lg/fza;

    iget-object v8, v8, Lg/fza;->j:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    iget-object v8, v12, Lg/fza;->j:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    const/4 v15, 0x2

    if-ne v8, v15, :cond_27

    iget v8, v12, Lg/fza;->x:I

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v6, v11}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v8}, Lg/evh;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    if-eqz v8, :cond_27

    iget-object v15, v7, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v17, 0x0

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_26

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    check-cast v15, Lg/fza;

    move-object/from16 v19, v2

    iget-object v2, v15, Lg/fza;->i:Ljava/util/BitSet;

    move-object/from16 v21, v14

    iget v14, v12, Lg/fza;->x:I

    invoke-virtual {v2, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_24

    if-eq v15, v8, :cond_24

    new-instance v2, Ljava/util/HashSet;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v3

    invoke-static {v6}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v3

    move-object/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v15, v15, v14, v3, v1}, Lg/ffb;->q(Lg/fza;Lg/fza;Ljava/util/AbstractCollection;Ljava/util/BitSet;Z)V

    invoke-direct {v2, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v8, Lg/fza;->e:Ljava/util/List;

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lg/dcg;

    const/4 v14, 0x2

    invoke-direct {v3, v2, v14}, Lg/dcg;-><init>(Ljava/util/HashSet;I)V

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_10

    :cond_21
    iget-object v1, v12, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    if-ne v3, v15, :cond_22

    :cond_23
    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v2, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v2, Lg/eek;

    sget-object v3, Lg/hay;->CONTINUE:Lg/hay;

    const/4 v14, 0x0

    invoke-direct {v2, v3, v14}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    goto :goto_10

    :cond_24
    move-object/from16 v23, v1

    move-object/from16 v22, v3

    :cond_25
    :goto_10
    move-object/from16 v2, v19

    move-object/from16 v15, v20

    move-object/from16 v14, v21

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    goto/16 :goto_f

    :cond_26
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v14

    if-eqz v17, :cond_28

    iget v1, v12, Lg/fza;->x:I

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_11

    :cond_27
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v14

    :cond_28
    const/4 v8, 0x0

    :goto_11
    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v6, Lg/hed;->ad:Lg/fza;

    :goto_12
    move-object v8, v1

    goto/16 :goto_1a

    :cond_29
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v14

    const/4 v8, 0x0

    :cond_2a
    if-nez v8, :cond_2c

    iget-object v8, v7, Lg/fza;->aa:Lg/fza;

    iget v1, v8, Lg/fza;->x:I

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_13

    :cond_2b
    iget-object v1, v7, Lg/fza;->j:Ljava/util/BitSet;

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    invoke-static {v6, v11}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v8

    :cond_2c
    :goto_13
    if-eqz v8, :cond_2d

    invoke-virtual {v6, v8}, Lg/hed;->bb(Lg/fza;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v8, v6, Lg/hed;->ad:Lg/fza;

    :cond_2d
    iget-object v1, v7, Lg/fza;->aa:Lg/fza;

    if-nez v8, :cond_3a

    iget-object v2, v6, Lg/hed;->ad:Lg/fza;

    if-ne v1, v2, :cond_3a

    iget-object v1, v2, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2e

    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    goto :goto_12

    :cond_2e
    iget-object v8, v6, Lg/hed;->aw:Lg/cwx;

    sget-object v11, Lg/cwx;->ao:Lg/cff;

    if-ne v8, v11, :cond_30

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    invoke-static {v11}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v11

    if-eqz v11, :cond_35

    iget-object v11, v11, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->RETURN:Lg/hay;

    if-eq v11, v12, :cond_2f

    goto :goto_17

    :cond_30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-static {v12}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v12

    if-eqz v12, :cond_35

    iget-object v14, v12, Lg/eek;->ah:Lg/hay;

    sget-object v15, Lg/hay;->RETURN:Lg/hay;

    if-eq v14, v15, :cond_31

    goto :goto_17

    :cond_31
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_32
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gsh;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Lg/gks;

    if-eqz v12, :cond_34

    check-cast v11, Lg/gks;

    const/4 v12, 0x1

    :goto_15
    if-ge v12, v3, :cond_37

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/gsh;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v14, Lg/gks;

    if-eqz v15, :cond_35

    check-cast v14, Lg/gks;

    invoke-virtual {v14, v11}, Lg/gks;->y(Lg/gks;)Z

    move-result v14

    if-nez v14, :cond_33

    goto :goto_17

    :cond_33
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_34
    const/4 v12, 0x1

    :goto_16
    if-ge v12, v3, :cond_37

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/gsh;

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_36

    :cond_35
    :goto_17
    move-object v8, v2

    goto/16 :goto_1a

    :cond_36
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_37
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    invoke-virtual {v4, v8}, Lg/ftm;->c(Lg/fza;)V

    goto :goto_18

    :cond_38
    const/4 v2, 0x1

    :goto_19
    if-ge v2, v3, :cond_39

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    sget-object v11, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v8, v11}, Lg/lh;->w(Lg/csv;)V

    sget-object v11, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    invoke-virtual {v8, v11}, Lg/lh;->w(Lg/csv;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_39
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    goto/16 :goto_12

    :cond_3a
    iget-object v2, v13, Lg/bzm;->z:Lg/fza;

    if-ne v1, v2, :cond_3b

    iget-object v2, v7, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, v7, Lg/fza;->i:Ljava/util/BitSet;

    iget v3, v1, Lg/fza;->x:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v4, v1}, Lg/ftm;->c(Lg/fza;)V

    :cond_3b
    if-nez v8, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find \'out\' block for switch in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Please report as an issue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    iget-object v8, v7, Lg/fza;->aa:Lg/fza;

    :cond_3c
    if-eqz v8, :cond_3d

    iget v1, v8, Lg/fza;->x:I

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switch \'out\' block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already processed. Defaulting to fallback option."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    iget-object v1, v7, Lg/fza;->aa:Lg/fza;

    goto/16 :goto_12

    :cond_3d
    :goto_1a
    invoke-virtual {v4, v8}, Lg/ftm;->c(Lg/fza;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v8, :cond_44

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v6}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    iget v11, v11, Lg/fza;->x:I

    invoke-virtual {v3, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_1b

    :cond_3e
    iget v2, v8, Lg/fza;->x:I

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v2, v10, Lg/eln;->h:Lg/fza;

    iget-object v2, v2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    iget-object v12, v11, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v12, v3}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v14

    if-eqz v14, :cond_3f

    new-instance v14, Ljava/util/BitSet;

    iget-object v15, v6, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v12}, Ljava/util/BitSet;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_40

    invoke-virtual {v14, v12}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :cond_40
    iget v12, v8, Lg/fza;->x:I

    invoke-virtual {v14, v12}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v14, v3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-static {v6, v14}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_41
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {v9, v1}, Lg/diu;->c(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lg/aou;

    const/4 v11, 0x2

    invoke-direct {v3, v11, v1}, Lg/aou;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v3}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_42
    invoke-static {v3, v1}, Lg/diu;->c(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "Can\'t fix incorrect switch cases order, some code will duplicate"

    invoke-virtual {v6, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1e

    :cond_43
    move-object v9, v3

    :cond_44
    :goto_1e
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v9, v10, Lg/eln;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v12, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v12, v12, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    new-instance v3, Lg/eys;

    iget-object v12, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v12, v12, Lg/bnp;->b:Lg/bjk;

    invoke-direct {v3, v12}, Lg/eys;-><init>(Lg/cfm;)V

    goto :goto_20

    :cond_45
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-virtual {v4, v12}, Lg/ftm;->c(Lg/fza;)V

    invoke-virtual {v0, v3}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v3

    if-eqz v12, :cond_46

    iget-object v14, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v14, v14, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_46
    if-eqz v12, :cond_47

    sget-object v14, Lg/csv;->FALL_THROUGH:Lg/csv;

    invoke-virtual {v12, v14}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v3, v14}, Lg/lh;->w(Lg/csv;)V

    :cond_47
    :goto_20
    new-instance v12, Lg/adk;

    invoke-direct {v12, v11, v3}, Lg/adk;-><init>(Ljava/util/List;Lg/amj;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_48
    if-nez v18, :cond_49

    const/4 v1, 0x1

    goto :goto_21

    :cond_49
    invoke-static {v9}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/dxx;

    move-object/from16 v3, v23

    invoke-direct {v2, v3, v8}, Lg/dxx;-><init>(Lg/diu;Lg/fza;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    :goto_21
    if-eqz v1, :cond_4c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/adk;

    iget-object v3, v2, Lg/adk;->b:Lg/amj;

    invoke-static {v8, v3}, Lg/diu;->b(Lg/fza;Lg/amj;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v2, Lg/adk;->a:Ljava/util/List;

    sget-object v10, Lg/eln;->g:Lg/cuf;

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    iget-boolean v3, v13, Lg/bzm;->y:Z

    if-eqz v3, :cond_4a

    :cond_4b
    iget-object v3, v2, Lg/adk;->b:Lg/amj;

    sget-object v10, Lg/csv;->DONT_GENERATE:Lg/csv;

    new-instance v11, Lg/bhf;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v10}, Lg/bhf;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lg/fdl;

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Lg/fdl;-><init>(ILjava/lang/Object;)V

    invoke-static {v6, v10, v3}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4c
    invoke-virtual {v4}, Lg/ftm;->d()V

    :goto_23
    move-object/from16 v17, v5

    move-object/from16 v12, v19

    move-object/from16 v10, v21

    move-object/from16 v9, v22

    goto/16 :goto_b

    :cond_4d
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v14

    check-cast v13, Lg/bgw;

    iget-object v1, v0, Lg/bei;->f:Lg/ghm;

    iget-object v2, v1, Lg/ghm;->b:Lg/bei;

    iget-object v1, v1, Lg/ghm;->a:Lg/hed;

    sget-object v3, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    iget-object v8, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v1, v13, Lg/bgw;->_br:Lg/fza;

    move-object v8, v1

    goto :goto_23

    :cond_4e
    invoke-static {v1, v7}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object v3

    if-nez v3, :cond_4f

    :goto_24
    move-object/from16 v17, v5

    move-object/from16 v12, v19

    move-object/from16 v10, v21

    move-object/from16 v9, v22

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_4f
    invoke-static {v3}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v8

    if-eqz v8, :cond_50

    move-object v3, v8

    goto :goto_25

    :cond_50
    sget-object v8, Lg/csv;->DONT_INVERT:Lg/csv;

    iget-object v9, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_51

    invoke-static {v3}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object v3

    invoke-virtual {v7, v8}, Lg/lh;->w(Lg/csv;)V

    :cond_51
    :goto_25
    invoke-static {v1, v7, v3}, Lg/ghm;->d(Lg/hed;Lg/fza;Lg/gxv;)Lg/gxv;

    move-result-object v8

    if-eqz v8, :cond_52

    goto :goto_26

    :cond_52
    iget-object v3, v3, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v3, Lg/fon;

    iget-object v3, v3, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    const/4 v12, 0x1

    if-gt v3, v12, :cond_53

    goto :goto_24

    :cond_53
    invoke-static {v1, v7}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object v3

    invoke-static {v1, v7, v3}, Lg/ghm;->d(Lg/hed;Lg/fza;Lg/gxv;)Lg/gxv;

    move-result-object v8

    if-nez v8, :cond_54

    goto :goto_24

    :cond_54
    :goto_26
    iget-object v1, v8, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v1, Lg/fon;

    invoke-static {v8}, Lg/ghm;->g(Lg/gxv;)V

    new-instance v3, Lg/goe;

    move-object/from16 v9, v22

    invoke-direct {v3, v9}, Lg/eiy;-><init>(Lg/eys;)V

    iget-object v10, v8, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v10, Lg/eii;

    iput-object v10, v3, Lg/eiy;->aa:Lg/eii;

    invoke-virtual {v1}, Lg/fon;->e()Ljava/util/List;

    move-result-object v10

    iput-object v10, v3, Lg/eiy;->ab:Ljava/util/List;

    move-object/from16 v10, v21

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lg/gxv;->i:Ljava/lang/Object;

    check-cast v11, Lg/fza;

    invoke-virtual {v4, v3}, Lg/ftm;->e(Lg/bjk;)V

    invoke-virtual {v4, v11}, Lg/ftm;->c(Lg/fza;)V

    iget-object v12, v8, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v12, Lg/fza;

    if-nez v12, :cond_55

    new-instance v12, Lg/eys;

    invoke-direct {v12, v3}, Lg/eys;-><init>(Lg/cfm;)V

    iput-object v12, v3, Lg/goe;->h:Lg/amj;

    goto :goto_27

    :cond_55
    invoke-virtual {v2, v12}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v12

    iput-object v12, v3, Lg/goe;->h:Lg/amj;

    :goto_27
    iget-object v8, v8, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    if-eqz v8, :cond_56

    iget-object v12, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v12, v12, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57

    :cond_56
    const/4 v2, 0x0

    goto :goto_28

    :cond_57
    invoke-virtual {v2, v8}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v2

    iput-object v2, v3, Lg/goe;->g:Lg/amj;

    const/4 v2, 0x0

    goto :goto_29

    :goto_28
    iput-object v2, v3, Lg/goe;->g:Lg/amj;

    :goto_29
    iget-object v8, v3, Lg/goe;->g:Lg/amj;

    if-nez v8, :cond_5c

    if-eqz v11, :cond_5c

    iget-object v8, v11, Lg/lh;->l:Lg/sm;

    move-object/from16 v12, v19

    invoke-virtual {v8, v12}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5b

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/azi;

    iget-object v15, v14, Lg/azi;->f:Lg/fza;

    invoke-virtual {v15, v11}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_58

    iget-object v15, v14, Lg/azi;->b:Lg/fza;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v5

    const/4 v5, 0x1

    invoke-static {v15, v2, v5}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object v2

    iget-object v5, v1, Lg/fon;->b:Ljava/util/BitSet;

    iget v2, v2, Lg/fza;->x:I

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, v14, Lg/azi;->a:Lg/eek;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_58
    move-object/from16 v17, v5

    :cond_59
    :goto_2b
    move-object/from16 v5, v17

    const/4 v2, 0x0

    goto :goto_2a

    :cond_5a
    move-object/from16 v17, v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    new-instance v1, Lg/eys;

    invoke-direct {v1, v3}, Lg/eys;-><init>(Lg/cfm;)V

    new-instance v2, Lg/gqu;

    invoke-direct {v2, v13}, Lg/gqu;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lg/eys;->h(Lg/amj;)V

    iput-object v1, v3, Lg/goe;->g:Lg/amj;

    goto :goto_2c

    :cond_5b
    move-object/from16 v17, v5

    goto :goto_2c

    :cond_5c
    move-object/from16 v17, v5

    move-object/from16 v12, v19

    :cond_5d
    :goto_2c
    invoke-virtual {v4}, Lg/ftm;->d()V

    move-object v8, v11

    goto/16 :goto_b

    :goto_2d
    if-nez v11, :cond_5e

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v8

    :cond_5e
    if-eqz v8, :cond_8

    iget-object v1, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v1, v1, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v4, Lg/ftm;->b:Lg/bnp;

    iget-object v1, v1, Lg/bnp;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v7, v8

    :goto_2e
    iget v1, v0, Lg/bei;->g:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/bei;->g:I

    iget v2, v0, Lg/bei;->d:I

    if-gt v1, v2, :cond_5f

    move-object/from16 v1, p1

    move-object v3, v9

    move-object v2, v12

    move-object/from16 v5, v17

    goto/16 :goto_0

    :cond_5f
    new-instance v1, Lg/blf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Regions count limit reached at block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lg/fza;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2f
    return-object v9
.end method
