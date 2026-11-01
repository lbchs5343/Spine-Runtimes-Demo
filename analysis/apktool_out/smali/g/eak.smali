.class public final Lg/eak;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/enz;

.field public static final b:Lg/bli;

.field public static final c:Lg/enz;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/enz;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    sput-object v0, Lg/eak;->c:Lg/enz;

    new-instance v0, Lg/enz;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    sput-object v0, Lg/eak;->a:Lg/enz;

    new-instance v0, Lg/bli;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/eak;->b:Lg/bli;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/eak;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aa(Lg/hed;Lg/eek;)Z
    .locals 4

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->INVOKE:Lg/hay;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lg/hdc;

    iget-object p0, p0, Lg/hed;->am:Lg/cci;

    iget-object p0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/hdc;->ad:Lg/ayu;

    invoke-virtual {p0, p1}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p0, Lg/hed;->am:Lg/cci;

    iget-object p1, p1, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lg/fem;->c(Lg/ebh;I)V

    return v2

    :cond_0
    sget-object v1, Lg/hay;->ONE_ARG:Lg/hay;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/cly;

    if-nez v0, :cond_1

    return v3

    :cond_1
    check-cast p1, Lg/cly;

    iget-object p1, p1, Lg/cly;->a:Lg/eek;

    invoke-static {p0, p1}, Lg/eak;->aa(Lg/hed;Lg/eek;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p1, Lg/adz;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lg/adz;

    iget-object v0, v0, Lg/adz;->a:Ljava/lang/Object;

    instance-of v0, v0, Lg/dsj;

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t inline method, not implemented redirect type for insn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return v3
.end method

.method public static ab(Lg/goe;)V
    .locals 2

    iget-object v0, p0, Lg/goe;->g:Lg/amj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/eiy;->aa:Lg/eii;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v0

    iput-object v0, p0, Lg/eiy;->aa:Lg/eii;

    :cond_0
    iget-object v0, p0, Lg/goe;->h:Lg/amj;

    iget-object v1, p0, Lg/goe;->g:Lg/amj;

    iput-object v1, p0, Lg/goe;->h:Lg/amj;

    iput-object v0, p0, Lg/goe;->g:Lg/amj;

    :cond_1
    return-void
.end method

.method public static ac(Lg/hed;)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    sget-object v7, Lg/csv;->DONT_INLINE:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    if-nez v7, :cond_1

    :cond_0
    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    goto/16 :goto_f

    :cond_1
    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    sget-object v8, Lg/tz;->a:[I

    iget-object v9, v6, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-eq v8, v9, :cond_6

    const/4 v12, 0x2

    if-eq v8, v12, :cond_6

    const/4 v12, 0x3

    if-eq v8, v12, :cond_4

    const/4 v12, 0x4

    if-eq v8, v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lg/vm;->t()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lg/eek;->_o()Lg/eek;

    move-result-object v7

    invoke-static {v7}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v7

    sget-object v8, Lg/cwx;->ab:Lg/aog;

    iput-object v8, v7, Lg/flv;->h:Lg/cwx;

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    move-object v7, v6

    check-cast v7, Lg/epw;

    iget-object v7, v7, Lg/epw;->a:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lg/eek;->_o()Lg/eek;

    move-result-object v7

    invoke-static {v7}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v7

    goto :goto_3

    :cond_5
    new-instance v8, Lg/adz;

    sget-object v12, Lg/hay;->SGET:Lg/hay;

    invoke-interface {v7}, Lg/chf;->c()Lg/dsj;

    move-result-object v13

    invoke-direct {v8, v12, v13, v11}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-static {v8}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v8

    sget-object v12, Lg/cwx;->al:Lg/aog;

    iput-object v12, v8, Lg/flv;->h:Lg/cwx;

    new-instance v12, Lg/dsf;

    const/4 v13, 0x4

    invoke-direct {v12, v7, v13, v0}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v7, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v8, Lg/ekh;

    if-nez v12, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Lg/gsh;->g()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v7}, Lg/eak;->y(Lg/vm;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    move-object v7, v8

    goto :goto_3

    :goto_4
    iget-object v8, v6, Lg/eek;->ai:Lg/gks;

    iget-object v8, v8, Lg/gks;->a:Lg/vm;

    iget-object v13, v8, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget-object v8, v8, Lg/vm;->d:Ljava/util/ArrayList;

    if-nez v13, :cond_9

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    goto/16 :goto_e

    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lg/gks;

    sget-object v11, Lg/csv;->DONT_INLINE_CONST:Lg/csv;

    iget-object v9, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_a

    sget-object v9, Lg/csv;->DONT_INLINE:Lg/csv;

    iget-object v11, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    :goto_6
    move-object/from16 v17, v2

    goto :goto_8

    :cond_b
    iget-object v9, v10, Lg/gsh;->ae:Lg/eek;

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    sget-object v11, Lg/csv;->DONT_GENERATE:Lg/csv;

    move-object/from16 v17, v2

    iget-object v2, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v2, v10, Lg/gks;->a:Lg/vm;

    invoke-virtual {v2}, Lg/vm;->u()Lg/ejb;

    move-result-object v2

    iget-object v2, v2, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    if-le v2, v11, :cond_e

    iget-object v2, v10, Lg/gks;->a:Lg/vm;

    invoke-virtual {v2}, Lg/vm;->t()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    iget-object v2, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v2, v11, :cond_10

    iget-object v2, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->b:Lg/fnq;

    check-cast v9, Lg/eew;

    invoke-virtual {v2, v9}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v2

    instance-of v9, v2, Lg/hed;

    if-eqz v9, :cond_f

    check-cast v2, Lg/hed;

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_10

    sget-object v9, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    iget-object v11, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_11

    sget-object v9, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, v10, Lg/gsh;->ae:Lg/eek;

    if-nez v2, :cond_12

    :cond_11
    :goto_8
    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    :goto_9
    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_12
    iget-object v9, v2, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->PHI:Lg/hay;

    if-ne v9, v11, :cond_13

    goto :goto_8

    :cond_13
    instance-of v9, v7, Lg/ekh;

    if-eqz v9, :cond_1d

    move-object v9, v7

    check-cast v9, Lg/ekh;

    move-object v11, v8

    iget-wide v8, v9, Lg/ekh;->a:J

    move-object/from16 v18, v5

    invoke-virtual {v10}, Lg/gks;->j()Lg/cwx;

    move-result-object v5

    move-object/from16 v19, v11

    sget-object v11, Lg/cwx;->ad:Lg/gnh;

    if-ne v5, v11, :cond_14

    iget-object v5, v10, Lg/flv;->h:Lg/cwx;

    :cond_14
    invoke-virtual {v5}, Lg/cwx;->m()Z

    move-result v11

    if-eqz v11, :cond_15

    const-wide/16 v20, 0x0

    cmp-long v11, v8, v20

    if-eqz v11, :cond_15

    sget-object v5, Lg/cwx;->r:Lg/gnh;

    :cond_15
    invoke-static {v8, v9, v5}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v5

    invoke-virtual {v5, v7}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v2, v10, v5}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v10

    if-nez v10, :cond_16

    move-object/from16 v16, v3

    goto :goto_9

    :cond_16
    iget-object v10, v5, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v10}, Lg/cwx;->h()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v3, v5}, Lg/cci;->bo(Lg/ekh;)Lg/chf;

    move-result-object v8

    const/4 v9, 0x0

    goto :goto_a

    :cond_17
    sget-object v11, Lg/bjt;->INT:Lg/bjt;

    invoke-virtual {v10, v11}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v10

    if-eqz v10, :cond_18

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object v8

    goto :goto_a

    :cond_18
    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_19

    new-instance v10, Lg/adz;

    sget-object v11, Lg/hay;->SGET:Lg/hay;

    move-object/from16 v16, v3

    invoke-interface {v8}, Lg/chf;->c()Lg/dsj;

    move-result-object v3

    invoke-direct {v10, v11, v3, v9}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    const/4 v11, 0x1

    invoke-virtual {v5, v0, v10, v11}, Lg/gsh;->an(Lg/hed;Lg/eek;Z)Lg/gsh;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-static {v8, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    goto :goto_b

    :cond_19
    move-object/from16 v16, v3

    instance-of v3, v2, Lg/gif;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Lg/gif;

    invoke-virtual {v3}, Lg/gif;->ac()Lg/ayu;

    move-result-object v8

    invoke-virtual {v3}, Lg/gif;->aa()Lg/gsh;

    move-result-object v10

    if-ne v10, v5, :cond_1b

    invoke-virtual {v5}, Lg/ekh;->g()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v8, Lg/ayu;->d:Lg/ve;

    iget-object v3, v3, Lg/ve;->d:Lg/cwx;

    new-instance v8, Lg/adz;

    sget-object v10, Lg/hay;->CAST:Lg/hay;

    const/4 v11, 0x1

    invoke-direct {v8, v10, v3, v11}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v8, v5}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v10, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v8, v10}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v8}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v8

    iput-object v3, v8, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v2, v5, v8}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    goto :goto_c

    :cond_1a
    new-instance v0, Lg/gck;

    const-string v1, "Unexpected instance arg in invoke"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v11, 0x1

    invoke-virtual {v3}, Lg/gif;->z()I

    move-result v3

    invoke-virtual {v2, v5}, Lg/eek;->aq(Lg/gsh;)I

    move-result v10

    iget-object v8, v8, Lg/ayu;->c:Ljava/util/List;

    sub-int/2addr v10, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v3, Lg/cff;

    if-eqz v8, :cond_1e

    iput-object v3, v5, Lg/flv;->h:Lg/cwx;

    sget-object v8, Lg/cwx;->z:Lg/cff;

    invoke-virtual {v3, v8}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    invoke-virtual {v5, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_c

    :cond_1c
    :goto_b
    const/4 v11, 0x1

    goto :goto_c

    :cond_1d
    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v7}, Lg/gsh;->b()Lg/gsh;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_d

    :cond_1e
    :goto_c
    invoke-virtual {v2, v6}, Lg/eek;->au(Lg/eek;)V

    add-int/lit8 v15, v15, 0x1

    :goto_d
    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v15, v2, :cond_20

    :goto_e
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_21

    invoke-virtual {v12}, Lg/dsf;->run()V

    goto :goto_f

    :cond_20
    invoke-static/range {v19 .. v19}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/bev;

    const/16 v5, 0xd

    invoke-direct {v3, v5}, Lg/bev;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v6, v2}, Lg/lh;->w(Lg/csv;)V

    :cond_21
    :goto_f
    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    goto/16 :goto_1

    :cond_22
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    invoke-static {v0, v1}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    iget-object v2, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_23
    return-void
.end method

.method public static ad(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)V
    .locals 2

    sget-object v0, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lg/eak;->m(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lg/gsh;->an(Lg/hed;Lg/eek;Z)Lg/gsh;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lg/eek;->au(Lg/eek;)V

    :cond_1
    invoke-static {p0, p2}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    invoke-static {p0, p3, p2}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    :cond_2
    return-void
.end method

.method public static ae(Ljava/util/List;Ljava/util/LinkedHashSet;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/abi;

    iget-object v1, v0, Lg/eek;->ai:Lg/gks;

    iget-object v1, v1, Lg/gks;->a:Lg/vm;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/vm;->x()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lg/eak;->ae(Ljava/util/List;Ljava/util/LinkedHashSet;)V

    :cond_1
    iget-object v0, v0, Lg/eek;->aj:Ljava/util/List;

    new-instance v1, Lg/agx;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static af(Lg/hed;)V
    .locals 3

    sget-object v0, Lg/enz;->a:Lg/enz;

    iget-object v1, p0, Lg/hed;->ao:Lg/eys;

    invoke-static {p0, v0, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    sget-object v1, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lg/eak;->av(Lg/hed;)V

    :cond_0
    invoke-static {p0, v0}, Lg/buj;->ax(Lg/hed;Lg/avy;)V

    sget-object v0, Lg/eak;->a:Lg/enz;

    iget-object v1, p0, Lg/hed;->ao:Lg/eys;

    invoke-static {p0, v0, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    sget-object v0, Lg/eak;->b:Lg/bli;

    invoke-static {p0, v0}, Lg/buj;->ax(Lg/hed;Lg/avy;)V

    return-void
.end method

.method public static ag(Lg/cci;Lg/hed;Lg/hay;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lg/hed;->aj:Lg/fza;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v4, :cond_2

    :cond_1
    :goto_0
    move-object v2, v6

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/eek;

    iget-object v8, v7, Lg/eek;->ah:Lg/hay;

    if-ne v8, p2, :cond_8

    move-object v8, v7

    check-cast v8, Lg/adz;

    iget-object v9, v8, Lg/adz;->a:Ljava/lang/Object;

    check-cast v9, Lg/dsj;

    iget-object v10, v9, Lg/dsj;->d:Lg/ve;

    iget-object v11, p0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v10, v11}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0, v9}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v9

    if-eqz v9, :cond_8

    if-eqz v2, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    new-instance v10, Lg/ej;

    invoke-direct {v10, v9, v8, v7}, Lg/ej;-><init>(Lg/hcd;Lg/adz;Z)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_6

    invoke-virtual {v7}, Lg/eek;->aw()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public static ah(Lg/hed;)V
    .locals 3

    iget-object v0, p0, Lg/hed;->z:Lg/gks;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/gks;->a:Lg/vm;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lg/eak;->az(Lg/vm;)V

    :cond_1
    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v2, v1, Lg/gks;->a:Lg/vm;

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lg/eak;->az(Lg/vm;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    invoke-static {v0}, Lg/eak;->az(Lg/vm;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static ai(Lg/gsh;Lg/fih;I)I
    .locals 1

    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p0, Lg/gks;

    iget v0, p0, Lg/gks;->e:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lg/lh;->m(Lg/eue;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aj(Lg/dwg;Ljava/util/LinkedHashSet;Ljava/util/HashSet;Lg/cwx;)I
    .locals 6

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-static {p3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p3}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0, p1, p2}, Lg/eak;->n(Lg/cci;Ljava/util/LinkedHashSet;Ljava/util/HashSet;)V

    return v2

    :cond_2
    iget-object v0, p0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v0, p3}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lg/aht;->e:[Lg/cwx;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, v0, v1

    invoke-static {p0, p1, p2, v5}, Lg/eak;->aj(Lg/dwg;Ljava/util/LinkedHashSet;Ljava/util/HashSet;Lg/cwx;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {p3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public static ak(Lg/hed;Lg/eek;Lg/fpd;Lg/hay;)Lg/eek;
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    if-ne v0, p3, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1}, Lg/sm;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lg/eek;

    sget-object v3, Lg/hay;->NOP:Lg/hay;

    invoke-direct {v1, v3, v2}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v3, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-static {p0, v4, p1, v1}, Lg/ffb;->bw(Lg/hed;Lg/fza;Lg/eek;Lg/eek;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    :goto_0
    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    check-cast p1, Lg/gks;

    invoke-virtual {p1}, Lg/gks;->aa()Lg/eek;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lg/eak;->ak(Lg/hed;Lg/eek;Lg/fpd;Lg/hay;)Lg/eek;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static al(Lg/gks;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/csv;->THIS:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    sget-object v0, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    iget-object v0, p0, Lg/gsh;->ae:Lg/eek;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->MOVE:Lg/hay;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Lg/eek;->ai:Lg/gks;

    iget v2, v1, Lg/gks;->e:I

    iget p0, p0, Lg/gks;->e:I

    if-eq v2, p0, :cond_1

    iget-object p0, v1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0}, Lg/vm;->t()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v1}, Lg/eak;->al(Lg/gks;)V

    iget-object p0, v1, Lg/gks;->a:Lg/vm;

    iget-object p0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    new-instance v1, Lg/esk;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {p0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    sget-object p0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v0, p0}, Lg/lh;->w(Lg/csv;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static am(Lg/hed;Lg/amj;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lg/csv;->RETURN:Lg/csv;

    move-object v2, p1

    check-cast v2, Lg/lh;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    instance-of v1, p1, Lg/fza;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lg/fza;

    iget-object v3, p0, Lg/hed;->ad:Lg/fza;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v1, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    instance-of v1, p1, Lg/cfm;

    if-eqz v1, :cond_8

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    instance-of v1, p1, Lg/fza;

    if-eqz v1, :cond_7

    check-cast p1, Lg/fza;

    iget-object p0, p0, Lg/hed;->ad:Lg/fza;

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_7

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    iget-object p0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    return v0

    :cond_9
    :goto_5
    return v2
.end method

.method public static an(Lg/hed;Lg/hcd;Lg/adz;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lg/cly;

    if-eqz v0, :cond_0

    check-cast p2, Lg/cly;

    iget-object p2, p2, Lg/cly;->a:Lg/eek;

    goto :goto_0

    :cond_0
    new-instance v0, Lg/eek;

    sget-object v1, Lg/hay;->ONE_ARG:Lg/hay;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v0, p2}, Lg/eek;->_an(Lg/gsh;)V

    move-object p2, v0

    :goto_0
    new-instance v0, Lg/gos;

    invoke-direct {v0, p0, p2}, Lg/gos;-><init>(Lg/hed;Lg/eek;)V

    invoke-virtual {p1, v0}, Lg/lh;->m(Lg/eue;)V

    return-void
.end method

.method public static ao(Lg/hed;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v4, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->MOVE:Lg/hay;

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    sget-object v7, Lg/acq;->s:Lg/acq;

    iget-object v8, v6, Lg/eek;->ai:Lg/gks;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v8, v9}, Lg/gks;->x(Lg/gsh;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_2
    move-object/from16 v16, v2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v9, Lg/gks;

    if-eqz v10, :cond_3

    move-object v11, v9

    check-cast v11, Lg/gks;

    iget-object v11, v11, Lg/gks;->a:Lg/vm;

    iget-object v11, v11, Lg/vm;->c:Lg/gks;

    iget-object v11, v11, Lg/gsh;->ae:Lg/eek;

    if-eqz v11, :cond_3

    iget-object v11, v11, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->PHI:Lg/hay;

    if-ne v11, v12, :cond_3

    goto :goto_4

    :cond_3
    iget-object v8, v8, Lg/gks;->a:Lg/vm;

    iget-object v11, v8, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lg/vm;->t()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object v8, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v8

    check-cast v8, Lg/fih;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gks;

    iget-object v14, v13, Lg/gsh;->ae:Lg/eek;

    if-nez v14, :cond_7

    :goto_4
    move-object/from16 v16, v2

    goto/16 :goto_8

    :cond_7
    if-nez v8, :cond_6

    iget-object v13, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v7}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v13

    check-cast v13, Lg/fih;

    if-eqz v13, :cond_6

    move-object v8, v13

    goto :goto_3

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gks;

    iget-object v12, v11, Lg/gsh;->ae:Lg/eek;

    if-nez v12, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v10, :cond_a

    move-object v13, v9

    check-cast v13, Lg/gks;

    iget-object v14, v11, Lg/flv;->h:Lg/cwx;

    iget v15, v13, Lg/gks;->e:I

    move-object/from16 v16, v2

    iget-object v2, v13, Lg/gks;->a:Lg/vm;

    invoke-virtual {v13, v15, v14, v2}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object/from16 v16, v2

    invoke-virtual {v9}, Lg/gsh;->b()Lg/gsh;

    move-result-object v2

    :goto_6
    invoke-virtual {v12, v6}, Lg/eek;->au(Lg/eek;)V

    invoke-virtual {v2, v11}, Lg/lh;->s(Lg/lh;)V

    if-eqz v8, :cond_b

    invoke-virtual {v2, v8}, Lg/lh;->m(Lg/eue;)V

    :cond_b
    invoke-virtual {v12, v11, v2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Failed to replace arg in insn: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v2, v16

    goto :goto_5

    :goto_7
    sget-object v2, Lg/csv;->MOVE_INLINED:Lg/csv;

    invoke-virtual {v3, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v6}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    :goto_8
    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_d
    move-object/from16 v16, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    if-nez v4, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    invoke-static {v0, v3}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_9

    :cond_f
    invoke-static {v0, v1}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    invoke-static {v4, v1}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_a
    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static ap(Lg/hed;Lg/eek;Z)Lg/fmz;
    .locals 4

    invoke-static {p0, p1}, Lg/eak;->aa(Lg/hed;Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Lg/esk;

    const/16 p2, 0x12

    invoke-direct {p0, p2}, Lg/esk;-><init>(I)V

    invoke-virtual {p1, p0}, Lg/eek;->ap(Lg/esk;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lg/eek;->_o()Lg/eek;

    move-result-object p1

    :goto_0
    new-instance p2, Lg/esk;

    const/16 v0, 0x12

    invoke-direct {p2, v0}, Lg/esk;-><init>(I)V

    invoke-virtual {p1, p2}, Lg/eek;->ap(Lg/esk;)V

    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lg/hed;->z:Lg/gks;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/hed;->z:Lg/gks;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget v3, v3, Lg/gks;->e:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p2, Lg/fmz;

    invoke-direct {p2, p1, v1}, Lg/fmz;-><init>(Lg/eek;[I)V

    invoke-virtual {p0, p2}, Lg/lh;->m(Lg/eue;)V

    const-string p1, "Marked for inline"

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return-object p2
.end method

.method public static aq(Lg/cuj;Lg/abi;)V
    .locals 4

    iget-object v0, p1, Lg/eek;->ai:Lg/gks;

    iget v1, v0, Lg/gks;->e:I

    iget-object v2, p0, Lg/cuj;->d:[Lg/vm;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lg/cuj;->c:Lg/fza;

    iget-object v0, v0, Lg/flv;->h:Lg/cwx;

    new-instance v3, Lg/gks;

    invoke-direct {v3, v1, v0}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p1, v3, p0}, Lg/abi;->_az(Lg/gks;Lg/fza;)V

    invoke-virtual {v2, v3}, Lg/vm;->r(Lg/gks;)V

    invoke-virtual {v2, p1}, Lg/vm;->p(Lg/abi;)V

    return-void
.end method

.method public static ar(Ljava/util/ArrayList;)V
    .locals 9

    invoke-static {p0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/fov;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    new-instance v2, Lg/fov;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    new-instance v3, Lg/ko;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2, v3}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/bev;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lg/bev;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/fov;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ej;

    iget-boolean v4, v2, Lg/ej;->c:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lg/ej;->b:Lg/adz;

    invoke-virtual {v4, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v3, Lg/cly;

    if-eqz v5, :cond_4

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    invoke-virtual {v3}, Lg/eek;->aw()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lg/acq;->al:Lg/acq;

    iget-object v5, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v3}, Lg/sm;->j(Lg/fky;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gks;

    invoke-virtual {v4}, Lg/gsh;->al()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lg/ekh;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lg/gsh;->al()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, v2, Lg/ej;->a:Lg/hcd;

    iget-object v2, v2, Lg/hcd;->g:Lg/dsj;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ej;

    iget-object v5, v4, Lg/ej;->a:Lg/hcd;

    iget-object v5, v5, Lg/hcd;->g:Lg/dsj;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    iget-object v4, v4, Lg/ej;->b:Lg/adz;

    iget-object v6, v4, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->SPUT:Lg/hay;

    if-ne v6, v7, :cond_b

    sget-object v6, Lg/hay;->SGET:Lg/hay;

    goto :goto_3

    :cond_b
    sget-object v6, Lg/hay;->IGET:Lg/hay;

    :goto_3
    new-instance v7, Lg/fss;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v0}, Lg/fss;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Lg/eek;->ak(Lg/fss;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_8

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    :cond_c
    if-nez v2, :cond_7

    :cond_d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lg/fev;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lg/fev;-><init>(ILjava/util/Set;)V

    invoke-static {p0, v1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_e
    return-void
.end method

.method public static as(Lg/dwg;Lg/eek;)Lg/clx;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lg/cly;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lg/cly;

    iget-object p1, p1, Lg/cly;->a:Lg/eek;

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    iget-object v2, p1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->INVOKE:Lg/hay;

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->SGET:Lg/hay;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/hdc;

    iget-object v2, p1, Lg/hdc;->ad:Lg/ayu;

    iget-object v3, v2, Lg/ayu;->e:Ljava/lang/String;

    const-string v4, "ordinal()I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lg/ayu;->d:Lg/ve;

    invoke-virtual {p0, v2}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lg/cci;->bi()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Lg/adz;

    iget-object v1, v1, Lg/adz;->a:Ljava/lang/Object;

    instance-of v2, v1, Lg/dsj;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    check-cast v1, Lg/dsj;

    invoke-virtual {p0, v1}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v1, p0, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->bb()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lg/clx;

    invoke-virtual {p1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p0, v2}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static at(Lg/gks;)Lg/eek;
    .locals 2

    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    iget-object v0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/gks;

    iget-object p0, p0, Lg/gsh;->ae:Lg/eek;

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lg/eek;->ai:Lg/gks;

    invoke-static {p0}, Lg/eak;->at(Lg/gks;)Lg/eek;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static au(Lg/amj;)Z
    .locals 3

    instance-of v0, p0, Lg/goe;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lg/cfm;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lg/goe;

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public static av(Lg/hed;)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/hed;->ar:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1a

    :cond_0
    sget-object v1, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->v(Lg/csv;)V

    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v3, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v17, v1

    goto/16 :goto_17

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_2

    new-instance v8, Lg/aod;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    invoke-direct {v8, v9, v6, v7}, Lg/aod;-><init>(Lg/eek;Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aod;

    iget-object v8, v7, Lg/aod;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_2
    if-ltz v9, :cond_3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gks;

    sget-object v12, Lg/csv;->DONT_INLINE:Lg/csv;

    iget-object v13, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v11, Lg/gsh;->ae:Lg/eek;

    if-eqz v13, :cond_4

    sget-object v14, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v13, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v14}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    :goto_3
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    goto/16 :goto_15

    :cond_5
    iget-object v13, v11, Lg/gks;->a:Lg/vm;

    if-eqz v13, :cond_4

    iget-object v14, v13, Lg/vm;->d:Ljava/util/ArrayList;

    iget-object v15, v13, Lg/vm;->c:Lg/gks;

    iget-object v15, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v15, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    iget-object v15, v13, Lg/vm;->c:Lg/gks;

    iget-object v15, v15, Lg/gsh;->ae:Lg/eek;

    if-eqz v15, :cond_4

    iget-object v5, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v12, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    sget-object v5, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    iget-object v12, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v13}, Lg/vm;->t()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Lg/gks;

    move/from16 v16, v5

    iget-object v5, v1, Lg/gsh;->ae:Lg/eek;

    move-object/from16 v18, v6

    if-eqz v5, :cond_9

    sget-object v6, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_5
    move/from16 v5, v16

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    goto :goto_4

    :cond_9
    if-nez v16, :cond_a

    sget-object v5, Lg/csv;->DONT_INLINE_CONST:Lg/csv;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_15

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v17, v1

    move/from16 v16, v5

    move-object/from16 v18, v6

    const/4 v1, 0x1

    if-nez v16, :cond_c

    if-eq v10, v1, :cond_c

    goto/16 :goto_15

    :cond_c
    if-nez v16, :cond_10

    invoke-virtual {v13}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v13}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lg/edk;

    const/4 v10, 0x0

    invoke-direct {v6, v5, v10}, Lg/edk;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v6}, Lg/eek;->az(Lg/edk;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gsh;

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    iget-object v5, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/vm;

    if-eq v6, v13, :cond_e

    invoke-virtual {v6}, Lg/vm;->u()Lg/ejb;

    move-result-object v10

    invoke-virtual {v13}, Lg/vm;->u()Lg/ejb;

    move-result-object v12

    if-ne v10, v12, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v6}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v5, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_2f

    :cond_10
    :goto_7
    iget-object v5, v15, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->INVOKE:Lg/hay;

    if-ne v5, v6, :cond_12

    instance-of v5, v15, Lg/arl;

    if-eqz v5, :cond_12

    iget-object v5, v11, Lg/gks;->a:Lg/vm;

    iget-object v5, v5, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gks;

    iget-object v10, v6, Lg/gsh;->ae:Lg/eek;

    if-eqz v10, :cond_11

    iget-object v12, v10, Lg/eek;->ah:Lg/hay;

    sget-object v13, Lg/hay;->INVOKE:Lg/hay;

    if-ne v12, v13, :cond_11

    check-cast v10, Lg/hdc;

    invoke-virtual {v10}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v10

    if-eqz v10, :cond_11

    if-ne v10, v6, :cond_11

    goto/16 :goto_15

    :cond_12
    invoke-static {v3, v15}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1d

    iget-object v6, v7, Lg/aod;->e:Ljava/util/ArrayList;

    iget v10, v7, Lg/aod;->b:I

    if-ge v5, v10, :cond_1c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/aod;

    add-int/lit8 v13, v5, 0x1

    if-ne v13, v10, :cond_13

    goto :goto_b

    :cond_13
    if-gt v13, v10, :cond_1b

    iget-object v14, v12, Lg/aod;->f:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_14

    iget-object v14, v12, Lg/aod;->g:Ljava/util/ArrayList;

    invoke-static {v14}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_14

    sget-object v14, Lg/giu;->a:Lg/giu;

    goto :goto_8

    :cond_14
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v12, v14}, Lg/aod;->l(Ljava/util/BitSet;)V

    :goto_8
    sget-object v15, Lg/giu;->a:Lg/giu;

    if-ne v14, v15, :cond_15

    iget-object v15, v12, Lg/aod;->c:Lg/eek;

    invoke-virtual {v15}, Lg/eek;->as()Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v12}, Lg/aod;->k()Z

    move-result v12

    :goto_9
    if-ge v13, v10, :cond_19

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/aod;

    invoke-virtual {v15}, Lg/aod;->j()Lg/aod;

    move-result-object v1

    if-ne v1, v7, :cond_16

    goto :goto_a

    :cond_16
    iget-object v1, v15, Lg/aod;->c:Lg/eek;

    if-eqz v12, :cond_17

    invoke-static {v1, v14}, Lg/aod;->h(Lg/eek;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_17
    invoke-virtual {v1}, Lg/eek;->aw()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-static {v1, v14}, Lg/aod;->h(Lg/eek;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    :goto_a
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x1

    goto :goto_9

    :cond_19
    :goto_b
    iput v5, v7, Lg/aod;->b:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aod;

    iput-object v7, v1, Lg/aod;->d:Lg/aod;

    iget-object v5, v7, Lg/aod;->g:Ljava/util/ArrayList;

    if-nez v5, :cond_1a

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v7, Lg/aod;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v7, Lg/aod;->g:Ljava/util/ArrayList;

    :cond_1a
    iget-object v5, v7, Lg/aod;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lg/dyf;

    iget-object v1, v1, Lg/aod;->c:Lg/eek;

    invoke-direct {v5, v1, v11}, Lg/dyf;-><init>(Lg/eek;Lg/gks;)V

    goto :goto_d

    :cond_1b
    new-instance v0, Lg/gck;

    const-string v1, "Invalid inline insn positions: "

    const-string v2, " - "

    invoke-static {v13, v10, v1, v2}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_c
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_2f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_1d
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v15, v1}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v5, v11, Lg/gsh;->ae:Lg/eek;

    if-eq v15, v5, :cond_2f

    iget-object v5, v7, Lg/aod;->c:Lg/eek;

    invoke-static {v1, v2}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v6

    if-nez v6, :cond_1f

    :cond_1e
    :goto_e
    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_1f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15, v6}, Lg/aod;->i(Lg/eek;Ljava/util/ArrayList;)V

    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gks;

    iget v12, v12, Lg/gks;->e:I

    invoke-virtual {v10, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_f

    :cond_20
    iget-object v6, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v12, 0x0

    :cond_21
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/eek;

    if-eqz v12, :cond_22

    invoke-virtual {v13}, Lg/eek;->aw()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-static {v13, v10}, Lg/aod;->h(Lg/eek;Ljava/util/BitSet;)Z

    move-result v14

    if-eqz v14, :cond_22

    goto :goto_e

    :cond_22
    if-ne v13, v15, :cond_21

    const/4 v12, 0x1

    goto :goto_10

    :cond_23
    invoke-static {v1, v2}, Lg/ffb;->x(Lg/fza;Lg/fza;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    sget-object v13, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v14, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-eqz v13, :cond_28

    sget-object v13, Lg/hay;->MONITOR_EXIT:Lg/hay;

    invoke-static {v12, v13}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Lg/hed;->ao:Lg/eys;

    if-nez v12, :cond_26

    :cond_25
    :goto_12
    const/4 v12, 0x0

    goto :goto_13

    :cond_26
    invoke-static {v1, v12}, Lg/gs;->i(Lg/cih;Lg/amj;)Lg/amj;

    move-result-object v12

    instance-of v13, v12, Lg/cfm;

    if-eqz v13, :cond_25

    instance-of v13, v12, Lg/foe;

    if-eqz v13, :cond_27

    goto :goto_12

    :cond_27
    check-cast v12, Lg/cfm;

    invoke-interface {v12}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    :goto_13
    if-eqz v12, :cond_1e

    goto :goto_11

    :cond_28
    iget-object v12, v12, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/eek;

    invoke-virtual {v13}, Lg/eek;->aw()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-static {v13, v10}, Lg/aod;->h(Lg/eek;Ljava/util/BitSet;)Z

    move-result v13

    if-eqz v13, :cond_29

    goto/16 :goto_e

    :cond_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eek;

    if-ne v12, v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_14

    :cond_2c
    invoke-virtual {v12}, Lg/eek;->aw()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-static {v12, v10}, Lg/aod;->h(Lg/eek;Ljava/util/BitSet;)Z

    move-result v12

    if-eqz v12, :cond_2b

    goto/16 :goto_e

    :goto_14
    if-eqz v5, :cond_2f

    if-eqz v16, :cond_2d

    invoke-static {v0, v11, v15, v1}, Lg/eak;->m(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)Z

    goto :goto_15

    :cond_2d
    invoke-static {v0, v11, v15, v1}, Lg/eak;->ad(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)V

    goto :goto_15

    :cond_2e
    new-instance v0, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t process instruction move : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_15
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_30
    move-object/from16 v17, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dyf;

    iget-object v5, v4, Lg/dyf;->b:Lg/gks;

    iget-object v4, v4, Lg/dyf;->a:Lg/eek;

    invoke-static {v0, v5, v4, v2}, Lg/eak;->ad(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)V

    goto :goto_16

    :cond_31
    :goto_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_34

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eek;

    iget-object v5, v4, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->MOVE:Lg/hay;

    if-ne v5, v6, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    if-eqz v7, :cond_33

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    invoke-static {v0, v6}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    iget-object v7, v4, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v7}, Lg/gks;->z()Lg/gks;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v6, v4}, Lg/eek;->au(Lg/eek;)V

    iget v4, v4, Lg/eek;->ag:I

    iput v4, v6, Lg/eek;->ag:I

    sget-object v4, Lg/csv;->WRAPPED:Lg/csv;

    invoke-virtual {v6, v4}, Lg/lh;->v(Lg/csv;)V

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_32
    const/4 v5, 0x0

    :cond_33
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_34
    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_35
    :goto_1a
    return-void
.end method

.method public static aw([Lg/eek;ILg/eek;Lg/cwx;)V
    .locals 3

    invoke-static {p0, p1}, Lg/eak;->ba([Lg/eek;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p0, p1

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->MOVE_RESULT:Lg/hay;

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lg/eek;->ai:Lg/gks;

    iget v1, v0, Lg/gks;->e:I

    iget-object v2, v0, Lg/gks;->a:Lg/vm;

    invoke-virtual {v0, v1, p3, v2}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {p2, p1}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {p2, p1}, Lg/ccm;->br(Lg/eek;)V

    iget p1, p1, Lg/eek;->ag:I

    const/4 p2, 0x0

    aput-object p2, p0, p1

    return-void
.end method

.method public static ax(Lg/hed;Lg/gsh;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/gsh;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    new-instance v1, Lg/adz;

    sget-object v2, Lg/hay;->CAST:Lg/hay;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {p1, p0, v1, v3}, Lg/gsh;->an(Lg/hed;Lg/eek;Z)Lg/gsh;

    :cond_0
    return-void
.end method

.method public static ay(Lg/gsh;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lg/gks;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Lg/cly;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lg/cly;

    iget-object p0, p0, Lg/cly;->a:Lg/eek;

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p0

    invoke-static {p0}, Lg/eak;->ay(Lg/gsh;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static az(Lg/vm;)V
    .locals 5

    iget-object v0, p0, Lg/vm;->b:Lg/ejb;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/ejb;

    invoke-direct {v0}, Lg/ejb;-><init>()V

    iget-object v1, p0, Lg/vm;->c:Lg/gks;

    sget-object v2, Lg/csv;->THIS:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "this"

    iput-object v2, v0, Lg/ejb;->c:Ljava/lang/String;

    iput-boolean v3, v0, Lg/ejb;->b:Z

    :cond_1
    sget-object v2, Lg/csv;->METHOD_ARGUMENT:Lg/csv;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lg/csv;->CUSTOM_DECLARE:Lg/csv;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput-boolean v3, v0, Lg/ejb;->d:Z

    :cond_3
    invoke-virtual {p0}, Lg/vm;->x()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lg/eak;->ae(Ljava/util/List;Ljava/util/LinkedHashSet;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    if-le p0, v3, :cond_6

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lg/fov;

    const/16 v4, 0x1d

    invoke-direct {v1, v4}, Lg/fov;-><init>(I)V

    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lg/bev;

    const/16 v4, 0x1c

    invoke-direct {v1, v4}, Lg/bev;-><init>(I)V

    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lg/bev;

    const/16 v4, 0x1d

    invoke-direct {v1, v4}, Lg/bev;-><init>(I)V

    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/cwx;

    iput-object p0, v0, Lg/ejb;->e:Lg/cwx;

    goto :goto_0

    :cond_4
    if-gt v1, v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Several immutable types in one variable: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", vars: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    new-instance p0, Lg/agx;

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, p0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lg/vm;->n(Lg/ejb;)V

    return-void
.end method

.method public static ba([Lg/eek;I)I
    .locals 3

    array-length v0, p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    aget-object v1, p0, p1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->NOP:Lg/hay;

    if-eq v1, v2, :cond_0

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static bb(Lg/hed;Ljava/util/ArrayList;Ljava/util/HashSet;Lg/fpr;)Lg/fpr;
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lg/eak;->t(Lg/hed;Ljava/util/List;Ljava/util/HashSet;Z)Lg/fpr;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p3, Lg/fpr;->b:Ljava/util/List;

    invoke-static {p1}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p3, p3, Lg/fpr;->a:Ljava/util/HashSet;

    invoke-static {p2}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p2, p3

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    :goto_1
    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lg/eak;->t(Lg/hed;Ljava/util/List;Ljava/util/HashSet;Z)Lg/fpr;

    move-result-object p0

    return-object p0
.end method

.method public static bc(Lg/hed;Lg/gtb;)V
    .locals 11

    iget-object v0, p0, Lg/hed;->an:[Lg/eek;

    iget-object v1, p1, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v0, v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lg/ccm;->bp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error attach source line"

    invoke-virtual {p0, v2, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/dbm;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/dbm;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Lj$/util/stream/IntStream;->min()Lj$/util/OptionalInt;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lj$/util/OptionalInt;->orElse(I)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const-string v1, "Lines numbers was adjusted: min line is "

    invoke-static {v2, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/fov;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    new-instance v3, Lg/fov;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lg/fov;-><init>(I)V

    new-instance v4, Lg/ko;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3, v4}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/bev;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lg/bev;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Repeating lines: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const-string v2, "Don\'t trust debug lines info. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v1, Lg/csv;->USE_LINES_HINTS:Lg/csv;

    invoke-virtual {p0, v1}, Lg/lh;->w(Lg/csv;)V

    :goto_2
    iget-object p1, p1, Lg/gtb;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ers;

    invoke-interface {v3}, Lg/ers;->h()I

    move-result v4

    invoke-interface {v3}, Lg/ers;->j()I

    move-result v5

    invoke-interface {v3}, Lg/ers;->i()I

    move-result v6

    invoke-static {p0, v3}, Lg/eak;->q(Lg/hed;Lg/ers;)Lg/cwx;

    move-result-object v7

    new-instance v8, Lg/fih;

    invoke-interface {v3}, Lg/ers;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v7}, Lg/fih;-><init>(Ljava/lang/String;Lg/cwx;)V

    if-gtz v5, :cond_a

    iget-object v3, p0, Lg/hed;->z:Lg/gks;

    if-eqz v3, :cond_8

    invoke-static {v3, v8, v4}, Lg/eak;->ai(Lg/gsh;Lg/fih;I)I

    :cond_8
    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gks;

    invoke-static {v5, v8, v4}, Lg/eak;->ai(Lg/gsh;Lg/fih;I)I

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :cond_a
    :goto_4
    if-gt v5, v6, :cond_7

    aget-object v3, v0, v5

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v7, v3, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/gsh;

    invoke-static {v10, v8, v4}, Lg/eak;->ai(Lg/gsh;Lg/fih;I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_5

    :cond_c
    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    iget-object v3, v3, Lg/eek;->ai:Lg/gks;

    invoke-static {v3, v8, v4}, Lg/eak;->ai(Lg/gsh;Lg/fih;I)I

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    new-instance v1, Lg/bot;

    invoke-direct {v1, p1}, Lg/bot;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lg/lh;->m(Lg/eue;)V

    :goto_7
    array-length p1, v0

    :goto_8
    if-ge v2, p1, :cond_10

    aget-object v1, v0, v2

    if-eqz v1, :cond_f

    iget v1, v1, Lg/ccm;->bp:I

    if-eqz v1, :cond_f

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/ccm;->bp:I

    goto :goto_9

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    return-void
.end method

.method private final bf(Lg/hed;)V
    .locals 20

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lg/hed;->ar:Z

    if-eqz v1, :cond_0

    goto/16 :goto_27

    :cond_0
    sget-object v1, Lg/acq;->bh:Lg/acq;

    sget-object v2, Lg/acq;->am:Lg/acq;

    iget-object v3, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_27

    :cond_1
    new-instance v3, Lg/aes;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lg/hed;->af:I

    invoke-static {v4, v5}, Lg/aes;->f(II)[Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v3, Lg/aes;->c:[Ljava/util/BitSet;

    invoke-static {v4, v5}, Lg/aes;->f(II)[Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v3, Lg/aes;->d:[Ljava/util/BitSet;

    invoke-static {v5, v4}, Lg/aes;->f(II)[Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, v3, Lg/aes;->b:[Ljava/util/BitSet;

    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget v6, v5, Lg/fza;->x:I

    iget-object v7, v3, Lg/aes;->c:[Ljava/util/BitSet;

    aget-object v7, v7, v6

    iget-object v8, v3, Lg/aes;->d:[Ljava/util/BitSet;

    aget-object v8, v8, v6

    iget-object v5, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    iget-object v10, v9, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gsh;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Lg/gks;

    if-eqz v12, :cond_4

    check-cast v11, Lg/gks;

    iget v11, v11, Lg/gks;->e:I

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_5
    iget-object v9, v9, Lg/eek;->ai:Lg/gks;

    if-eqz v9, :cond_3

    iget v9, v9, Lg/gks;->e:I

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v3, Lg/aes;->b:[Ljava/util/BitSet;

    aget-object v9, v10, v9

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_6
    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lg/hed;->af:I

    invoke-static {v4, v5}, Lg/aes;->f(II)[Ljava/util/BitSet;

    move-result-object v4

    iget-object v6, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v8, v7, 0xa

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    iget v15, v13, Lg/fza;->x:I

    aget-object v14, v4, v15

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v5}, Ljava/util/BitSet;-><init>(I)V

    iget-object v13, v13, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v5

    move-object/from16 v5, v17

    check-cast v5, Lg/fza;

    iget v5, v5, Lg/fza;->x:I

    aget-object v5, v4, v5

    invoke-virtual {v9, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    move/from16 v5, v18

    goto :goto_4

    :cond_7
    move/from16 v18, v5

    iget-object v5, v3, Lg/aes;->d:[Ljava/util/BitSet;

    aget-object v5, v5, v15

    invoke-virtual {v9, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    iget-object v5, v3, Lg/aes;->c:[Ljava/util/BitSet;

    aget-object v5, v5, v15

    invoke-virtual {v9, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v14, v9}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    aput-object v9, v4, v15

    const/4 v12, 0x1

    :cond_8
    move/from16 v5, v18

    goto :goto_3

    :cond_9
    move/from16 v18, v5

    add-int/lit8 v5, v10, 0x1

    if-gt v10, v8, :cond_4a

    if-nez v12, :cond_49

    iput-object v4, v3, Lg/aes;->e:[Ljava/util/BitSet;

    iget v4, v0, Lg/hed;->af:I

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_e

    iget-object v6, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v7}, Ljava/util/BitSet;-><init>(I)V

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v7}, Ljava/util/BitSet;-><init>(I)V

    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v10, v3, Lg/aes;->b:[Ljava/util/BitSet;

    aget-object v10, v10, v5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v12

    :goto_6
    if-ltz v12, :cond_a

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    invoke-virtual {v7, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v12

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    iget-object v10, v10, Lg/fza;->i:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v12

    :goto_7
    if-ltz v12, :cond_a

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v3, Lg/aes;->e:[Ljava/util/BitSet;

    array-length v13, v11

    if-lt v12, v13, :cond_b

    sget-object v11, Lg/aes;->a:Lg/dba;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v3, Lg/aes;->e:[Ljava/util/BitSet;

    array-length v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "LiveVarAnalysis: out of bounds block: {}, max: {}"

    invoke-interface {v11, v13, v15, v14}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_8

    :cond_b
    aget-object v11, v11, v12

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    :goto_8
    if-eqz v11, :cond_c

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    invoke-static {v0, v11, v5}, Lg/eak;->v(Lg/hed;Lg/fza;I)Lg/abi;

    move-result-object v13

    iget-object v14, v11, Lg/fza;->ac:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v12

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_e
    iget v3, v0, Lg/hed;->af:I

    new-instance v4, Lg/cuj;

    iget-object v5, v0, Lg/hed;->aj:Lg/fza;

    new-array v6, v3, [Lg/vm;

    new-array v3, v3, [I

    invoke-direct {v4, v0, v5, v6, v3}, Lg/cuj;-><init>(Lg/hed;Lg/fza;[Lg/vm;[I)V

    iget-object v3, v0, Lg/hed;->z:Lg/gks;

    if-eqz v3, :cond_f

    invoke-virtual {v4, v3}, Lg/cuj;->e(Lg/gks;)Lg/vm;

    :cond_f
    invoke-virtual {v0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gks;

    invoke-virtual {v4, v5}, Lg/cuj;->e(Lg/gks;)Lg/vm;

    goto :goto_9

    :cond_10
    iget-object v3, v4, Lg/cuj;->c:Lg/fza;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/czc;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/abi;

    invoke-static {v4, v5}, Lg/eak;->aq(Lg/cuj;Lg/abi;)V

    goto :goto_a

    :cond_11
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cuj;

    iget-object v5, v4, Lg/cuj;->c:Lg/fza;

    iget-object v6, v4, Lg/cuj;->d:[Lg/vm;

    iget-object v7, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->PHI:Lg/hay;

    if-eq v9, v10, :cond_16

    iget-object v9, v8, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/gsh;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v10, Lg/gks;

    if-nez v11, :cond_14

    goto :goto_c

    :cond_14
    check-cast v10, Lg/gks;

    iget v11, v10, Lg/gks;->e:I

    aget-object v12, v6, v11

    if-nez v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Not initialized variable reg: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", insn: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", block:"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lg/ebh;->bu(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lg/cuj;->e(Lg/gks;)Lg/vm;

    move-result-object v12

    :cond_15
    invoke-virtual {v12, v10}, Lg/vm;->r(Lg/gks;)V

    goto :goto_c

    :cond_16
    iget-object v8, v8, Lg/eek;->ai:Lg/gks;

    if-eqz v8, :cond_13

    invoke-virtual {v4, v8}, Lg/cuj;->e(Lg/gks;)Lg/vm;

    goto :goto_b

    :cond_17
    iget-object v5, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    iget-object v7, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v7

    check-cast v7, Lg/czc;

    if-nez v7, :cond_19

    goto :goto_d

    :cond_19
    iget-object v7, v7, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/abi;

    invoke-static {v4, v8}, Lg/eak;->aq(Lg/cuj;Lg/abi;)V

    goto :goto_e

    :cond_1a
    iget-object v5, v4, Lg/cuj;->c:Lg/fza;

    iget-object v5, v5, Lg/fza;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    new-instance v8, Lg/cuj;

    iget-object v9, v4, Lg/cuj;->b:Lg/hed;

    array-length v10, v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lg/vm;

    iget-object v11, v4, Lg/cuj;->a:[I

    invoke-direct {v8, v9, v7, v10, v11}, Lg/cuj;-><init>(Lg/hed;Lg/fza;[Lg/vm;[I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1b
    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v6, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/czc;

    if-eqz v6, :cond_1c

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/eng;

    if-eqz v4, :cond_1c

    iget-object v6, v6, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/abi;

    iget-object v8, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v8, :cond_20

    invoke-virtual {v7, v9}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v10

    invoke-virtual {v10}, Lg/gks;->aa()Lg/eek;

    move-result-object v11

    if-eqz v11, :cond_1f

    iget-object v12, v11, Lg/eek;->ai:Lg/gks;

    if-eqz v12, :cond_1f

    sget-object v12, Lg/csv;->TRY_LEAVE:Lg/csv;

    iget-object v13, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_1f

    sget-object v12, Lg/acq;->al:Lg/acq;

    iget-object v13, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v13

    check-cast v13, Lg/coe;

    if-eqz v13, :cond_1d

    goto :goto_12

    :cond_1d
    iget-object v13, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0, v11, v13}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v11

    if-nez v11, :cond_1e

    const/4 v13, 0x0

    goto :goto_12

    :cond_1e
    iget-object v11, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v12}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lg/coe;

    :goto_12
    if-eqz v13, :cond_1f

    iget-object v11, v13, Lg/coe;->a:Ljava/util/List;

    iget-object v12, v4, Lg/eng;->a:Lg/aea;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual {v7, v10}, Lg/abi;->_ax(Lg/gks;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_20
    iget-object v7, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_10

    :cond_21
    new-instance v0, Lg/gck;

    const-string v1, "PHI empty after try-catch fix!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v6, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/czc;

    if-nez v6, :cond_24

    goto :goto_13

    :cond_24
    iget-object v6, v6, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/abi;

    const/4 v8, 0x0

    :goto_14
    iget-object v9, v7, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_25

    invoke-virtual {v7, v8}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v9

    invoke-virtual {v9}, Lg/gks;->aa()Lg/eek;

    move-result-object v10

    if-eqz v10, :cond_26

    sget-object v11, Lg/csv;->REMOVE:Lg/csv;

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-virtual {v7, v9}, Lg/abi;->_ax(Lg/gks;)V

    invoke-static {v0, v10}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {v0, v4, v10}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_27
    iget-object v3, v0, Lg/hed;->z:Lg/gks;

    if-eqz v3, :cond_28

    invoke-static {v3}, Lg/eak;->al(Lg/gks;)V

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->d:Ljava/util/ArrayList;

    new-instance v4, Lg/esk;

    const/16 v6, 0x18

    invoke-direct {v4, v6}, Lg/esk;-><init>(I)V

    invoke-static {v3, v4}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_28
    iget-object v3, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v11, 0x0

    :goto_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_29
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/vm;

    iget-object v9, v8, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_29

    iget-object v8, v8, Lg/vm;->c:Lg/gks;

    iget-object v8, v8, Lg/gsh;->ae:Lg/eek;

    if-eqz v8, :cond_29

    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->PHI:Lg/hay;

    if-ne v9, v10, :cond_29

    check-cast v8, Lg/abi;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_16

    :cond_2a
    iget-object v6, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v9, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v9

    check-cast v9, Lg/czc;

    if-nez v9, :cond_2c

    goto :goto_17

    :cond_2c
    iget-object v9, v9, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/abi;

    iget-object v12, v10, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2f

    iget-object v7, v10, Lg/eek;->ai:Lg/gks;

    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    iget-object v7, v7, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gks;

    iget-object v13, v12, Lg/gsh;->ae:Lg/eek;

    if-eqz v13, :cond_2d

    iget-object v13, v13, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->PHI:Lg/hay;

    if-ne v13, v14, :cond_2d

    invoke-virtual {v10, v12}, Lg/abi;->_ax(Lg/gks;)V

    goto :goto_19

    :cond_2e
    invoke-static {v0, v10}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {v0, v8, v10}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    move-object/from16 v16, v4

    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto/16 :goto_20

    :cond_2f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_32

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_32

    invoke-virtual {v10, v13}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v15

    if-nez v14, :cond_30

    iget-object v14, v15, Lg/gks;->a:Lg/vm;

    goto :goto_1b

    :cond_30
    iget-object v15, v15, Lg/gks;->a:Lg/vm;

    if-eq v14, v15, :cond_31

    goto :goto_1c

    :cond_31
    :goto_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a

    :cond_32
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v12

    iget-object v13, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v13, v10}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_33

    :goto_1c
    move-object/from16 v16, v4

    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto/16 :goto_21

    :cond_33
    iget-object v7, v10, Lg/eek;->ai:Lg/gks;

    iget-object v7, v7, Lg/gks;->a:Lg/vm;

    iget-object v15, v12, Lg/gks;->a:Lg/vm;

    if-eqz v15, :cond_34

    invoke-virtual {v15, v12}, Lg/vm;->v(Lg/gks;)V

    invoke-virtual {v15, v10}, Lg/vm;->j(Lg/abi;)V

    :cond_34
    iget-object v15, v10, Lg/eek;->ai:Lg/gks;

    iget-object v15, v15, Lg/gks;->a:Lg/vm;

    if-nez v15, :cond_36

    move-object/from16 v16, v4

    :cond_35
    :goto_1d
    move-object/from16 v19, v6

    goto :goto_1f

    :cond_36
    move-object/from16 v16, v4

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v4

    iget-object v5, v4, Lg/gks;->a:Lg/vm;

    if-nez v5, :cond_37

    goto :goto_1d

    :cond_37
    iget-object v5, v15, Lg/vm;->d:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/gks;

    move-object/from16 v18, v5

    iget-object v5, v15, Lg/gsh;->ae:Lg/eek;

    if-eqz v5, :cond_35

    if-eq v5, v10, :cond_35

    iget v5, v15, Lg/gks;->e:I

    move-object/from16 v19, v6

    iget v6, v4, Lg/gks;->e:I

    if-eq v5, v6, :cond_38

    goto :goto_1f

    :cond_38
    iget-object v5, v15, Lg/gks;->a:Lg/vm;

    invoke-virtual {v5, v15}, Lg/vm;->v(Lg/gks;)V

    iget-object v5, v4, Lg/gks;->a:Lg/vm;

    invoke-virtual {v5, v15}, Lg/vm;->r(Lg/gks;)V

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_1e

    :goto_1f
    invoke-virtual {v7, v10}, Lg/vm;->j(Lg/abi;)V

    new-instance v4, Lg/eek;

    sget-object v5, Lg/hay;->MOVE:Lg/hay;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lg/eek;-><init>(Lg/hay;I)V

    sget-object v5, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    iget-object v5, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v4, v5}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v4, v12}, Lg/eek;->_an(Lg/gsh;)V

    iget-object v5, v12, Lg/gks;->a:Lg/vm;

    invoke-virtual {v5, v12}, Lg/vm;->r(Lg/gks;)V

    invoke-virtual {v13, v14, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_39
    move-object/from16 v19, v6

    const/4 v6, 0x1

    iget-object v5, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v1}, Lg/sm;->j(Lg/fky;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Lg/gks;->aa()Lg/eek;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lg/eek;->as()Z

    move-result v5

    if-nez v5, :cond_3a

    sget-object v5, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    :cond_3a
    invoke-static {v0, v10}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    const/4 v7, 0x1

    :goto_21
    move-object/from16 v4, v16

    move-object/from16 v6, v19

    goto/16 :goto_18

    :cond_3b
    move-object/from16 v16, v4

    const/4 v6, 0x1

    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v8, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v8

    check-cast v8, Lg/czc;

    if-nez v8, :cond_3d

    goto :goto_22

    :cond_3d
    iget-object v8, v8, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3e
    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/abi;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    iget-object v12, v10, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3f
    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gsh;

    if-nez v13, :cond_40

    goto :goto_24

    :cond_40
    check-cast v13, Lg/gks;

    iget-object v13, v13, Lg/gks;->a:Lg/vm;

    if-eqz v13, :cond_3f

    invoke-virtual {v13, v10}, Lg/vm;->j(Lg/abi;)V

    goto :goto_24

    :cond_41
    invoke-static {v0, v10}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {v0, v5, v10}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    goto :goto_23

    :cond_42
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v5, v2}, Lg/lh;->u(Lg/fky;)V

    goto :goto_22

    :cond_43
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_45

    add-int/lit8 v4, v11, 0x1

    if-gt v11, v3, :cond_44

    move v11, v4

    goto/16 :goto_15

    :cond_44
    new-instance v0, Lg/gck;

    const-string v1, "Phi nodes fix limit reached!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v2, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v3, Lg/brj;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lg/brj;-><init>(I)V

    invoke-static {v2, v3}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_25

    :cond_46
    iget-object v0, v0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/vm;

    iget-object v2, v1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_47

    iget-object v1, v1, Lg/vm;->c:Lg/gks;

    iget-object v1, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_47

    iget-object v2, v1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->INVOKE:Lg/hay;

    if-ne v2, v3, :cond_47

    const/4 v2, 0x0

    iput-object v2, v1, Lg/eek;->ai:Lg/gks;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    :cond_47
    const/4 v2, 0x0

    goto :goto_26

    :cond_48
    :goto_27
    return-void

    :cond_49
    move v10, v5

    move/from16 v5, v18

    goto/16 :goto_2

    :cond_4a
    new-instance v0, Lg/gck;

    const-string v1, "Live variable analysis reach iterations limit, blocks count: "

    invoke-static {v7, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final bg(Lg/hed;)V
    .locals 30

    move-object/from16 v0, p1

    sget-object v1, Lg/fuu;->NEW_ARRAY:Lg/fuu;

    invoke-static {v0, v1}, Lg/ddx;->b(Lg/hed;Lg/fuu;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_15

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    iget-object v7, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1a

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->NEW_ARRAY:Lg/hay;

    if-ne v11, v12, :cond_1

    sget-object v11, Lg/csv;->REMOVE:Lg/csv;

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-nez v11, :cond_1

    check-cast v10, Lg/dem;

    iget-object v11, v0, Lg/hed;->am:Lg/cci;

    iget-object v12, v11, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v10, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    invoke-static {v12, v13}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lg/ekh;

    if-nez v13, :cond_2

    :cond_1
    :goto_3
    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_12

    :cond_2
    check-cast v12, Lg/ekh;

    iget-wide v12, v12, Lg/ekh;->a:J

    long-to-int v13, v12

    if-nez v13, :cond_3

    goto :goto_3

    :cond_3
    iget-object v12, v10, Lg/dem;->a:Lg/cwx;

    invoke-virtual {v12}, Lg/cwx;->k()Lg/cwx;

    move-result-object v14

    invoke-virtual {v12}, Lg/cwx;->i()I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v14, Lg/cff;

    if-eqz v12, :cond_4

    div-int/lit8 v12, v13, 0x2

    goto :goto_4

    :cond_4
    move v12, v13

    :goto_4
    iget-object v15, v10, Lg/eek;->ai:Lg/gks;

    iget-object v2, v15, Lg/gks;->a:Lg/vm;

    iget-object v2, v2, Lg/vm;->d:Ljava/util/ArrayList;

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v12, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lg/gks;

    iget-object v2, v2, Lg/gsh;->ae:Lg/eek;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lg/eek;->ah:Lg/hay;

    move-object/from16 v18, v4

    sget-object v4, Lg/hay;->APUT:Lg/hay;

    if-ne v2, v4, :cond_18

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v17, 0x0

    move-object/from16 v19, v4

    move-object/from16 v4, v17

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 v20, v5

    move-object/from16 v5, v17

    check-cast v5, Lg/gks;

    iget-object v5, v5, Lg/gsh;->ae:Lg/eek;

    if-eqz v5, :cond_b

    move/from16 v21, v8

    iget-object v8, v5, Lg/eek;->ah:Lg/hay;

    move/from16 v22, v9

    sget-object v9, Lg/hay;->APUT:Lg/hay;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v15, v9}, Lg/gks;->x(Lg/gsh;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    move/from16 v16, v3

    :goto_7
    move-object v3, v10

    goto :goto_8

    :cond_7
    iget-object v8, v11, Lg/cci;->ab:Lg/dwg;

    move/from16 v16, v3

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-static {v8, v3}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Lg/ekh;

    if-nez v8, :cond_8

    goto/16 :goto_12

    :cond_8
    check-cast v3, Lg/ekh;

    move-object v8, v10

    iget-wide v9, v3, Lg/ekh;->a:J

    move-object v3, v8

    move-wide/from16 v23, v9

    int-to-long v8, v13

    cmp-long v10, v23, v8

    if-ltz v10, :cond_9

    goto/16 :goto_12

    :cond_9
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_b

    :cond_a
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_b
    move/from16 v16, v3

    move/from16 v21, v8

    move/from16 v22, v9

    goto :goto_7

    :goto_8
    if-nez v4, :cond_c

    move-object v10, v3

    move-object v4, v5

    :goto_9
    move/from16 v3, v16

    move/from16 v5, v20

    move/from16 v8, v21

    move/from16 v9, v22

    goto :goto_6

    :cond_c
    :goto_a
    move-object v10, v3

    goto :goto_9

    :cond_d
    move/from16 v16, v3

    move/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    move-object v3, v10

    :goto_b
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-ge v5, v12, :cond_e

    goto/16 :goto_12

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_f

    goto/16 :goto_12

    :cond_f
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_12

    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    invoke-virtual {v8, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v15}, Lg/ack;->m(Lg/gsh;Lg/gks;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_12

    :cond_12
    new-instance v5, Lg/fs;

    invoke-direct {v5, v13, v14}, Lg/fs;-><init>(ILg/cwx;)V

    invoke-virtual {v15}, Lg/gks;->z()Lg/gks;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v5, v3}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v5, v3}, Lg/ccm;->br(Lg/eek;)V

    invoke-virtual {v5, v3}, Lg/eek;->au(Lg/eek;)V

    iget v8, v3, Lg/eek;->ag:I

    iput v8, v5, Lg/eek;->ag:I

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v23, -0x1

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    move v15, v10

    const-wide/16 v9, 0x0

    const-wide/16 v25, 0x1

    if-eqz v15, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    cmp-long v17, v27, v23

    if-eqz v17, :cond_13

    :goto_d
    add-long v23, v23, v25

    cmp-long v17, v23, v27

    if-gez v17, :cond_13

    invoke-static {v9, v10, v14}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v12

    invoke-virtual {v5, v12}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_d

    :cond_13
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v10, Lg/ekh;

    if-eqz v15, :cond_14

    move-object v15, v10

    check-cast v15, Lg/ekh;

    invoke-virtual {v11, v15}, Lg/cci;->bo(Lg/ekh;)Lg/chf;

    move-result-object v15

    if-eqz v15, :cond_14

    new-instance v10, Lg/adz;

    sget-object v12, Lg/hay;->SGET:Lg/hay;

    move-object/from16 v19, v8

    invoke-interface {v15}, Lg/chf;->c()Lg/dsj;

    move-result-object v8

    move-object/from16 v29, v11

    const/4 v11, 0x0

    invoke-direct {v10, v12, v8, v11}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-static {v10}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v8

    invoke-static {v15, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    goto :goto_e

    :cond_14
    move-object/from16 v19, v8

    move-object/from16 v29, v11

    const/4 v11, 0x0

    invoke-virtual {v10}, Lg/gsh;->b()Lg/gsh;

    move-result-object v8

    :goto_e
    invoke-virtual {v5, v8}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v9}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    move-object/from16 v8, v19

    move-wide/from16 v23, v27

    move-object/from16 v11, v29

    const/4 v9, 0x2

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_f
    add-long v23, v23, v25

    int-to-long v11, v13

    cmp-long v8, v23, v11

    if-gez v8, :cond_16

    invoke-static {v9, v10, v14}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v8

    invoke-virtual {v5, v8}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_f

    :cond_16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v3}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    invoke-static {v7, v2}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v2

    if-eqz v4, :cond_17

    invoke-static {v7, v4}, Lg/con;->a(Ljava/util/List;Lg/eek;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_17
    invoke-virtual {v7, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v15, 0x1

    goto :goto_13

    :cond_18
    :goto_10
    move/from16 v16, v3

    move/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    move-object v3, v10

    move-object/from16 v29, v11

    goto :goto_11

    :cond_19
    move-object/from16 v18, v4

    goto :goto_10

    :goto_11
    move-object v10, v3

    move/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move/from16 v5, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v11, v29

    goto/16 :goto_5

    :goto_12
    const/4 v15, 0x0

    :goto_13
    or-int v5, v20, v15

    add-int/lit8 v9, v22, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v18

    move/from16 v8, v21

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1a
    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_14

    :cond_1b
    iget-object v2, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    invoke-static {v2, v1}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_14
    move/from16 v3, v16

    move-object/from16 v4, v18

    move/from16 v5, v20

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1c
    move/from16 v16, v3

    if-eqz v5, :cond_1e

    invoke-static {v0}, Lg/eak;->av(Lg/hed;)V

    add-int/lit8 v8, v16, 0x1

    const/16 v2, 0x64

    move/from16 v3, v16

    if-le v3, v2, :cond_1d

    const-string v1, "Reached limit for ReplaceNewArray iterations"

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-void

    :cond_1d
    move v3, v8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    :goto_15
    return-void
.end method

.method private final bh(Lg/dwg;)V
    .locals 0

    return-void
.end method

.method private final bi(Lg/hed;)V
    .locals 16

    move-object/from16 v0, p1

    sget-object v1, Lg/acq;->m:Lg/acq;

    iget-boolean v2, v0, Lg/hed;->ar:Z

    if-nez v2, :cond_2b

    iget-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_12

    :cond_0
    new-instance v2, Lg/bei;

    invoke-direct {v2, v0}, Lg/bei;-><init>(Lg/hed;)V

    iget-object v3, v0, Lg/hed;->aj:Lg/fza;

    invoke-virtual {v2, v3}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v3

    iput-object v3, v0, Lg/hed;->ao:Lg/eys;

    iget-object v3, v0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1c

    iget-object v3, v0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v2, Lg/bei;->e:Lg/ftm;

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/guv;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v7, v7, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/aea;

    iget-object v13, v12, Lg/aea;->i:Lg/fza;

    if-eqz v13, :cond_3

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lg/ffb;->be(Lg/fza;)Lg/fza;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "No exception handler block: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    sget-object v15, Lg/csv;->REMOVE:Lg/csv;

    iget-object v4, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v15}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, v12, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "No successors for splitter: "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-static {v0, v4, v14}, Lg/ffb;->z(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v15

    if-eqz v15, :cond_6

    if-eq v15, v4, :cond_6

    if-eq v15, v14, :cond_6

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aea;

    iget-object v9, v7, Lg/aea;->i:Lg/fza;

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    iget-object v10, v8, Lg/ftm;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->clear()V

    new-instance v10, Lg/bnp;

    invoke-direct {v10}, Lg/bnp;-><init>()V

    iput-object v10, v8, Lg/ftm;->b:Lg/bnp;

    iget-boolean v10, v7, Lg/aea;->b:Z

    if-eqz v10, :cond_b

    invoke-static {v9}, Lg/ffb;->be(Lg/fza;)Lg/fza;

    move-result-object v10

    goto :goto_4

    :cond_b
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-virtual {v8, v12}, Lg/ftm;->c(Lg/fza;)V

    goto :goto_3

    :cond_c
    move-object v10, v9

    :goto_4
    sget-object v12, Lg/csv;->REMOVE:Lg/csv;

    iget-object v13, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_2

    :cond_d
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v7}, Lg/ffb;->bu(Lg/hed;Lg/aea;)Lg/fza;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v10, v10, Lg/fza;->i:Ljava/util/BitSet;

    invoke-static {v0, v10}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {v0, v9}, Lg/hed;->bi(Lg/fza;)Lg/gcv;

    move-result-object v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    if-eqz v10, :cond_11

    invoke-static {v9, v13}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_11
    iget-object v14, v0, Lg/hed;->ao:Lg/eys;

    invoke-static {v13, v14}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v8, v13}, Lg/ftm;->c(Lg/fza;)V

    goto :goto_7

    :cond_12
    invoke-virtual {v2, v9}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v10

    iput-object v10, v7, Lg/aea;->d:Lg/eys;

    sget-object v10, Lg/acq;->bh:Lg/acq;

    iget-object v12, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v10}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v10

    check-cast v10, Lg/eng;

    if-nez v10, :cond_13

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Missing exception handler attribute for start block: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lg/ebh;->bs(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    iget-object v7, v7, Lg/aea;->d:Lg/eys;

    invoke-virtual {v7, v10}, Lg/lh;->m(Lg/eue;)V

    goto/16 :goto_2

    :cond_14
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v6, v0, Lg/hed;->ao:Lg/eys;

    invoke-static {v6, v4}, Lg/gs;->o(Lg/amj;Ljava/util/HashSet;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/guv;

    iget-object v7, v7, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aea;

    iget-object v9, v9, Lg/aea;->d:Lg/eys;

    if-eqz v9, :cond_16

    invoke-static {v9}, Lg/gs;->v(Lg/amj;)Lg/cih;

    move-result-object v10

    instance-of v11, v10, Lg/fza;

    if-eqz v11, :cond_17

    check-cast v10, Lg/fza;

    iget-object v10, v10, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_17
    invoke-static {v9, v4}, Lg/gs;->o(Lg/amj;Ljava/util/HashSet;)V

    goto :goto_8

    :cond_18
    invoke-interface {v6, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    goto :goto_a

    :cond_19
    new-instance v3, Lg/eys;

    iget-object v4, v0, Lg/hed;->ao:Lg/eys;

    invoke-direct {v3, v4}, Lg/eys;-><init>(Lg/cfm;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cih;

    instance-of v7, v6, Lg/fza;

    if-eqz v7, :cond_1a

    iget-object v7, v8, Lg/ftm;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->clear()V

    new-instance v7, Lg/bnp;

    invoke-direct {v7}, Lg/bnp;-><init>()V

    iput-object v7, v8, Lg/ftm;->b:Lg/bnp;

    invoke-virtual {v8, v3}, Lg/ftm;->e(Lg/bjk;)V

    check-cast v6, Lg/fza;

    invoke-virtual {v2, v6}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v6

    invoke-virtual {v3, v6}, Lg/eys;->h(Lg/amj;)V

    goto :goto_9

    :cond_1b
    :goto_a
    if-eqz v3, :cond_1c

    iget-object v2, v0, Lg/hed;->ao:Lg/eys;

    invoke-virtual {v2, v3}, Lg/eys;->h(Lg/amj;)V

    :cond_1c
    :goto_b
    iget-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/gpn;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lg/gpn;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/brj;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lg/brj;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v0}, Lg/eak;->av(Lg/hed;)V

    :cond_1d
    iget-boolean v2, v0, Lg/hed;->ar:Z

    if-nez v2, :cond_25

    iget-object v2, v0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_e

    :cond_1e
    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_c

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lg/fdq;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lg/fdq;-><init>(I)V

    invoke-static {v2, v1}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v1, v2

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_e

    :cond_20
    new-instance v2, Lg/aoi;

    invoke-direct {v2, v5, v1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    const/4 v3, 0x0

    :goto_d
    iget-object v4, v0, Lg/hed;->ao:Lg/eys;

    invoke-static {v0, v2, v4}, Lg/buj;->t(Lg/hed;Lg/avy;Lg/amj;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v6, v0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/aea;

    iget-object v4, v4, Lg/aea;->d:Lg/eys;

    invoke-static {v0, v2, v4}, Lg/buj;->t(Lg/hed;Lg/avy;Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_22
    add-int/lit8 v6, v3, 0x1

    if-gt v3, v1, :cond_24

    if-nez v4, :cond_23

    goto :goto_e

    :cond_23
    move v3, v6

    goto :goto_d

    :cond_24
    new-instance v2, Lg/gck;

    const-string v3, "Iterative traversal limit reached: limit: "

    const-string v4, ", visitor: "

    invoke-static {v1, v3, v4}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lg/aoi;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", blocks count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    :goto_e
    sget-object v1, Lg/enz;->b:Lg/enz;

    iget-object v2, v0, Lg/hed;->ao:Lg/eys;

    invoke-static {v0, v1, v2}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    invoke-static {v0}, Lg/eak;->s(Lg/hed;)V

    iget-object v1, v0, Lg/hed;->ax:Lg/gqc;

    iget v1, v1, Lg/gqc;->ab:I

    const v2, 0x20020

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    sget v1, Lg/ft;->a:I

    iget-object v1, v0, Lg/hed;->ao:Lg/eys;

    iget-object v2, v1, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lg/glw;

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/glw;

    iget-object v3, v2, Lg/glw;->h:Lg/eek;

    invoke-virtual {v3, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    iget-object v6, v0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v6}, Lg/gqc;->be()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lg/cly;

    if-eqz v6, :cond_27

    invoke-virtual {v4}, Lg/gsh;->am()Z

    move-result v7

    if-eqz v7, :cond_27

    if-eqz v6, :cond_26

    move-object v6, v4

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    goto :goto_f

    :cond_26
    const/4 v6, 0x0

    :goto_f
    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->CONST_CLASS:Lg/hay;

    if-ne v7, v8, :cond_27

    check-cast v6, Lg/dkd;

    iget-object v6, v6, Lg/dkd;->a:Lg/cwx;

    iget-object v7, v0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v7}, Lg/cci;->au()Lg/cwx;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_10

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In static synchronized method top region not synchronized by class const: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-void

    :cond_28
    invoke-virtual {v4}, Lg/gsh;->al()Z

    move-result v6

    if-eqz v6, :cond_2a

    :goto_10
    iget-object v1, v1, Lg/eys;->g:Ljava/util/ArrayList;

    iget-object v4, v2, Lg/glw;->g:Lg/eys;

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    iget-object v1, v2, Lg/glw;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    invoke-static {v0, v2}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_11

    :cond_29
    invoke-static {v0}, Lg/eak;->s(Lg/hed;)V

    return-void

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In synchronized method top region not synchronized by \'this\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_2b
    :goto_12
    return-void
.end method

.method public static e(Lg/bzm;Lg/gsh;Lg/gsh;Ljava/util/function/IntFunction;)Z
    .locals 4

    sget-object v0, Lg/acq;->be:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ayi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return v1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lg/bzm;->ad()Lg/bx;

    move-result-object p2

    iget-object p2, p2, Lg/bx;->c:[I

    array-length p2, p2

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Lg/bzm;->af(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lg/bzm;->ae(ILjava/lang/Object;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lg/ayi;->a:Lg/cfm;

    check-cast p0, Lg/eln;

    iget-object p0, p0, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/adk;

    iget-object p2, p2, Lg/adk;->a:Ljava/util/List;

    new-instance p3, Lg/afy;

    invoke-direct {p3, p1}, Lg/afy;-><init>(Ljava/util/HashMap;)V

    invoke-static {p2, p3}, Lj$/util/List$b;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lg/hed;[Lg/eek;II)V
    .locals 2

    :try_start_0
    aget-object p1, p1, p3

    sget-object v0, Lg/acq;->p:Lg/acq;

    new-instance v1, Lg/aef;

    invoke-direct {v1, p2, p3}, Lg/aef;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set jump: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Lg/hed;)Lg/fmz;
    .locals 8

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v3, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-le v5, v2, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->RETURN:Lg/hay;

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/cly;

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-virtual {v0}, Lg/eek;->_o()Lg/eek;

    move-result-object v0

    sget-object v1, Lg/csv;->WRAPPED:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->v(Lg/csv;)V

    invoke-static {p0, v0, v4}, Lg/eak;->ap(Lg/hed;Lg/eek;Z)Lg/fmz;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0, v0, v3}, Lg/eak;->ap(Lg/hed;Lg/eek;Z)Lg/fmz;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne v0, v2, :cond_12

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    iget-object v0, v0, Lg/eek;->ah:Lg/hay;

    sget-object v5, Lg/hay;->RETURN:Lg/hay;

    if-ne v0, v5, :cond_12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    iget-object v5, v1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lg/xf;->a:[I

    iget-object v7, v0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_10

    if-eq v6, v2, :cond_f

    const/4 v7, 0x3

    if-eq v6, v7, :cond_e

    const/4 v2, 0x4

    if-eq v6, v2, :cond_d

    const/4 v2, 0x5

    if-eq v6, v2, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    iget-object v2, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lg/eek;->aj:Ljava/util/List;

    if-ne v1, v2, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_a

    goto/16 :goto_3

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v4, Lg/gks;

    check-cast v5, Lg/gsh;

    invoke-virtual {v5, v4}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_3

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_12

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2

    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_12

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2

    :cond_f
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    iget-object v2, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2

    :cond_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_12

    invoke-virtual {v1, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    iget-object v2, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    invoke-virtual {v1, v2}, Lg/gsh;->aq(Lg/gks;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_2
    invoke-static {p0, v0, v3}, Lg/eak;->ap(Lg/hed;Lg/eek;Z)Lg/fmz;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lg/cci;)V
    .locals 5

    iget-object v0, p0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cci;

    invoke-static {v1}, Lg/eak;->l(Lg/cci;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    iget-object v1, p0, Lg/cci;->i:Ljava/util/List;

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v2, p0, Lg/cci;->ag:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-static {v3}, Lj$/util/stream/Stream$a;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/brj;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lg/brj;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/brj;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lg/brj;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/dbm;

    invoke-direct {v2, v3}, Lg/dbm;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->min()Lj$/util/OptionalInt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lj$/util/OptionalInt;->orElse(I)I

    move-result v1

    if-eqz v1, :cond_1

    sub-int/2addr v1, v0

    iput v1, p0, Lg/ccm;->bp:I

    :cond_1
    return-void
.end method

.method public static m(Lg/hed;Lg/gks;Lg/eek;Lg/fza;)Z
    .locals 4

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    iget-object p1, p1, Lg/vm;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gks;

    iget-object v1, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_2

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p3, p2}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static n(Lg/cci;Ljava/util/LinkedHashSet;Ljava/util/HashSet;)V
    .locals 4

    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, p0, Lg/cci;->af:Lg/cwx;

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2, v1}, Lg/eak;->aj(Lg/dwg;Ljava/util/LinkedHashSet;Ljava/util/HashSet;Lg/cwx;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-static {v0, p1, p2, v3}, Lg/eak;->aj(Lg/dwg;Ljava/util/LinkedHashSet;Ljava/util/HashSet;Lg/cwx;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lg/cci;->au()Lg/cwx;

    move-result-object p0

    invoke-virtual {p0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static o(Lg/fza;)Z
    .locals 3

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/eek;

    iget-object p0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v0, Lg/hay;->IF:Lg/hay;

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static p(Lg/cci;)Z
    .locals 1

    iget-object v0, p0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Lg/hed;Lg/ers;)Lg/cwx;
    .locals 3

    invoke-interface {p1}, Lg/ers;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    invoke-interface {p1}, Lg/ers;->k()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lg/epz;

    invoke-direct {v1, p1}, Lg/epz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/epz;->h()Lg/cwx;

    move-result-object v1

    iget-object v2, p0, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lg/emr;->q(Lg/hed;Lg/cwx;)V

    invoke-static {p0, v0, v1}, Lg/eak;->x(Lg/hed;Lg/cwx;Lg/cwx;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Can\'t parse signature for local variable: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static r(Lg/hed;)V
    .locals 5

    iget-object v0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/vm;

    invoke-virtual {v1}, Lg/vm;->i()Z

    move-result v2

    iget-object v3, v1, Lg/vm;->h:Lg/ffr;

    if-nez v2, :cond_0

    sget-object v2, Lg/cwx;->ad:Lg/gnh;

    iput-object v2, v3, Lg/ffr;->f:Ljava/lang/Object;

    iget-object v4, v1, Lg/vm;->b:Lg/ejb;

    if-eqz v4, :cond_0

    iput-object v2, v4, Lg/ejb;->e:Lg/cwx;

    :cond_0
    iget-object v2, v3, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    iput-object v2, v1, Lg/vm;->b:Lg/ejb;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lg/eak;->ah(Lg/hed;)V

    return-void
.end method

.method public static s(Lg/hed;)V
    .locals 2

    iget-boolean v0, p0, Lg/hed;->ar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/eak;->c:Lg/enz;

    iget-object v1, p0, Lg/hed;->ao:Lg/eys;

    invoke-static {p0, v0, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static t(Lg/hed;Ljava/util/List;Ljava/util/HashSet;Z)Lg/fpr;
    .locals 8

    sget-object v0, Lg/acq;->h:Lg/acq;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/brj;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg/brj;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ebp;

    instance-of v5, v3, Lg/hed;

    if-eqz v5, :cond_0

    check-cast v3, Lg/hed;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fpr;

    if-eqz v3, :cond_2

    iget-object p0, v3, Lg/fpr;->f:Ljava/util/SortedSet;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v5

    check-cast v5, Lg/fpr;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lg/fpr;->f:Ljava/util/SortedSet;

    if-eq p0, v5, :cond_5

    invoke-interface {p0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    if-eqz v1, :cond_8

    sget-object v6, Lg/csv;->DONT_RENAME:Lg/csv;

    invoke-virtual {v5, v6}, Lg/lh;->w(Lg/csv;)V

    :cond_8
    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_a

    iget-object v6, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/fpr;

    if-eqz v6, :cond_a

    iput-object p0, v6, Lg/fpr;->f:Ljava/util/SortedSet;

    goto :goto_4

    :cond_a
    new-instance v6, Lg/fpr;

    sget-object v7, Lg/evh;->a:Ljava/lang/String;

    if-nez v3, :cond_b

    move-object v7, p1

    goto :goto_5

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_c

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_c
    invoke-interface {p1, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    :goto_5
    invoke-direct {v6, v7, p0, p2}, Lg/fpr;-><init>(Ljava/util/List;Ljava/util/SortedSet;Ljava/util/HashSet;)V

    invoke-virtual {v5, v6}, Lg/lh;->m(Lg/eue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    new-instance p3, Lg/fpr;

    invoke-direct {p3, p1, p0, p2}, Lg/fpr;-><init>(Ljava/util/List;Ljava/util/SortedSet;Ljava/util/HashSet;)V

    return-object p3
.end method

.method public static u(Lg/cci;Ljava/util/ArrayList;)V
    .locals 8

    new-instance v0, Lg/fov;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/fov;-><init>(I)V

    invoke-static {p1, v0}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lg/ej;

    iget-object v7, v5, Lg/ej;->b:Lg/adz;

    iget-object v1, v7, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->SPUT:Lg/hay;

    if-ne v1, v2, :cond_0

    sget-object v1, Lg/hay;->SGET:Lg/hay;

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_0
    sget-object v1, Lg/hay;->IGET:Lg/hay;

    goto :goto_1

    :goto_2
    new-instance v1, Lg/euy;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lg/euy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    move-object v3, p0

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    const/4 p1, -0x1

    if-eqz p0, :cond_2

    goto/16 :goto_6

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcd;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    if-ne v2, p1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-ne v2, p1, :cond_7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hcd;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hcd;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, p1, :cond_9

    invoke-virtual {p0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    if-le v6, v2, :cond_8

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    move-object v0, p0

    :goto_6
    invoke-virtual {v3}, Lg/cci;->av()V

    iget-object p0, v3, Lg/cci;->ag:Ljava/util/List;

    invoke-static {p0, v0}, Ljava/util/Collections;->indexOfSubList(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    if-eq v1, p1, :cond_b

    return-void

    :cond_b
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static v(Lg/hed;Lg/fza;I)Lg/abi;
    .locals 3

    sget-object v0, Lg/acq;->am:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/czc;

    if-nez v0, :cond_0

    new-instance v0, Lg/czc;

    invoke-direct {v0}, Lg/czc;-><init>()V

    invoke-virtual {p1, v0}, Lg/lh;->m(Lg/eue;)V

    :cond_0
    iget-object v1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/hed;->aj:Lg/fza;

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lg/hed;->z:Lg/gks;

    if-eqz v2, :cond_1

    iget v2, v2, Lg/gks;->e:I

    if-ne v2, p2, :cond_1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lg/hed;->az()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    iget v2, v2, Lg/gks;->e:I

    if-ne v2, p2, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Lg/abi;

    invoke-direct {p0, v1}, Lg/abi;-><init>(I)V

    sget-object v1, Lg/cwx;->ad:Lg/gnh;

    sget-object v2, Lg/gsh;->ad:Lg/dba;

    new-instance v2, Lg/gks;

    invoke-direct {v2, p2, v1}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, v2}, Lg/eek;->ax(Lg/gks;)V

    sget-object p2, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {p0, p2}, Lg/lh;->w(Lg/csv;)V

    sget-object p2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p0, p2}, Lg/lh;->w(Lg/csv;)V

    iget-object p2, v0, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p1, Lg/fza;->y:I

    iput p1, p0, Lg/eek;->ag:I

    return-object p0
.end method

.method public static w(Lg/hed;)Lg/fmz;
    .locals 2

    :try_start_0
    sget-object v0, Lg/acq;->g:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/fmz;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0}, Lg/eak;->i(Lg/hed;)Lg/fmz;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Method inline analysis failed"

    invoke-virtual {p0, v1, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-object v0, Lg/fmz;->a:Lg/fmz;

    invoke-virtual {p0, v0}, Lg/lh;->m(Lg/eue;)V

    return-object v0
.end method

.method public static x(Lg/hed;Lg/cwx;Lg/cwx;)Z
    .locals 2

    invoke-virtual {p2}, Lg/cwx;->e()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->bm()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lg/cwx;->e()Lg/cwx;

    move-result-object v1

    invoke-virtual {v1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generic types in debug info not equals: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of p0, v0, Lg/btl;

    return p0
.end method

.method public static y(Lg/vm;)Z
    .locals 8

    iget-object p0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget-object v5, v3, Lg/gsh;->ae:Lg/eek;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->MOVE:Lg/hay;

    if-ne v6, v7, :cond_2

    iget-object v3, v5, Lg/eek;->ai:Lg/gks;

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    invoke-static {v3}, Lg/eak;->y(Lg/vm;)Z

    move-result v4

    goto :goto_2

    :cond_2
    sget-object v7, Lg/tz;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v5, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_1

    :pswitch_2
    check-cast v5, Lg/hdc;

    invoke-virtual {v5}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v5

    if-eq v5, v3, :cond_3

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    sget-object v5, Lg/csv;->DONT_INLINE_CONST:Lg/csv;

    invoke-virtual {v3, v5}, Lg/lh;->w(Lg/csv;)V

    :goto_2
    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne v2, p0, :cond_5

    return v4

    :cond_5
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static z(Lg/eek;)V
    .locals 5

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->ARITH:Lg/hay;

    if-ne v0, v1, :cond_3

    check-cast p0, Lg/ame;

    iget-object v0, p0, Lg/ame;->d:Lg/bvj;

    sget-object v1, Lg/bvj;->ADD:Lg/bvj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lg/bvj;->MUL:Lg/bvj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lg/bvj;->AND:Lg/bvj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lg/bvj;->OR:Lg/bvj;

    if-ne v0, v1, :cond_7

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lg/cly;

    if-eqz v3, :cond_2

    check-cast v2, Lg/cly;

    iget-object v2, v2, Lg/cly;->a:Lg/eek;

    iget-object v3, v2, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->ARITH:Lg/hay;

    if-ne v3, v4, :cond_1

    move-object v3, v2

    check-cast v3, Lg/ame;

    iget-object v3, v3, Lg/ame;->d:Lg/bvj;

    if-ne v3, v0, :cond_1

    sget-object v3, Lg/csv;->DONT_WRAP:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    :cond_1
    invoke-static {v2}, Lg/eak;->z(Lg/eek;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lg/hay;->TERNARY:Lg/hay;

    if-ne v0, v1, :cond_5

    move-object v0, p0

    check-cast v0, Lg/dwk;

    iget-object v0, v0, Lg/dwk;->a:Lg/eii;

    iget-object v1, v0, Lg/eii;->a:Lg/ath;

    iget-object v0, v0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eii;

    iget-object v3, v2, Lg/eii;->a:Lg/ath;

    if-ne v3, v1, :cond_4

    sget-object v3, Lg/csv;->DONT_WRAP:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/cly;

    if-eqz v1, :cond_6

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-static {v0}, Lg/eak;->z(Lg/eek;)V

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public bd(Lg/hed;Lg/ghr;)V
    .locals 3

    sget-object v0, Lg/fws;->b:[I

    iget-object v1, p2, Lg/ghr;->b:Lg/dnd;

    iget-object p2, p2, Lg/ghr;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    check-cast p2, Ljava/util/List;

    new-instance v0, Lg/bwe;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/bwe;-><init>(Lg/eak;Lg/hed;I)V

    invoke-static {p2, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    check-cast p2, Lg/fpa;

    iget-object p2, p2, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Lg/jb;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lg/jb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p2, v0}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void

    :cond_2
    instance-of v0, p2, Lg/cba;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    check-cast p2, Lg/cba;

    invoke-static {v0, p2}, Lg/dsj;->f(Lg/dwg;Lg/cba;)Lg/dsj;

    move-result-object p2

    goto :goto_0

    :cond_3
    check-cast p2, Lg/dsj;

    :goto_0
    iget-object v0, p1, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v0, p2}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object p2

    if-eqz p2, :cond_6

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lg/hcd;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iput-object v0, p2, Lg/hcd;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public be(Lg/hed;Lg/ebh;)V
    .locals 3

    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object p2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p2

    check-cast p2, Lg/ks;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p2, Lg/ks;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fpa;

    iget-object v1, v0, Lg/fpa;->a:Lg/any;

    sget-object v2, Lg/any;->SYSTEM:Lg/any;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ghr;

    invoke-virtual {p0, p1, v1}, Lg/eak;->bd(Lg/hed;Lg/ghr;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/eak;->d:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "SourceFileRename"

    return-object v0

    :sswitch_1
    const-string v0, "RegionMakerVisitor"

    return-object v0

    :sswitch_2
    const-string v0, "PrepareForCodeGen"

    return-object v0

    :sswitch_3
    const-string v0, "OverrideMethodVisitor"

    return-object v0

    :sswitch_4
    const-string v0, "FinishTypeInference"

    return-object v0

    :sswitch_5
    const-string v0, "DeobfuscatorVisitor"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_5
        0x10 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public h(Lg/dwg;)V
    .locals 4

    iget v0, p0, Lg/eak;->d:I

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    iget-object v0, v0, Lg/ur;->o:Lg/dyx;

    sget-object v1, Lg/dyx;->JSON:Lg/dyx;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lg/atj;->c(Lg/dwg;)V

    :cond_0
    return-void

    :sswitch_2
    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :sswitch_3
    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    iget-boolean v0, v0, Lg/ur;->an:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.R"

    invoke-static {v0}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/dwg;->f:Lg/dxb;

    sget-object v1, Lg/dqf;->a:Ljava/util/HashMap;

    new-instance v2, Lg/jb;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0}, Lg/jb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0xd -> :sswitch_2
        0xf -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public j(Lg/hed;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lg/eak;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lg/eak;->bf(Lg/hed;)V

    return-void

    :pswitch_2
    invoke-virtual {v2}, Lg/hed;->bg()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/dhp;

    invoke-direct {v0, v3}, Lg/bgf;-><init>(I)V

    iget-object v3, v2, Lg/hed;->ao:Lg/eys;

    invoke-static {v2, v0, v3}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    :cond_0
    return-void

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lg/eak;->bg(Lg/hed;)V

    return-void

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lg/eak;->bi(Lg/hed;)V

    return-void

    :pswitch_5
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, v2, Lg/hed;->an:[Lg/eek;

    const/4 v3, 0x0

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_e

    aget-object v6, v0, v3

    if-nez v6, :cond_2

    goto/16 :goto_8

    :cond_2
    sget-object v7, Lg/bga;->a:[I

    iget-object v8, v6, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_6
    check-cast v6, Lg/og;

    iget v7, v6, Lg/og;->a:I

    array-length v8, v0

    move v9, v7

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v0, v9

    if-eqz v10, :cond_3

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->NOP:Lg/hay;

    if-eq v11, v12, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v4

    :goto_2
    if-eqz v10, :cond_5

    iget-object v8, v10, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->FILL_ARRAY_DATA:Lg/hay;

    if-ne v8, v9, :cond_5

    move-object v7, v10

    check-cast v7, Lg/mt;

    iput-object v7, v6, Lg/og;->_ao:Lg/mt;

    iget v6, v10, Lg/eek;->ag:I

    aput-object v4, v0, v6

    goto/16 :goto_8

    :cond_5
    new-instance v0, Lg/gck;

    invoke-static {v7}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Payload for fill-array not found at "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move-object v7, v6

    check-cast v7, Lg/fs;

    iget-object v7, v7, Lg/fs;->a:Lg/cwx;

    sget-object v8, Lg/cwx;->an:Lg/cff;

    new-instance v8, Lg/aoe;

    invoke-direct {v8, v7}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-static {v0, v3, v6, v8}, Lg/eak;->aw([Lg/eek;ILg/eek;Lg/cwx;)V

    goto/16 :goto_8

    :pswitch_8
    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    if-nez v7, :cond_d

    sget-object v7, Lg/cwx;->al:Lg/aog;

    invoke-static {v0, v3, v6, v7}, Lg/eak;->aw([Lg/eek;ILg/eek;Lg/cwx;)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v7, v6, Lg/eek;->ai:Lg/gks;

    if-nez v7, :cond_d

    move-object v7, v6

    check-cast v7, Lg/gif;

    invoke-virtual {v7}, Lg/gif;->ac()Lg/ayu;

    move-result-object v7

    iget-object v7, v7, Lg/ayu;->g:Lg/cwx;

    invoke-static {v0, v3, v6, v7}, Lg/eak;->aw([Lg/eek;ILg/eek;Lg/cwx;)V

    goto/16 :goto_8

    :pswitch_a
    check-cast v6, Lg/xi;

    iget v6, v6, Lg/xi;->a:I

    invoke-static {v2, v0, v3, v6}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    invoke-static {v0, v3}, Lg/eak;->ba([Lg/eek;I)I

    move-result v6

    if-eq v6, v8, :cond_d

    invoke-static {v2, v0, v3, v6}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    goto/16 :goto_8

    :pswitch_b
    check-cast v6, Lg/dfy;

    invoke-virtual {v6}, Lg/dfy;->ad()I

    move-result v6

    invoke-static {v2, v0, v3, v6}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    goto/16 :goto_8

    :pswitch_c
    invoke-static {v0, v3}, Lg/eak;->ba([Lg/eek;I)I

    move-result v7

    if-eq v7, v8, :cond_6

    invoke-static {v2, v0, v3, v7}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    :cond_6
    check-cast v6, Lg/bgw;

    invoke-virtual {v6}, Lg/bgw;->ad()I

    move-result v6

    invoke-static {v2, v0, v3, v6}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    goto/16 :goto_8

    :pswitch_d
    check-cast v6, Lg/bzm;

    iget-object v7, v6, Lg/bzm;->d:Lg/bx;

    if-nez v7, :cond_b

    invoke-static {v0, v3}, Lg/eak;->ba([Lg/eek;I)I

    move-result v7

    iget v9, v6, Lg/bzm;->a:I

    array-length v10, v0

    move v11, v9

    :goto_3
    if-ge v11, v10, :cond_8

    aget-object v12, v0, v11

    if-eqz v12, :cond_7

    iget-object v13, v12, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->NOP:Lg/hay;

    if-eq v13, v14, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    move-object v12, v4

    :goto_4
    if-eqz v12, :cond_a

    iget-object v10, v12, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->SWITCH_DATA:Lg/hay;

    if-ne v10, v11, :cond_a

    move-object v9, v12

    check-cast v9, Lg/bx;

    iget v10, v9, Lg/bx;->a:I

    iget-object v11, v9, Lg/bx;->b:[I

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v10, :cond_9

    aget v14, v11, v13

    add-int/2addr v14, v3

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    iput-object v9, v6, Lg/bzm;->d:Lg/bx;

    iput v7, v6, Lg/bzm;->x:I

    iget v7, v12, Lg/eek;->ag:I

    aput-object v4, v0, v7

    goto :goto_6

    :cond_a
    new-instance v0, Lg/gck;

    invoke-static {v9}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Payload for switch not found at "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    iget v7, v6, Lg/bzm;->x:I

    if-eq v7, v8, :cond_c

    invoke-static {v2, v0, v3, v7}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    :cond_c
    invoke-virtual {v6}, Lg/bzm;->ad()Lg/bx;

    move-result-object v6

    iget-object v6, v6, Lg/bx;->b:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_d

    aget v9, v6, v8

    invoke-static {v2, v0, v3, v9}, Lg/eak;->g(Lg/hed;[Lg/eek;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    :goto_9
    return-void

    :pswitch_e
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_f

    goto/16 :goto_19

    :cond_f
    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    sget-object v8, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v9, v7, Lg/lh;->l:Lg/sm;

    iget-object v7, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    sget-object v10, Lg/fws;->a:[I

    iget-object v11, v9, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_2

    goto :goto_b

    :pswitch_f
    iget-object v10, v9, Lg/eek;->ai:Lg/gks;

    iget-object v11, v10, Lg/gks;->a:Lg/vm;

    iget-object v11, v11, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v9, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v10}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    instance-of v11, v9, Lg/ehh;

    if-nez v11, :cond_13

    goto :goto_c

    :cond_13
    check-cast v9, Lg/ehh;

    invoke-interface {v9}, Lg/ehh;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :pswitch_10
    check-cast v9, Lg/eew;

    iget-object v9, v9, Lg/eew;->y:Lg/dkz;

    sget-object v10, Lg/dkz;->SELF:Lg/dkz;

    if-ne v9, v10, :cond_15

    const/4 v9, 0x1

    goto :goto_e

    :cond_15
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :pswitch_11
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_18

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    iget-object v10, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->MOVE:Lg/hay;

    if-ne v10, v11, :cond_17

    invoke-virtual {v9, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v10, Lg/cly;

    if-eqz v10, :cond_17

    invoke-virtual {v9, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    check-cast v10, Lg/cly;

    iget-object v10, v10, Lg/cly;->a:Lg/eek;

    iget-object v11, v9, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v10, v11}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v10, v9}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v10, v9}, Lg/ccm;->br(Lg/eek;)V

    invoke-virtual {v7, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    invoke-static {v9}, Lg/eak;->z(Lg/eek;)V

    goto :goto_10

    :cond_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    iget-object v10, v9, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->ARITH:Lg/hay;

    if-ne v10, v11, :cond_1a

    sget-object v10, Lg/csv;->ARITH_ONEARG:Lg/csv;

    iget-object v11, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-nez v11, :cond_1a

    sget-object v11, Lg/csv;->DECLARE_VAR:Lg/csv;

    iget-object v12, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-nez v11, :cond_1a

    iget-object v11, v9, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v9, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    invoke-virtual {v11, v12}, Lg/gks;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    const/4 v11, 0x1

    goto :goto_12

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v12, Lg/gks;

    if-eqz v13, :cond_1c

    check-cast v12, Lg/gks;

    invoke-virtual {v11, v12}, Lg/gks;->y(Lg/gks;)Z

    move-result v11

    goto :goto_12

    :cond_1c
    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_1a

    iput-object v4, v9, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v9, v10}, Lg/lh;->w(Lg/csv;)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    new-instance v10, Lg/esk;

    const/16 v11, 0x16

    invoke-direct {v10, v11}, Lg/esk;-><init>(I)V

    invoke-virtual {v9, v10}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    goto :goto_13

    :cond_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    sget-object v9, Lg/fws;->a:[I

    iget-object v10, v8, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/16 v10, 0xd

    if-eq v9, v10, :cond_20

    const/16 v10, 0xe

    if-eq v9, v10, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {v8, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-static {v2, v8}, Lg/eak;->ax(Lg/hed;Lg/gsh;)V

    goto :goto_14

    :cond_20
    check-cast v8, Lg/hdc;

    invoke-virtual {v8}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v8

    invoke-static {v2, v8}, Lg/eak;->ax(Lg/hed;Lg/gsh;)V

    goto :goto_14

    :cond_21
    invoke-virtual {v2}, Lg/hed;->bk()Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_18

    :cond_22
    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    iget-object v7, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v9, v10, :cond_24

    check-cast v8, Lg/eew;

    invoke-virtual {v8}, Lg/eew;->ab()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v8, Lg/eew;->y:Lg/dkz;

    sget-object v7, Lg/dkz;->THIS:Lg/dkz;

    if-ne v0, v7, :cond_25

    const/4 v0, 0x1

    goto :goto_15

    :cond_25
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_27

    :cond_26
    move-object v4, v8

    :cond_27
    if-eqz v4, :cond_33

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v7, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_18

    :cond_28
    iget-object v0, v2, Lg/hed;->aj:Lg/fza;

    invoke-static {v0}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v0

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_29

    goto :goto_17

    :cond_29
    :goto_16
    const/4 v6, 0x0

    goto :goto_17

    :cond_2a
    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v2, v4, v0}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v7, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v4, :cond_2b

    goto :goto_16

    :cond_2b
    iget-object v7, v2, Lg/hed;->aj:Lg/fza;

    invoke-static {v7, v0}, Lg/ffb;->x(Lg/fza;Lg/fza;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v9, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2c

    if-eq v8, v0, :cond_2c

    goto :goto_16

    :cond_2d
    :goto_17
    iget-object v0, v2, Lg/hed;->ao:Lg/eys;

    sget-object v7, Lg/acq;->l:Lg/acq;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v7}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/cug;

    if-eqz v6, :cond_2e

    if-nez v0, :cond_2e

    goto/16 :goto_18

    :cond_2e
    iget-object v0, v4, Lg/eew;->y:Lg/dkz;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v2, v4, v7}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v7

    if-nez v7, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to move "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instruction to top"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/ebh;->bs(Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    if-nez v6, :cond_31

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v6}, Lg/eek;->h(Ljava/util/Collection;)V

    iget-object v8, v2, Lg/hed;->z:Lg/gks;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lg/hed;->az()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lg/bbm;

    invoke-direct {v9, v6, v3}, Lg/bbm;-><init>(Ljava/util/HashSet;I)V

    invoke-static {v8, v9}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    const-string v0, "Illegal instructions before constructor call"

    invoke-virtual {v2, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_18

    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' call moved to the top of the method (can break code semantics)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_31
    invoke-static {v7, v4}, Lg/con;->b(Lg/fza;Lg/eek;)V

    iget-object v0, v2, Lg/hed;->ao:Lg/eys;

    iget-object v0, v0, Lg/eys;->g:Ljava/util/ArrayList;

    new-instance v3, Lg/gqu;

    invoke-direct {v3, v4}, Lg/gqu;-><init>(Lg/eek;)V

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_18

    :cond_32
    new-instance v0, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insn not found in method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_18
    invoke-virtual {v1, v2, v2}, Lg/eak;->be(Lg/hed;Lg/ebh;)V

    :goto_19
    return-void

    :pswitch_12
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_34

    goto :goto_1a

    :cond_34
    invoke-static {v2}, Lg/eak;->ao(Lg/hed;)V

    :goto_1a
    return-void

    :pswitch_13
    invoke-static {v2}, Lg/eak;->w(Lg/hed;)Lg/fmz;

    return-void

    :pswitch_14
    invoke-static {v2}, Lg/eak;->ah(Lg/hed;)V

    return-void

    :pswitch_15
    iget-boolean v0, v2, Lg/hed;->ar:Z

    iget-object v7, v2, Lg/hed;->am:Lg/cci;

    if-eqz v0, :cond_35

    goto/16 :goto_25

    :cond_35
    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    iget-object v9, v9, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->SWITCH:Lg/hay;

    if-ne v11, v12, :cond_4a

    sget-object v11, Lg/csv;->REMOVE:Lg/csv;

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-nez v11, :cond_4a

    check-cast v10, Lg/bzm;

    invoke-virtual {v10, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Lg/cly;

    if-nez v12, :cond_37

    goto/16 :goto_24

    :cond_37
    move-object v12, v11

    check-cast v12, Lg/cly;

    iget-object v12, v12, Lg/cly;->a:Lg/eek;

    sget-object v13, Lg/cun;->a:[I

    iget-object v14, v12, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v6, :cond_40

    if-eq v13, v3, :cond_38

    goto/16 :goto_24

    :cond_38
    check-cast v12, Lg/hdc;

    iget-object v13, v12, Lg/hdc;->ad:Lg/ayu;

    iget-object v13, v13, Lg/ayu;->e:Ljava/lang/String;

    const-string v14, "ordinal()I"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39

    goto/16 :goto_24

    :cond_39
    invoke-virtual {v12, v5}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    iget-object v13, v7, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v12}, Lg/flv;->j()Lg/cwx;

    move-result-object v14

    invoke-virtual {v13, v14}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v13

    if-nez v13, :cond_3a

    goto/16 :goto_24

    :cond_3a
    sget-object v14, Lg/acq;->k:Lg/acq;

    iget-object v13, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v14}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v13

    check-cast v13, Lg/afq;

    if-nez v13, :cond_3b

    goto/16 :goto_24

    :cond_3b
    iget-object v13, v13, Lg/afq;->a:Ljava/util/List;

    invoke-virtual {v10}, Lg/bzm;->ad()Lg/bx;

    move-result-object v14

    iget-object v14, v14, Lg/bx;->c:[I

    array-length v14, v14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v14, :cond_3c

    move-object v15, v4

    goto :goto_1d

    :cond_3c
    new-array v15, v14, [Lg/hcd;

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v14, :cond_3e

    invoke-virtual {v10, v3}, Lg/bzm;->af(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_3d

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :try_start_0
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fjd;

    iget-object v6, v6, Lg/fjd;->a:Lg/hcd;

    aput-object v6, v15, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_1c

    :catch_0
    nop

    :cond_3d
    const/4 v15, 0x0

    :cond_3e
    :goto_1d
    if-nez v15, :cond_3f

    const/4 v3, 0x0

    goto :goto_1e

    :cond_3f
    new-instance v3, Lg/vx;

    invoke-direct {v3, v15}, Lg/vx;-><init>([Lg/hcd;)V

    invoke-static {v10, v11, v12, v3}, Lg/eak;->e(Lg/bzm;Lg/gsh;Lg/gsh;Ljava/util/function/IntFunction;)Z

    move-result v3

    :goto_1e
    move v5, v3

    goto/16 :goto_24

    :cond_40
    iget-object v3, v7, Lg/cci;->ab:Lg/dwg;

    invoke-static {v3, v12}, Lg/eak;->as(Lg/dwg;Lg/eek;)Lg/clx;

    move-result-object v3

    if-nez v3, :cond_41

    goto/16 :goto_23

    :cond_41
    iget-object v4, v3, Lg/clx;->c:Ljava/lang/Object;

    check-cast v4, Lg/hcd;

    iget-object v6, v4, Lg/hcd;->f:Lg/cci;

    iget-object v3, v3, Lg/clx;->e:Ljava/lang/Object;

    check-cast v3, Lg/gsh;

    sget-object v12, Lg/acq;->d:Lg/acq;

    iget-object v13, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v12

    check-cast v12, Lg/ffv;

    if-nez v12, :cond_42

    :goto_1f
    const/4 v12, 0x0

    goto :goto_20

    :cond_42
    iget-object v12, v12, Lg/ffv;->a:Ljava/util/HashMap;

    if-nez v12, :cond_43

    goto :goto_1f

    :cond_43
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/des;

    :goto_20
    if-nez v12, :cond_44

    goto :goto_23

    :cond_44
    invoke-virtual {v10}, Lg/bzm;->ad()Lg/bx;

    move-result-object v13

    iget-object v13, v13, Lg/bx;->c:[I

    array-length v13, v13

    const/4 v14, 0x0

    :goto_21
    if-ge v14, v13, :cond_46

    invoke-virtual {v10, v14}, Lg/bzm;->af(I)Ljava/lang/Object;

    move-result-object v15

    iget-object v5, v12, Lg/des;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_45

    goto :goto_23

    :cond_45
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_21

    :cond_46
    new-instance v5, Lg/eyi;

    invoke-direct {v5, v12, v10}, Lg/eyi;-><init>(Lg/des;Lg/bzm;)V

    invoke-static {v10, v11, v3, v5}, Lg/eak;->e(Lg/bzm;Lg/gsh;Lg/gsh;Ljava/util/function/IntFunction;)Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v4, v3}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v6}, Lg/cci;->av()V

    iget-object v3, v6, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hcd;

    iget-object v5, v4, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v5}, Lg/gqc;->bb()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual {v5}, Lg/gqc;->be()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual {v5}, Lg/gqc;->ae()Z

    move-result v5

    if-eqz v5, :cond_47

    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-nez v4, :cond_47

    :goto_22
    const/4 v5, 0x1

    goto :goto_24

    :cond_48
    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v6, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_22

    :cond_49
    :goto_23
    const/4 v5, 0x0

    :goto_24
    or-int v3, v8, v5

    move v8, v3

    :cond_4a
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1b

    :cond_4b
    if-eqz v8, :cond_4c

    invoke-static {v2}, Lg/eak;->av(Lg/hed;)V

    :cond_4c
    :goto_25
    return-void

    :pswitch_16
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-nez v0, :cond_4e

    iget-object v0, v2, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_26

    :cond_4d
    iget-object v0, v2, Lg/hed;->at:Ljava/util/List;

    new-instance v3, Lg/bra;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {v0, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_4e
    :goto_26
    return-void

    :pswitch_17
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_4f

    goto :goto_29

    :cond_4f
    iget-object v0, v2, Lg/hed;->an:[Lg/eek;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v2, :cond_52

    aget-object v3, v0, v5

    if-nez v3, :cond_50

    goto :goto_28

    :cond_50
    sget-object v4, Lg/acq;->al:Lg/acq;

    iget-object v6, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v6

    check-cast v6, Lg/coe;

    if-eqz v6, :cond_51

    sget-object v6, Lg/jg;->a:[I

    iget-object v7, v3, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    goto :goto_28

    :pswitch_18
    invoke-virtual {v3, v4}, Lg/lh;->u(Lg/fky;)V

    :cond_51
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_52
    :goto_29
    return-void

    :pswitch_19
    :try_start_1
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_53

    const/4 v4, 0x0

    goto :goto_2a

    :cond_53
    iget-object v0, v2, Lg/hed;->ab:Lg/atc;

    invoke-interface {v0}, Lg/atc;->m()Lg/gtb;

    move-result-object v4

    :goto_2a
    if-eqz v4, :cond_54

    invoke-static {v2, v4}, Lg/eak;->bc(Lg/hed;Lg/gtb;)V
    :try_end_1
    .catch Lg/gqp; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2d

    :catch_1
    move-exception v0

    goto :goto_2b

    :catch_2
    move-exception v0

    goto :goto_2c

    :goto_2b
    const-string v3, "Failed to parse debug info"

    invoke-virtual {v2, v3, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_54
    :goto_2d
    return-void

    :pswitch_1a
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_55

    goto/16 :goto_3e

    :cond_55
    new-instance v0, Lg/fpd;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lg/fpd;-><init>(Lg/hed;I)V

    iget-object v3, v2, Lg/hed;->ak:Ljava/util/List;

    iget-object v4, v2, Lg/hed;->am:Lg/cci;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    iget-object v7, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    iput-object v7, v0, Lg/fpd;->d:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2f
    if-ge v9, v8, :cond_70

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v10, v10, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->INVOKE:Lg/hay;

    if-ne v10, v11, :cond_6f

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/hdc;

    iget-object v11, v10, Lg/hdc;->ad:Lg/ayu;

    invoke-virtual {v11}, Lg/ayu;->o()Z

    move-result v12

    if-nez v12, :cond_56

    :goto_30
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/4 v1, 0x0

    goto/16 :goto_3c

    :cond_56
    invoke-virtual {v10}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v12

    if-eqz v12, :cond_59

    instance-of v13, v12, Lg/gks;

    if-nez v13, :cond_57

    goto :goto_31

    :cond_57
    check-cast v12, Lg/gks;

    iget-object v12, v12, Lg/gks;->a:Lg/vm;

    iget-object v12, v12, Lg/vm;->c:Lg/gks;

    iget-object v12, v12, Lg/gsh;->ae:Lg/eek;

    if-eqz v12, :cond_59

    iget-object v13, v12, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->NEW_INSTANCE:Lg/hay;

    if-eq v13, v14, :cond_58

    goto :goto_31

    :cond_58
    check-cast v12, Lg/adz;

    iget-object v12, v12, Lg/adz;->a:Ljava/lang/Object;

    check-cast v12, Lg/cwx;

    goto :goto_32

    :cond_59
    :goto_31
    const/4 v12, 0x0

    :goto_32
    if-eqz v12, :cond_5a

    iget-object v13, v11, Lg/ayu;->d:Lg/ve;

    iget-object v13, v13, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v12, v13}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5a

    iget-object v13, v4, Lg/cci;->ab:Lg/dwg;

    invoke-static {v13, v12}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v12

    iget-object v13, v4, Lg/cci;->ab:Lg/dwg;

    iget-object v14, v11, Lg/ayu;->f:Ljava/lang/String;

    iget-object v15, v11, Lg/ayu;->c:Ljava/util/List;

    iget-object v11, v11, Lg/ayu;->g:Lg/cwx;

    invoke-static {v13, v12, v14, v15, v11}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object v11

    :cond_5a
    new-instance v12, Lg/eew;

    invoke-direct {v12, v2, v10, v11}, Lg/eew;-><init>(Lg/hed;Lg/hdc;Lg/ayu;)V

    invoke-virtual {v12}, Lg/eew;->ab()Z

    move-result v11

    iget-object v13, v12, Lg/eek;->aj:Ljava/util/List;

    if-eqz v11, :cond_5b

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_5d

    invoke-virtual {v4}, Lg/cci;->bi()Z

    move-result v11

    if-eqz v11, :cond_5b

    goto :goto_33

    :cond_5b
    sget-object v11, Lg/dkz;->THIS:Lg/dkz;

    iget-object v14, v12, Lg/eew;->y:Lg/dkz;

    iget-object v15, v12, Lg/eew;->a:Lg/ayu;

    if-ne v14, v11, :cond_5c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_5c

    iget-object v11, v15, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lg/cci;->bf(Ljava/lang/String;)Lg/hed;

    move-result-object v11

    if-eqz v11, :cond_5d

    iget-boolean v11, v11, Lg/hed;->ar:Z

    if-eqz v11, :cond_5c

    goto :goto_33

    :cond_5c
    sget-object v11, Lg/acq;->r:Lg/acq;

    iget-object v1, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v11}, Lg/sm;->j(Lg/fky;)Z

    move-result v1

    iget-object v11, v4, Lg/cci;->ab:Lg/dwg;

    if-eqz v1, :cond_5e

    invoke-virtual {v2}, Lg/hed;->bd()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v12}, Lg/eew;->ab()Z

    move-result v1

    if-eqz v1, :cond_5e

    :cond_5d
    :goto_33
    invoke-virtual {v0, v10}, Lg/fpd;->v(Lg/eek;)V

    goto/16 :goto_30

    :cond_5e
    invoke-virtual {v12, v10}, Lg/eek;->au(Lg/eek;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    check-cast v10, Lg/gks;

    iget-object v1, v10, Lg/gks;->a:Lg/vm;

    invoke-virtual {v1, v10}, Lg/vm;->v(Lg/gks;)V

    sget-object v1, Lg/dkz;->CONSTRUCTOR:Lg/dkz;

    if-ne v14, v1, :cond_66

    invoke-virtual {v10}, Lg/gks;->aa()Lg/eek;

    move-result-object v1

    move-object/from16 v16, v3

    if-eqz v1, :cond_64

    iget-object v3, v1, Lg/eek;->ah:Lg/hay;

    move-object/from16 v17, v4

    sget-object v4, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v3, v4, :cond_63

    check-cast v1, Lg/eew;

    iget-object v3, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v2, v1, v3}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-static {v2, v6, v3}, Lg/ffb;->z(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v4

    if-nez v4, :cond_61

    invoke-virtual {v10, v2}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v6, v3}, Lg/ffb;->bg(Lg/hed;Lg/fza;Z)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, v10, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/gks;

    move-object/from16 v18, v1

    iget-object v1, v10, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_5f

    invoke-static {v2, v1, v4}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v19

    if-eqz v19, :cond_5f

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v18}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    goto :goto_35

    :cond_5f
    move-object/from16 v19, v3

    :goto_35
    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_34

    :cond_60
    move-object/from16 v18, v1

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v10, v18

    move/from16 v18, v5

    goto/16 :goto_36

    :cond_61
    invoke-virtual {v10, v2}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object v10

    move/from16 v18, v5

    iget-object v5, v1, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v5, v2}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object v19

    move-object/from16 v20, v7

    iget v7, v5, Lg/gks;->e:I

    invoke-static {v2, v4, v7}, Lg/eak;->v(Lg/hed;Lg/fza;I)Lg/abi;

    move-result-object v7

    invoke-virtual {v5}, Lg/gks;->z()Lg/gks;

    move-result-object v5

    invoke-virtual {v7, v5}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v10}, Lg/gks;->z()Lg/gks;

    move-result-object v5

    move/from16 v21, v8

    invoke-static {v2, v4, v6}, Lg/ffb;->br(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lg/abi;->_az(Lg/gks;Lg/fza;)V

    invoke-virtual/range {v19 .. v19}, Lg/gks;->z()Lg/gks;

    move-result-object v5

    invoke-static {v2, v4, v3}, Lg/ffb;->br(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    move-result-object v3

    invoke-virtual {v7, v5, v3}, Lg/abi;->_az(Lg/gks;Lg/fza;)V

    invoke-virtual {v7}, Lg/eek;->_bs()V

    invoke-virtual/range {v19 .. v19}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v1}, Lg/eek;->_bs()V

    goto :goto_36

    :cond_62
    new-instance v0, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Block not found by insn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    sget-object v3, Lg/hay;->NEW_INSTANCE:Lg/hay;

    invoke-static {v2, v1, v0, v3}, Lg/eak;->ak(Lg/hed;Lg/eek;Lg/fpd;Lg/hay;)Lg/eek;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {v12, v1}, Lg/eek;->au(Lg/eek;)V

    sget-object v3, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v1, v3}, Lg/lh;->w(Lg/csv;)V

    iget-object v3, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_64
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    :cond_65
    :goto_36
    invoke-virtual {v10}, Lg/gks;->z()Lg/gks;

    move-result-object v1

    invoke-virtual {v12, v1}, Lg/eek;->ax(Lg/gks;)V

    goto :goto_37

    :cond_66
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    :goto_37
    invoke-virtual {v12}, Lg/eek;->_bs()V

    invoke-virtual {v11, v15}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v3, v1, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->bb()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gsh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lg/ekh;

    if-eqz v5, :cond_69

    check-cast v4, Lg/ekh;

    iget-wide v4, v4, Lg/ekh;->a:J

    const-wide/16 v7, 0x0

    cmp-long v10, v4, v7

    if-eqz v10, :cond_67

    goto :goto_38

    :cond_68
    iget-object v3, v1, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v11, v3}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v3

    if-nez v3, :cond_6a

    :cond_69
    :goto_38
    const/4 v1, 0x0

    goto :goto_3a

    :cond_6a
    iget-object v4, v12, Lg/eek;->ai:Lg/gks;

    if-nez v4, :cond_6b

    goto :goto_38

    :cond_6b
    invoke-virtual {v4}, Lg/gsh;->al()Z

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<init>("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_6c

    iget-object v4, v4, Lg/flv;->h:Lg/cwx;

    invoke-static {v4}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_6c
    const-string v4, ""

    :goto_39
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")V"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/cci;->bf(Ljava/lang/String;)Lg/hed;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-virtual {v3, v1}, Lg/hed;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, v3, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->bb()Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_38

    :cond_6d
    new-instance v1, Lg/eew;

    iget-object v3, v3, Lg/hed;->al:Lg/ayu;

    invoke-direct {v1, v3, v14}, Lg/eew;-><init>(Lg/ayu;Lg/dkz;)V

    iget-object v3, v12, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v3}, Lg/gks;->z()Lg/gks;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v1, v12}, Lg/eek;->au(Lg/eek;)V

    :goto_3a
    if-eqz v1, :cond_6e

    invoke-virtual {v0, v12}, Lg/fpd;->v(Lg/eek;)V

    invoke-static {v2, v6, v9, v1}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    goto :goto_3b

    :cond_6e
    invoke-static {v2, v6, v9, v12}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    :goto_3b
    const/4 v1, 0x1

    :goto_3c
    or-int v5, v18, v1

    goto :goto_3d

    :cond_6f
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    :goto_3d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v20

    move/from16 v8, v21

    goto/16 :goto_2f

    :cond_70
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual {v0}, Lg/fpd;->u()V

    move-object/from16 v1, p0

    goto/16 :goto_2e

    :cond_71
    if-eqz v5, :cond_72

    invoke-static {v2}, Lg/eak;->ao(Lg/hed;)V

    :cond_72
    :goto_3e
    return-void

    :pswitch_1b
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_73

    goto :goto_3f

    :cond_73
    invoke-static {v2}, Lg/eak;->ac(Lg/hed;)V

    :goto_3f
    return-void

    :pswitch_1c
    invoke-static {v2}, Lg/eak;->av(Lg/hed;)V

    return-void

    :pswitch_1d
    iget-object v0, v2, Lg/hed;->al:Lg/ayu;

    iget-object v0, v0, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_78

    iget-object v0, v2, Lg/hed;->au:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_41

    :cond_74
    iget-object v0, v2, Lg/hed;->an:[Lg/eek;

    array-length v1, v0

    if-nez v1, :cond_75

    goto :goto_41

    :cond_75
    array-length v1, v0

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v1, :cond_77

    aget-object v4, v0, v3

    if-eqz v4, :cond_76

    iget-object v5, v4, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->NOP:Lg/hay;

    if-eq v5, v6, :cond_76

    sget-object v6, Lg/hay;->RETURN:Lg/hay;

    if-ne v5, v6, :cond_78

    iget-object v4, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_78

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_77
    :goto_41
    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v2, v0}, Lg/lh;->w(Lg/csv;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lg/hed;->ar:Z

    :cond_78
    iget-object v0, v2, Lg/hed;->an:[Lg/eek;

    sget-object v1, Lg/evh;->a:Ljava/lang/String;

    if-eqz v0, :cond_7f

    array-length v0, v0

    if-nez v0, :cond_79

    goto :goto_45

    :cond_79
    iget v0, v2, Lg/hed;->af:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lg/hed;->an:[Lg/eek;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_42
    if-ge v5, v3, :cond_7f

    aget-object v4, v2, v5

    if-nez v4, :cond_7a

    goto :goto_44

    :cond_7a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v4, Lg/eek;->ai:Lg/gks;

    if-eqz v6, :cond_7b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    invoke-virtual {v4, v1}, Lg/eek;->h(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gks;

    iget v7, v7, Lg/gks;->e:I

    if-ltz v7, :cond_7d

    if-ge v7, v0, :cond_7c

    goto :goto_43

    :cond_7c
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect register number in instruction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", expected to be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect negative register number in instruction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_7f
    :goto_45
    return-void

    :pswitch_1e
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-nez v0, :cond_81

    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_46

    :cond_80
    sget-object v0, Lg/csv;->DISABLE_BLOCKS_LOCK:Lg/csv;

    iget-object v1, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_81

    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v0}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    iget-object v0, v2, Lg/hed;->ac:Ljava/util/List;

    invoke-static {v0}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lg/hed;->ac:Ljava/util/List;

    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_81
    :goto_46
    return-void

    :pswitch_1f
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-nez v0, :cond_8c

    iget-object v0, v2, Lg/hed;->ak:Ljava/util/List;

    if-nez v0, :cond_82

    goto/16 :goto_4c

    :cond_82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v3, v1, Lg/fza;->e:Ljava/util/List;

    iget-object v4, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8b

    iget-object v3, v1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_8b

    iget-object v3, v1, Lg/fza;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v7, v1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    invoke-static {v3}, Lg/eak;->o(Lg/fza;)Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-static {v7}, Lg/eak;->o(Lg/fza;)Z

    move-result v3

    if-eqz v3, :cond_8b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_83
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    iget-object v9, v8, Lg/eek;->ah:Lg/hay;

    sget-object v10, Lg/hay;->MOVE:Lg/hay;

    if-ne v9, v10, :cond_83

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    instance-of v10, v10, Lg/gks;

    if-nez v10, :cond_84

    goto :goto_48

    :cond_84
    invoke-virtual {v8, v9}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    check-cast v10, Lg/gks;

    iget-object v9, v8, Lg/eek;->ai:Lg/gks;

    iget-object v11, v9, Lg/gks;->a:Lg/vm;

    iget-object v11, v11, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_85

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gks;

    iget-object v12, v12, Lg/gsh;->ae:Lg/eek;

    invoke-static {v7, v12}, Lg/ffb;->af(Lg/fza;Lg/eek;)Z

    goto :goto_49

    :cond_85
    iget v10, v10, Lg/gks;->e:I

    iget v9, v9, Lg/gks;->e:I

    if-ne v10, v9, :cond_83

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_86
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8b

    sget-object v6, Lg/acq;->q:Lg/acq;

    iget-object v8, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v6}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/mw;

    iget-object v9, v8, Lg/mw;->f:Lg/fza;

    if-ne v9, v1, :cond_87

    iget-object v9, v8, Lg/mw;->a:Lg/fza;

    if-ne v9, v7, :cond_87

    iget-object v8, v8, Lg/mw;->b:Lg/hbg;

    sget-object v9, Lg/hbg;->BACK_EDGE:Lg/hbg;

    if-ne v8, v9, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Refusing to push insns through at block "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/fza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : edge to successor is a back edge."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_4b

    :cond_88
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v7, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8a
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v9, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v9, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v11, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_8a

    sget-object v9, Lg/csv;->ALLOW_MULTIPLE_INSNS_LOOP_COND:Lg/csv;

    invoke-virtual {v8, v9}, Lg/lh;->w(Lg/csv;)V

    goto :goto_4a

    :cond_8b
    :goto_4b
    const/4 v10, 0x0

    goto/16 :goto_47

    :cond_8c
    :goto_4c
    return-void

    :pswitch_20
    iget-boolean v0, v2, Lg/hed;->ar:Z

    if-eqz v0, :cond_8d

    goto :goto_4d

    :cond_8d
    invoke-static {v2}, Lg/eak;->af(Lg/hed;)V

    :goto_4d
    return-void

    :pswitch_21
    invoke-static {v2}, Lg/eak;->s(Lg/hed;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public k(Lg/cci;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lg/eak;->d:I

    const-string v3, "<clinit>()V"

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super/range {p0 .. p1}, Lg/pj;->k(Lg/cci;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-boolean v0, v0, Lg/ur;->p:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lg/eak;->l(Lg/cci;)V

    :cond_0
    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    invoke-virtual {v3}, Lg/hed;->bd()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v6, v3

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_3

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/hed;

    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6, v2}, Lg/eak;->be(Lg/hed;Lg/ebh;)V

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->ag:Ljava/util/List;

    new-instance v2, Lg/bwe;

    invoke-direct {v2, v1, v6, v8}, Lg/bwe;-><init>(Lg/eak;Lg/hed;I)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :goto_1
    return v7

    :sswitch_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v0, v3}, Lg/eak;->n(Lg/cci;Ljava/util/LinkedHashSet;Ljava/util/HashSet;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_33

    new-instance v9, Lg/clx;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v9, v4, v10, v3, v8}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_2
    if-eqz v9, :cond_32

    iget-object v0, v9, Lg/clx;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    iget-object v3, v9, Lg/clx;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v2, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hed;

    sget-object v9, Lg/acq;->h:Lg/acq;

    invoke-virtual {v4}, Lg/hed;->bk()Z

    move-result v10

    iget-object v11, v4, Lg/hed;->al:Lg/ayu;

    iget-object v12, v4, Lg/hed;->am:Lg/cci;

    if-nez v10, :cond_6

    iget-object v10, v4, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v10}, Lg/gqc;->be()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v4, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v10}, Lg/gqc;->al()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    move-object/from16 v20, v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    :cond_7
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1b

    :cond_8
    iget-object v10, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v10

    check-cast v10, Lg/fpr;

    if-eqz v10, :cond_9

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v11, v8, v8}, Lg/ayu;->p(ZZ)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lg/cwx;

    iget-object v8, v12, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v8, v5}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v8

    if-eqz v8, :cond_15

    iget-object v7, v11, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v8}, Lg/cci;->av()V

    iget-object v6, v8, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p1, v2

    move-object/from16 v2, v19

    check-cast v2, Lg/hed;

    move-object/from16 v19, v3

    iget-object v3, v2, Lg/hed;->al:Lg/ayu;

    iget-object v3, v3, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->be()Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_9

    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v3, v19

    goto :goto_6

    :cond_b
    move-object/from16 p1, v2

    move-object/from16 v19, v3

    invoke-virtual {v8}, Lg/cci;->av()V

    iget-object v2, v8, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v6, v3, Lg/hed;->al:Lg/ayu;

    iget-object v7, v6, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v3, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v7}, Lg/gqc;->be()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v8, Lg/cci;->ab:Lg/dwg;

    iget-object v7, v7, Lg/dwg;->u:Lg/cag;

    iget-object v7, v7, Lg/cag;->e:Lg/cwm;

    move-object/from16 v20, v2

    iget-object v2, v6, Lg/ayu;->g:Lg/cwx;

    move-object/from16 v21, v3

    iget-object v3, v11, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v7, v2, v3}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v2

    invoke-virtual {v2}, Lg/dho;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v2, v21

    goto :goto_9

    :cond_c
    sget-object v3, Lg/dho;->UNKNOWN:Lg/dho;

    if-eq v2, v3, :cond_d

    sget-object v3, Lg/dho;->CONFLICT:Lg/dho;

    if-ne v2, v3, :cond_f

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Possible override for method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lg/ayu;->d:Lg/ve;

    iget-object v7, v7, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lg/ebh;->bw(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    move-object/from16 v20, v2

    :cond_f
    :goto_8
    move-object/from16 v2, v20

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_17

    iget-object v3, v2, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->al()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v3, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual {v3}, Lg/gqc;->an()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v3}, Lg/gqc;->ao()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    iget-object v3, v2, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v12, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v6}, Lg/ve;->t()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_17

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/fpr;

    if-eqz v2, :cond_17

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v13}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ebp;

    if-eqz v3, :cond_14

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {v4, v13, v14, v2}, Lg/eak;->bb(Lg/hed;Ljava/util/ArrayList;Ljava/util/HashSet;Lg/fpr;)Lg/fpr;

    move-result-object v10

    goto :goto_c

    :cond_15
    move-object/from16 p1, v2

    move-object/from16 v19, v3

    iget-object v2, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v2, v5}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v2, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ebp;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v13}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ebp;

    if-eqz v2, :cond_18

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v2, p1

    move-object/from16 v3, v19

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_19
    move-object/from16 p1, v2

    move-object/from16 v19, v3

    const/4 v2, 0x0

    invoke-static {v4, v13, v14, v2}, Lg/eak;->bb(Lg/hed;Ljava/util/ArrayList;Ljava/util/HashSet;Lg/fpr;)Lg/fpr;

    move-result-object v10

    :goto_c
    if-eqz v10, :cond_2f

    iget-object v2, v10, Lg/fpr;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v4, v10}, Lg/lh;->m(Lg/eue;)V

    sget-object v3, Lg/evh;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    const/4 v2, 0x0

    goto :goto_d

    :cond_1a
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :goto_d
    check-cast v2, Lg/ebp;

    if-eqz v2, :cond_2f

    iget-object v3, v4, Lg/hed;->aw:Lg/cwx;

    sget-object v5, Lg/cwx;->ao:Lg/cff;

    if-ne v3, v5, :cond_1b

    const/4 v5, 0x0

    goto :goto_10

    :cond_1b
    invoke-interface {v2}, Lg/ebp;->g()Lg/cwx;

    move-result-object v5

    iget-object v6, v4, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v6, v5}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    :goto_e
    const/4 v5, 0x0

    goto :goto_f

    :cond_1d
    invoke-virtual {v5}, Lg/cwx;->bn()Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_e

    :cond_1e
    iget-object v6, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v6, v6, Lg/dwg;->u:Lg/cag;

    iget-object v6, v6, Lg/cag;->e:Lg/cwm;

    invoke-interface {v2}, Lg/ebp;->j()Lg/ayu;

    move-result-object v7

    iget-object v7, v7, Lg/ayu;->d:Lg/ve;

    iget-object v7, v7, Lg/ve;->d:Lg/cwx;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/cwx;

    invoke-virtual {v6, v10, v7}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v13

    sget-object v14, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v13, v14, :cond_1f

    iget-object v13, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v13, v13, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v13, v10, v10, v5}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Lg/cwx;->bn()Z

    move-result v13

    if-nez v13, :cond_1f

    iget-object v13, v4, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v10, v13}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    iput-object v10, v4, Lg/hed;->aw:Lg/cwx;

    const/4 v5, 0x1

    :goto_f
    if-eqz v5, :cond_20

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Return type fixed from \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' to match base method"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lg/ebh;->bw(Ljava/lang/String;)V

    :cond_20
    :goto_10
    invoke-virtual {v4}, Lg/hed;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    :goto_11
    move-object/from16 v20, v0

    move/from16 v22, v5

    const/4 v10, 0x0

    goto/16 :goto_17

    :cond_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v7, v6, :cond_22

    goto :goto_11

    :cond_22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_12
    if-ge v8, v7, :cond_28

    invoke-virtual {v4}, Lg/hed;->f()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cwx;

    invoke-interface {v2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/cwx;

    invoke-virtual {v13, v14}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    :goto_13
    move-object/from16 v20, v0

    :cond_23
    move-object/from16 v23, v2

    move/from16 v22, v5

    const/4 v2, 0x0

    goto :goto_15

    :cond_24
    invoke-virtual {v14}, Lg/cwx;->bn()Z

    move-result v15

    if-nez v15, :cond_25

    goto :goto_13

    :cond_25
    iget-object v15, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v15, v15, Lg/dwg;->u:Lg/cag;

    iget-object v15, v15, Lg/cag;->e:Lg/cwm;

    move-object/from16 v20, v0

    invoke-interface {v2}, Lg/ebp;->j()Lg/ayu;

    move-result-object v0

    iget-object v0, v0, Lg/ayu;->d:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_14
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_23

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    check-cast v2, Lg/cwx;

    move/from16 v22, v5

    invoke-virtual {v15, v2, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v5

    move-object/from16 v24, v0

    sget-object v0, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v5, v0, :cond_26

    iget-object v0, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v0, v2, v2, v14}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lg/cwx;->bn()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v2, v13}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_15

    :cond_26
    move/from16 v5, v22

    move-object/from16 v2, v23

    move-object/from16 v0, v24

    goto :goto_14

    :goto_15
    if-eqz v2, :cond_27

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_16

    :cond_27
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v20

    move/from16 v5, v22

    move-object/from16 v2, v23

    goto/16 :goto_12

    :cond_28
    move-object/from16 v20, v0

    move/from16 v22, v5

    if-eqz v10, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Method arguments types fixed to match base method, original types: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/hed;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lg/ebh;->bw(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lg/hed;->as:Ljava/util/List;

    invoke-virtual {v4, v6}, Lg/hed;->bl(Ljava/util/List;)V

    :cond_29
    :goto_17
    or-int v0, v22, v10

    if-eqz v0, :cond_7

    iget-object v0, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-object v0, v0, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v2, Lg/ffl;->VALID:Lg/ffl;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, v11, Lg/ayu;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lg/hed;->f()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lg/ayu;->i(Ljava/lang/String;Ljava/util/List;Lg/cwx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lg/cci;->av()V

    iget-object v6, v12, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hed;

    iget-object v8, v7, Lg/hed;->al:Lg/ayu;

    iget-object v10, v8, Lg/ayu;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    if-eq v7, v4, :cond_2a

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lg/ayu;->p(ZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    if-eqz v0, :cond_2e

    sget-object v0, Lg/csv;->DONT_RENAME:Lg/csv;

    iget-object v2, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v9}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_19

    :cond_2b
    iget-object v0, v7, Lg/hed;->am:Lg/cci;

    iget-object v2, v8, Lg/ayu;->a:Ljava/lang/String;

    const/4 v3, 0x2

    :goto_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lg/cci;->at(Ljava/lang/String;)Lg/hed;

    move-result-object v9

    if-nez v9, :cond_2c

    iput-object v6, v8, Lg/ayu;->a:Ljava/lang/String;

    new-instance v0, Lg/awl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, "avoid collision after fix types in other method"

    iput-object v2, v0, Lg/awl;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lg/lh;->m(Lg/eue;)V

    goto :goto_1a

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    :goto_19
    const-string v0, "Can\'t rename method to resolve collision"

    invoke-virtual {v7, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_2e
    :goto_1a
    new-instance v0, Lg/bbo;

    invoke-direct {v0, v4}, Lg/bbo;-><init>(Lg/hed;)V

    invoke-virtual {v7, v0}, Lg/lh;->m(Lg/eue;)V

    goto :goto_1b

    :cond_2f
    move-object/from16 v20, v0

    goto/16 :goto_4

    :cond_30
    new-instance v0, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No base methods for override attribute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lg/fpr;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_1b
    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v0, v20

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_32
    const/16 v17, 0x1

    return v17

    :cond_33
    new-instance v0, Lg/gck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No end types in class hierarchy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    const/4 v5, 0x0

    invoke-virtual {v2, v3}, Lg/cci;->bf(Ljava/lang/String;)Lg/hed;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-boolean v3, v0, Lg/hed;->ar:Z

    if-nez v3, :cond_42

    iget-object v0, v0, Lg/hed;->ak:Ljava/util/List;

    if-nez v0, :cond_34

    goto/16 :goto_1e

    :cond_34
    new-instance v3, Lg/ffv;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    iget-object v7, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->APUT:Lg/hay;

    if-ne v7, v8, :cond_36

    iget-object v7, v2, Lg/cci;->ab:Lg/dwg;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v9, Lg/ekh;

    if-nez v8, :cond_37

    goto :goto_1c

    :cond_37
    invoke-static {v7, v6}, Lg/eak;->as(Lg/dwg;Lg/eek;)Lg/clx;

    move-result-object v6

    if-nez v6, :cond_38

    goto :goto_1c

    :cond_38
    iget-object v8, v6, Lg/clx;->e:Ljava/lang/Object;

    check-cast v8, Lg/gsh;

    iget-object v6, v6, Lg/clx;->c:Ljava/lang/Object;

    check-cast v6, Lg/hcd;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v8, Lg/cly;

    if-nez v10, :cond_39

    goto :goto_1c

    :cond_39
    check-cast v8, Lg/cly;

    iget-object v8, v8, Lg/cly;->a:Lg/eek;

    instance-of v10, v8, Lg/adz;

    if-nez v10, :cond_3a

    goto :goto_1c

    :cond_3a
    check-cast v8, Lg/adz;

    iget-object v8, v8, Lg/adz;->a:Ljava/lang/Object;

    instance-of v10, v8, Lg/dsj;

    if-nez v10, :cond_3b

    goto :goto_1c

    :cond_3b
    check-cast v8, Lg/dsj;

    invoke-virtual {v7, v8}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object v7

    if-nez v7, :cond_3c

    goto :goto_1c

    :cond_3c
    check-cast v9, Lg/ekh;

    iget-wide v8, v9, Lg/ekh;->a:J

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Lg/ffv;->a:Ljava/util/HashMap;

    if-nez v9, :cond_3d

    move-object v9, v5

    goto :goto_1d

    :cond_3d
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/des;

    :goto_1d
    if-nez v9, :cond_3f

    new-instance v9, Lg/des;

    invoke-direct {v9}, Lg/des;-><init>()V

    iget-object v10, v3, Lg/ffv;->a:Ljava/util/HashMap;

    if-nez v10, :cond_3e

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v3, Lg/ffv;->a:Ljava/util/HashMap;

    :cond_3e
    iget-object v10, v3, Lg/ffv;->a:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget-object v6, v9, Lg/des;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    :cond_40
    iget-object v0, v3, Lg/ffv;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_1e

    :cond_41
    invoke-virtual {v2, v3}, Lg/lh;->m(Lg/eue;)V

    :cond_42
    :goto_1e
    const/16 v17, 0x1

    return v17

    :sswitch_3
    const/4 v5, 0x0

    iget-object v0, v2, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cci;

    invoke-virtual {v1, v4}, Lg/eak;->k(Lg/cci;)Z

    goto :goto_1f

    :cond_43
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {v2, v3}, Lg/cci;->bf(Ljava/lang/String;)Lg/hed;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v3, v0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->be()Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-boolean v3, v0, Lg/hed;->ar:Z

    if-nez v3, :cond_4c

    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    if-nez v3, :cond_44

    goto/16 :goto_23

    :cond_44
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v3, v2, Lg/cci;->ag:Ljava/util/List;

    new-instance v4, Lg/bev;

    const/16 v6, 0x15

    invoke-direct {v4, v6}, Lg/bev;-><init>(I)V

    invoke-static {v3, v4}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_23

    :cond_45
    :goto_20
    sget-object v3, Lg/hay;->SPUT:Lg/hay;

    invoke-static {v2, v0, v3}, Lg/eak;->ag(Lg/cci;Lg/hed;Lg/hay;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_23

    :cond_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ej;

    iget-object v6, v6, Lg/ej;->a:Lg/hcd;

    iget-object v7, v6, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v7}, Lg/gqc;->ae()Z

    move-result v7

    if-eqz v7, :cond_47

    sget-object v7, Lg/ao;->x:Lg/ao;

    invoke-virtual {v6, v7}, Lg/lh;->u(Lg/fky;)V

    goto :goto_21

    :cond_48
    invoke-static {v3}, Lg/eak;->ar(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_23

    :cond_49
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ej;

    iget-object v7, v6, Lg/ej;->b:Lg/adz;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    instance-of v9, v8, Lg/cly;

    if-eqz v9, :cond_4a

    check-cast v8, Lg/cly;

    iget-object v8, v8, Lg/cly;->a:Lg/eek;

    sget-object v9, Lg/csv;->DECLARE_VAR:Lg/csv;

    invoke-virtual {v8, v9}, Lg/lh;->w(Lg/csv;)V

    :cond_4a
    invoke-static {v0, v7}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    iget-object v6, v6, Lg/ej;->a:Lg/hcd;

    invoke-static {v0, v6, v7}, Lg/eak;->an(Lg/hed;Lg/hcd;Lg/adz;)V

    goto :goto_22

    :cond_4b
    invoke-static {v2, v3}, Lg/eak;->u(Lg/cci;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lg/eak;->av(Lg/hed;)V

    goto :goto_20

    :cond_4c
    :goto_23
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->ag:Ljava/util/List;

    new-instance v3, Lg/bev;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lg/bev;-><init>(I)V

    invoke-static {v0, v3}, Lg/acw;->y(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_29

    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v3, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hed;

    iget-object v6, v4, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v6}, Lg/gqc;->be()Z

    move-result v7

    if-nez v7, :cond_4e

    invoke-virtual {v6}, Lg/gqc;->bf()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, v4, Lg/hed;->ar:Z

    if-nez v6, :cond_4f

    iget-object v4, v4, Lg/hed;->ak:Ljava/util/List;

    invoke-static {v4}, Lg/ffb;->ad(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_4f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_51

    goto/16 :goto_29

    :cond_51
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hed;

    sget-object v6, Lg/hay;->IPUT:Lg/hay;

    invoke-static {v2, v4, v6}, Lg/eak;->ag(Lg/cci;Lg/hed;Lg/hay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lg/eak;->ar(Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_52

    goto/16 :goto_29

    :cond_52
    new-instance v7, Lg/atl;

    invoke-direct {v7, v4, v6}, Lg/atl;-><init>(Lg/hed;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v5

    :cond_54
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/atl;

    if-nez v6, :cond_55

    move-object v6, v4

    goto :goto_25

    :cond_55
    iget-object v5, v6, Lg/atl;->b:Ljava/util/ArrayList;

    iget-object v4, v4, Lg/atl;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_56

    goto/16 :goto_29

    :cond_56
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v7, :cond_54

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/ej;

    iget-object v9, v9, Lg/ej;->b:Lg/adz;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ej;

    iget-object v10, v10, Lg/ej;->b:Lg/adz;

    invoke-virtual {v9, v10}, Lg/adz;->_p(Lg/eek;)Z

    move-result v9

    if-nez v9, :cond_57

    goto :goto_29

    :cond_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_58
    if-nez v6, :cond_59

    goto :goto_29

    :cond_59
    iget-object v0, v6, Lg/atl;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/atl;

    iget-object v5, v4, Lg/atl;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ej;

    iget-object v7, v7, Lg/ej;->b:Lg/adz;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    instance-of v9, v8, Lg/cly;

    if-eqz v9, :cond_5b

    check-cast v8, Lg/cly;

    iget-object v8, v8, Lg/cly;->a:Lg/eek;

    sget-object v9, Lg/csv;->DECLARE_VAR:Lg/csv;

    invoke-virtual {v8, v9}, Lg/lh;->w(Lg/csv;)V

    :cond_5b
    iget-object v8, v4, Lg/atl;->a:Lg/hed;

    invoke-static {v8, v7}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_27

    :cond_5c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ej;

    iget-object v5, v6, Lg/atl;->a:Lg/hed;

    iget-object v7, v4, Lg/ej;->a:Lg/hcd;

    iget-object v4, v4, Lg/ej;->b:Lg/adz;

    invoke-static {v5, v7, v4}, Lg/eak;->an(Lg/hed;Lg/hcd;Lg/adz;)V

    goto :goto_28

    :cond_5d
    invoke-static {v2, v0}, Lg/eak;->u(Lg/cci;Ljava/util/ArrayList;)V

    :cond_5e
    :goto_29
    const/16 v16, 0x0

    return v16

    :sswitch_4
    const/4 v5, 0x0

    iget-object v0, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v0, Lg/dwg;->i:Lg/ur;

    iget-boolean v3, v3, Lg/ur;->an:Z

    if-nez v3, :cond_60

    :cond_5f
    :goto_2a
    const/16 v17, 0x1

    goto/16 :goto_2e

    :cond_60
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v3, v2, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_2a

    :cond_61
    iget-object v3, v0, Lg/dwg;->f:Lg/dxb;

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_62
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/hcd;

    :try_start_0
    iget-object v0, v6, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->be()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-virtual {v0}, Lg/gqc;->ae()Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_2c

    :cond_63
    sget-object v0, Lg/ao;->x:Lg/ao;

    iget-object v7, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ghr;

    if-eqz v0, :cond_65

    sget-object v7, Lg/ghr;->a:Lg/ghr;

    if-ne v0, v7, :cond_64

    goto :goto_2c

    :cond_64
    iget-object v7, v6, Lg/hcd;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_66

    :cond_65
    :goto_2c
    move-object v0, v5

    goto :goto_2d

    :cond_66
    iget-object v0, v0, Lg/ghr;->f:Ljava/lang/Object;

    :goto_2d
    if-eqz v0, :cond_62

    iget-object v7, v6, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v7}, Lg/gqc;->an()Z

    move-result v7

    if-eqz v7, :cond_67

    iget-object v7, v3, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v7, Lg/bqm;

    invoke-virtual {v7, v0, v6}, Lg/bqm;->c(Ljava/lang/Object;Lg/chf;)V

    goto :goto_2b

    :cond_67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lg/hcd;->f:Lg/cci;

    iget-object v8, v3, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    new-instance v9, Lg/fov;

    const/16 v10, 0xe

    invoke-direct {v9, v10}, Lg/fov;-><init>(I)V

    invoke-static {v8, v7, v9}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bqm;

    invoke-virtual {v7, v0, v6}, Lg/bqm;->c(Ljava/lang/Object;Lg/chf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2b

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to process value of field: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :goto_2e
    return v17

    :sswitch_5
    sget-object v0, Lg/csv;->PACKAGE_INFO:Lg/csv;

    iget-object v3, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_68

    :goto_2f
    const/16 v16, 0x0

    goto/16 :goto_39

    :cond_68
    iget-object v0, v2, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cci;

    invoke-virtual {v1, v3}, Lg/eak;->k(Lg/cci;)Z

    goto :goto_30

    :cond_69
    invoke-static {v2}, Lg/eak;->p(Lg/cci;)Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v2, v0}, Lg/lh;->w(Lg/csv;)V

    goto :goto_2f

    :cond_6a
    sget-object v0, Lg/acq;->r:Lg/acq;

    iget-object v3, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    iget-object v3, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v2, Lg/cci;->ak:Lg/ve;

    if-nez v0, :cond_6b

    invoke-virtual {v5}, Lg/ve;->n()Z

    move-result v6

    if-eqz v6, :cond_7b

    :cond_6b
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v6, v2, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hcd;

    iget-object v8, v7, Lg/hcd;->e:Lg/cwx;

    iget-object v9, v7, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v9}, Lg/gqc;->bb()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-virtual {v8}, Lg/cwx;->m()Z

    move-result v9

    if-eqz v9, :cond_6d

    instance-of v9, v8, Lg/btl;

    if-nez v9, :cond_6d

    invoke-static {v3, v8}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v8

    invoke-virtual {v3, v8}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v8

    iget-object v9, v5, Lg/ve;->c:Lg/ve;

    if-nez v8, :cond_6c

    goto :goto_31

    :cond_6c
    iget-object v8, v8, Lg/cci;->ak:Lg/ve;

    invoke-static {v9, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v0, :cond_6e

    if-eqz v9, :cond_6d

    goto :goto_32

    :cond_6d
    move/from16 v18, v0

    move-object/from16 v19, v3

    goto/16 :goto_38

    :cond_6e
    :goto_32
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v10, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_78

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/hed;

    iget-boolean v13, v12, Lg/hed;->ar:Z

    if-nez v13, :cond_70

    iget-object v13, v12, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v13}, Lg/gqc;->bf()Z

    move-result v13

    if-nez v13, :cond_6f

    goto :goto_34

    :cond_6f
    invoke-virtual {v12}, Lg/hed;->az()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_70

    sget-object v14, Lg/csv;->SKIP_FIRST_ARG:Lg/csv;

    iget-object v15, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v15, v14}, Lg/sm;->g(Lg/csv;)Z

    move-result v15

    if-eqz v15, :cond_71

    :cond_70
    :goto_34
    move/from16 v18, v0

    :goto_35
    move-object/from16 v19, v3

    goto/16 :goto_37

    :cond_71
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gks;

    invoke-virtual {v13}, Lg/gks;->j()Lg/cwx;

    move-result-object v4

    iget-object v15, v8, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v4, v15}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    goto :goto_34

    :cond_72
    iget-object v4, v12, Lg/hed;->aj:Lg/fza;

    iget-object v4, v4, Lg/fza;->z:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v15, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_73

    goto :goto_34

    :cond_73
    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/eek;

    iget-object v0, v15, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->IPUT:Lg/hay;

    if-eq v0, v1, :cond_74

    goto :goto_35

    :cond_74
    move-object v0, v15

    check-cast v0, Lg/adz;

    iget-object v1, v0, Lg/adz;->a:Ljava/lang/Object;

    check-cast v1, Lg/dsj;

    move-object/from16 v19, v3

    iget-object v3, v7, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v1, v3}, Lg/dsj;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_37

    :cond_75
    invoke-virtual {v12, v14}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v12, v15}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {v12, v4, v15}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    iget-object v0, v13, Lg/gks;->a:Lg/vm;

    iget-object v0, v0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_76

    new-instance v0, Lg/adz;

    sget-object v3, Lg/hay;->IGET:Lg/hay;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v1, v4}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v15, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eek;->_an(Lg/gsh;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v13, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    const/4 v4, 0x1

    invoke-virtual {v3, v12, v0, v4}, Lg/gsh;->an(Lg/hed;Lg/eek;Z)Lg/gsh;

    goto :goto_36

    :cond_76
    add-int/lit8 v11, v11, 0x1

    :cond_77
    :goto_37
    move-object/from16 v1, p0

    move/from16 v0, v18

    move-object/from16 v3, v19

    const/16 v4, 0x8

    goto/16 :goto_33

    :cond_78
    move/from16 v18, v0

    move-object/from16 v19, v3

    if-eqz v11, :cond_7a

    if-eqz v9, :cond_79

    new-instance v0, Lg/gxj;

    invoke-direct {v0, v8}, Lg/gxj;-><init>(Lg/ve;)V

    invoke-virtual {v7, v0}, Lg/lh;->m(Lg/eue;)V

    :cond_79
    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v7, v0}, Lg/lh;->w(Lg/csv;)V

    :cond_7a
    :goto_38
    move-object/from16 v1, p0

    move/from16 v0, v18

    move-object/from16 v3, v19

    const/16 v4, 0x8

    goto/16 :goto_31

    :cond_7b
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto/16 :goto_2f

    :goto_39
    return v16

    :sswitch_6
    sget-object v0, Lg/acq;->r:Lg/acq;

    iget-object v1, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v0, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    sget-object v2, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_7c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lg/hed;->al:Lg/ayu;

    iget-object v3, v1, Lg/hed;->am:Lg/cci;

    invoke-virtual {v1}, Lg/hed;->az()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v5, v5, Lg/hed;->am:Lg/cci;

    iget-object v6, v2, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_7d

    iget-object v2, v2, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    iget-object v5, v5, Lg/cci;->ak:Lg/ve;

    iget-object v5, v5, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v2, v5}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    goto :goto_3a

    :cond_7d
    const/4 v2, 0x0

    :goto_3a
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_3b
    if-ge v2, v6, :cond_84

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gks;

    invoke-static {v7}, Lg/eak;->at(Lg/gks;)Lg/eek;

    move-result-object v8

    if-nez v8, :cond_7e

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3e

    :cond_7e
    sget-object v9, Lg/fqg;->a:[I

    iget-object v10, v8, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_81

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7f

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3e

    :cond_7f
    move-object v7, v8

    check-cast v7, Lg/eew;

    invoke-virtual {v7}, Lg/eew;->ab()Z

    move-result v7

    if-nez v7, :cond_80

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3e

    :cond_80
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_81
    const/4 v10, 0x2

    move-object v9, v8

    check-cast v9, Lg/adz;

    iget-object v9, v9, Lg/adz;->a:Ljava/lang/Object;

    check-cast v9, Lg/dsj;

    invoke-virtual {v3, v9}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object v9

    if-eqz v9, :cond_83

    iget-object v12, v9, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v12}, Lg/gqc;->bb()Z

    move-result v12

    if-nez v12, :cond_82

    goto :goto_3d

    :cond_82
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_83
    :goto_3d
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_84
    :goto_3e
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_85

    sget-object v2, Lg/csv;->NO_SKIP_ARGS:Lg/csv;

    invoke-virtual {v1, v2}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_43

    :cond_85
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_86
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hcd;

    if-nez v4, :cond_87

    goto :goto_3f

    :cond_87
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    new-instance v5, Lg/gxj;

    invoke-direct {v5, v3}, Lg/gxj;-><init>(Lg/gsh;)V

    invoke-virtual {v4, v5}, Lg/lh;->m(Lg/eue;)V

    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/gks;

    if-eqz v4, :cond_86

    sget-object v4, Lg/csv;->SKIP_ARG:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    check-cast v3, Lg/gks;

    invoke-virtual {v1}, Lg/hed;->az()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lg/evh;->a:Ljava/lang/String;

    const/4 v5, -0x1

    if-eqz v4, :cond_8a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_88

    goto :goto_41

    :cond_88
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_40
    if-ge v7, v6, :cond_8a

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_89

    goto :goto_42

    :cond_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_8a
    :goto_41
    const/4 v7, -0x1

    :goto_42
    if-eq v7, v5, :cond_8b

    invoke-static {v1, v7}, Lg/cse;->b(Lg/hed;I)V

    goto :goto_3f

    :cond_8b
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Arg not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    :goto_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v1, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_44

    :cond_8d
    const/16 v17, 0x1

    return v17

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0xe -> :sswitch_3
        0x11 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method
