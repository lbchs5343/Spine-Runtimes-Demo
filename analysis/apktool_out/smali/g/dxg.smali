.class public final Lg/dxg;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:Lg/dba;

.field public static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/dxg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/dxg;->b:Lg/dba;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lg/dxg;->c:J

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lg/dxg;->a:J

    return-void
.end method

.method public static d(Lg/gks;Lg/gsh;Lg/cwx;)Lg/dwk;
    .locals 7

    new-instance v0, Lg/ekh;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p2}, Lg/ekh;-><init>(JLg/cwx;)V

    sget-object v1, Lg/cwx;->s:Lg/cff;

    const-wide/16 v2, 0x1

    if-ne p2, v1, :cond_0

    sget-wide v4, Lg/dxg;->c:J

    goto :goto_0

    :cond_0
    sget-object v1, Lg/cwx;->ax:Lg/cff;

    if-ne p2, v1, :cond_1

    sget-wide v4, Lg/dxg;->a:J

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    new-instance v1, Lg/ekh;

    invoke-direct {v1, v4, v5, p2}, Lg/ekh;-><init>(JLg/cwx;)V

    new-instance p2, Lg/bgw;

    sget-object v4, Lg/ges;->EQ:Lg/ges;

    new-instance v5, Lg/ekh;

    sget-object v6, Lg/cwx;->at:Lg/cff;

    invoke-direct {v5, v2, v3, v6}, Lg/ekh;-><init>(JLg/cwx;)V

    invoke-direct {p2, v4, p1, v5}, Lg/bgw;-><init>(Lg/ges;Lg/gsh;Lg/ekh;)V

    new-instance p1, Lg/eii;

    new-instance v2, Lg/evf;

    invoke-direct {v2, p2}, Lg/evf;-><init>(Lg/bgw;)V

    invoke-direct {p1, v2}, Lg/eii;-><init>(Lg/evf;)V

    new-instance p2, Lg/dwk;

    invoke-direct {p2, p1, p0, v1, v0}, Lg/dwk;-><init>(Lg/eii;Lg/gks;Lg/gsh;Lg/gsh;)V

    return-object p2
.end method

.method public static e(Lg/chf;Lg/hed;)V
    .locals 2

    instance-of v0, p0, Lg/hcd;

    if-eqz v0, :cond_2

    check-cast p0, Lg/hcd;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/hcd;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iput-object v0, p0, Lg/hcd;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public static g(Lg/gks;)Lg/eek;
    .locals 2

    iget-object p0, p0, Lg/gks;->a:Lg/vm;

    iget-object v0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/gks;

    iget-object p0, p0, Lg/gsh;->ae:Lg/eek;

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lg/eek;->ai:Lg/gks;

    invoke-static {p0}, Lg/dxg;->g(Lg/gks;)Lg/eek;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final i(Lg/cci;Lg/ghr;)Lg/ghr;
    .locals 3

    iget-object v0, p2, Lg/ghr;->b:Lg/dnd;

    iget-object v1, p2, Lg/ghr;->f:Ljava/lang/Object;

    sget-object v2, Lg/dnd;->ENCODED_ANNOTATION:Lg/dnd;

    if-ne v0, v2, :cond_0

    check-cast v1, Lg/fpa;

    iget-object v0, v1, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ghr;

    invoke-virtual {p0, p1, v2}, Lg/dxg;->i(Lg/cci;Lg/ghr;)Lg/ghr;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lg/dnd;->ENCODED_ARRAY:Lg/dnd;

    if-ne v0, v2, :cond_2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lg/fcr;

    invoke-direct {p2, p0, p1}, Lg/fcr;-><init>(Lg/dxg;Lg/cci;)V

    invoke-static {v1, p2}, Lj$/util/List$b;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    :cond_1
    new-instance p1, Lg/ghr;

    invoke-direct {p1, v2, v1}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lg/ghr;

    sget-object v0, Lg/dnd;->ENCODED_FIELD:Lg/dnd;

    invoke-interface {p1}, Lg/chf;->c()Lg/dsj;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    :cond_3
    return-object p2
.end method

.method public final j(Lg/hed;)V
    .locals 17

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lg/hed;->ar:Z

    if-eqz v1, :cond_0

    goto/16 :goto_18

    :cond_0
    new-instance v1, Lg/fpd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/fpd;-><init>(Lg/hed;I)V

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    iget-object v4, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v7, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    iput-object v7, v1, Lg/fpd;->d:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2a

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    sget-object v11, Lg/cho;->a:[I

    iget-object v12, v10, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    :cond_1
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_14

    :pswitch_0
    check-cast v10, Lg/adz;

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->IGET:Lg/hay;

    if-ne v11, v12, :cond_2

    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v10, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    sget-object v12, Lg/csv;->SUPER:Lg/csv;

    iget-object v13, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto/16 :goto_7

    :cond_3
    instance-of v12, v11, Lg/cly;

    if-eqz v12, :cond_4

    move-object v12, v11

    check-cast v12, Lg/cly;

    iget-object v12, v12, Lg/cly;->a:Lg/eek;

    iget-object v12, v12, Lg/eek;->ah:Lg/hay;

    sget-object v13, Lg/hay;->CAST:Lg/hay;

    if-ne v12, v13, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v12, v10, Lg/adz;->a:Ljava/lang/Object;

    check-cast v12, Lg/dsj;

    iget-object v13, v12, Lg/dsj;->d:Lg/ve;

    iget-object v13, v13, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v11}, Lg/flv;->j()Lg/cwx;

    move-result-object v14

    invoke-static {v13, v14}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object v15, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v15, v12}, Lg/dwg;->ag(Lg/dsj;)Lg/hcd;

    move-result-object v12

    if-nez v12, :cond_6

    iget-object v12, v15, Lg/dwg;->u:Lg/cag;

    iget-object v12, v12, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v12, v14, v13}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v12

    invoke-virtual {v12}, Lg/dho;->d()Z

    move-result v15

    if-nez v15, :cond_f

    sget-object v15, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v12, v15, :cond_e

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v14, Lg/btl;

    if-nez v12, :cond_e

    goto/16 :goto_7

    :cond_6
    iget-object v14, v12, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v14}, Lg/gqc;->an()Z

    move-result v16

    if-eqz v16, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v12, v12, Lg/hcd;->f:Lg/cci;

    invoke-virtual {v3, v12}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    iget-object v2, v0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v2}, Lg/gqc;->be()Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v14}, Lg/gqc;->al()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v2}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v12, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v6}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    iget v2, v14, Lg/gqc;->ab:I

    and-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, v15, Lg/dwg;->u:Lg/cag;

    iget-object v2, v2, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lg/cci;->au()Lg/cwx;

    move-result-object v6

    invoke-virtual {v12}, Lg/cci;->au()Lg/cwx;

    move-result-object v12

    if-eq v6, v12, :cond_d

    invoke-static {v6, v12}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v2, v6, v12}, Lg/cwm;->j(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v2

    goto :goto_5

    :cond_d
    :goto_4
    sget-object v2, Lg/dho;->EQUAL:Lg/dho;

    :goto_5
    sget-object v6, Lg/dho;->NARROW:Lg/dho;

    if-ne v2, v6, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    new-instance v2, Lg/adz;

    sget-object v6, Lg/hay;->CAST:Lg/hay;

    const/4 v12, 0x1

    invoke-direct {v2, v6, v13, v12}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v11}, Lg/gsh;->b()Lg/gsh;

    move-result-object v6

    invoke-virtual {v2, v6}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v6, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v2, v6}, Lg/lh;->w(Lg/csv;)V

    sget-object v6, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v2, v6}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v2}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2, v13}, Lg/flv;->f(Lg/cwx;)V

    invoke-virtual {v10, v11, v2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    invoke-static {v0, v11}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    :cond_f
    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v10, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Lg/flv;->j()Lg/cwx;

    move-result-object v2

    sget-object v11, Lg/cwx;->at:Lg/cff;

    if-ne v2, v11, :cond_f

    iget-object v2, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v2}, Lg/gks;->j()Lg/cwx;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v2, Lg/cff;

    if-eqz v11, :cond_f

    iget-object v10, v10, Lg/eek;->ai:Lg/gks;

    invoke-static {v10, v6, v2}, Lg/dxg;->d(Lg/gks;Lg/gsh;Lg/cwx;)Lg/dwk;

    move-result-object v2

    invoke-static {v0, v5, v9, v2}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    goto :goto_7

    :pswitch_2
    check-cast v10, Lg/adz;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Lg/gsh;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v10, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_7

    :cond_10
    iget-object v2, v10, Lg/adz;->a:Ljava/lang/Object;

    check-cast v2, Lg/cwx;

    iget-object v11, v3, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v6}, Lg/flv;->j()Lg/cwx;

    move-result-object v12

    sget-object v13, Lg/cwx;->an:Lg/cff;

    invoke-virtual {v12, v2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto :goto_8

    :cond_11
    iget-object v11, v11, Lg/dwg;->u:Lg/cag;

    iget-object v11, v11, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v11, v12, v2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v2

    invoke-virtual {v2}, Lg/dho;->e()Z

    move-result v2

    const/4 v12, 0x1

    xor-int/2addr v2, v12

    :goto_8
    if-nez v2, :cond_12

    iget-object v2, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v6}, Lg/flv;->j()Lg/cwx;

    move-result-object v10

    invoke-virtual {v2, v10}, Lg/gks;->f(Lg/cwx;)V

    new-instance v10, Lg/eek;

    sget-object v11, Lg/hay;->MOVE:Lg/hay;

    invoke-direct {v10, v11, v12}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v10, v2}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v10, v6}, Lg/eek;->_an(Lg/gsh;)V

    invoke-static {v0, v5, v9, v10}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v6, Lg/gks;

    if-eqz v2, :cond_13

    check-cast v6, Lg/gks;

    iget-object v2, v6, Lg/gks;->a:Lg/vm;

    if-eqz v2, :cond_13

    iget-object v6, v2, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_13

    invoke-virtual {v2}, Lg/vm;->t()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v2, v2, Lg/vm;->c:Lg/gks;

    iget-object v2, v2, Lg/gsh;->ae:Lg/eek;

    if-eqz v2, :cond_13

    iget-object v6, v2, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->CHECK_CAST:Lg/hay;

    if-ne v6, v11, :cond_13

    move-object v6, v2

    check-cast v6, Lg/adz;

    iget-object v6, v6, Lg/adz;->a:Ljava/lang/Object;

    check-cast v6, Lg/cwx;

    iget-object v10, v10, Lg/adz;->a:Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_f

    new-instance v6, Lg/eek;

    sget-object v10, Lg/hay;->MOVE:Lg/hay;

    const/4 v12, 0x1

    invoke-direct {v6, v10, v12}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v10, v2, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v6, v10}, Lg/eek;->ax(Lg/gks;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v11

    invoke-virtual {v6, v11}, Lg/eek;->_an(Lg/gsh;)V

    invoke-static {v0, v5, v2, v6}, Lg/ffb;->bw(Lg/hed;Lg/fza;Lg/eek;Lg/eek;)Z

    goto/16 :goto_7

    :pswitch_3
    iget-object v2, v10, Lg/eek;->ai:Lg/gks;

    iget-object v2, v2, Lg/gks;->a:Lg/vm;

    iget-object v2, v2, Lg/vm;->d:Ljava/util/ArrayList;

    new-instance v6, Lg/brj;

    const/16 v11, 0x8

    invoke-direct {v6, v11}, Lg/brj;-><init>(I)V

    invoke-static {v2, v6}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gks;

    iget-object v11, v6, Lg/gsh;->ae:Lg/eek;

    if-eqz v11, :cond_14

    invoke-virtual {v10}, Lg/eek;->_o()Lg/eek;

    move-result-object v12

    invoke-static {v12}, Lg/gsh;->ah(Lg/eek;)Lg/gsh;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Failed to inline CMP insn: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " into "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v1, v10}, Lg/fpd;->v(Lg/eek;)V

    goto/16 :goto_7

    :pswitch_4
    check-cast v10, Lg/ame;

    iget-object v2, v10, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_16

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v2, Lg/ekh;

    if-eqz v6, :cond_f

    move-object v6, v2

    check-cast v6, Lg/ekh;

    invoke-virtual {v3, v6}, Lg/cci;->bo(Lg/ekh;)Lg/chf;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v11, Lg/adz;

    sget-object v12, Lg/hay;->SGET:Lg/hay;

    invoke-interface {v6}, Lg/chf;->c()Lg/dsj;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-static {v11}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v6, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    goto/16 :goto_7

    :cond_16
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid args count in insn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    sget-object v2, Lg/acq;->bh:Lg/acq;

    iget-object v6, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/eng;

    if-nez v2, :cond_17

    goto/16 :goto_7

    :cond_17
    iget-object v2, v2, Lg/eng;->a:Lg/aea;

    iget-object v6, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v2}, Lg/aea;->l()Lg/cwx;

    move-result-object v11

    invoke-virtual {v2}, Lg/aea;->m()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "th"

    goto :goto_a

    :cond_18
    const-string v12, "e"

    :goto_a
    invoke-virtual {v6}, Lg/gks;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_19

    invoke-virtual {v6, v12}, Lg/gks;->c(Ljava/lang/String;)V

    :cond_19
    iget-object v6, v10, Lg/eek;->ai:Lg/gks;

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    iget-object v13, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1a

    new-instance v6, Lg/add;

    invoke-direct {v6, v12, v11}, Lg/add;-><init>(Ljava/lang/String;Lg/cwx;)V

    iput-object v6, v2, Lg/aea;->f:Lg/gsh;

    invoke-virtual {v1, v10}, Lg/fpd;->v(Lg/eek;)V

    goto :goto_b

    :cond_1a
    invoke-virtual {v6}, Lg/vm;->t()Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v6, Lg/eek;

    sget-object v13, Lg/hay;->MOVE:Lg/hay;

    const/4 v14, 0x1

    invoke-direct {v6, v13, v14}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v13, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v6, v13}, Lg/eek;->ax(Lg/gks;)V

    new-instance v13, Lg/add;

    invoke-direct {v13, v12, v11}, Lg/add;-><init>(Ljava/lang/String;Lg/cwx;)V

    invoke-virtual {v6, v13}, Lg/eek;->_an(Lg/gsh;)V

    iput-object v13, v2, Lg/aea;->f:Lg/gsh;

    const/4 v2, 0x0

    invoke-static {v0, v5, v2, v6}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    :cond_1b
    :goto_b
    sget-object v2, Lg/acq;->u:Lg/acq;

    invoke-virtual {v5, v10, v2}, Lg/lh;->q(Lg/ccm;Lg/acq;)V

    goto/16 :goto_7

    :pswitch_6
    move-object v2, v10

    check-cast v2, Lg/dem;

    iget-object v6, v10, Lg/eek;->ai:Lg/gks;

    invoke-static {v6}, Lg/dxg;->g(Lg/gks;)Lg/eek;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v10, v6, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->FILL_ARRAY:Lg/hay;

    if-ne v10, v11, :cond_f

    move-object v10, v6

    check-cast v10, Lg/og;

    iget-object v11, v10, Lg/og;->_ao:Lg/mt;

    iget v11, v11, Lg/mt;->_al:I

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v12

    iget-object v13, v3, Lg/cci;->ab:Lg/dwg;

    invoke-static {v13, v12}, Lg/ack;->f(Lg/dwg;Lg/gsh;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lg/ekh;

    if-eqz v13, :cond_f

    check-cast v12, Lg/ekh;

    iget-wide v12, v12, Lg/ekh;->a:J

    long-to-int v13, v12

    if-ne v11, v13, :cond_f

    iget-object v11, v2, Lg/dem;->a:Lg/cwx;

    invoke-virtual {v11}, Lg/cwx;->k()Lg/cwx;

    move-result-object v12

    iget-object v13, v10, Lg/og;->_ao:Lg/mt;

    iget-object v13, v13, Lg/mt;->i:Lg/gnh;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v14, v12, Lg/cff;

    if-eqz v14, :cond_1c

    invoke-virtual {v12}, Lg/cwx;->f()Lg/bjt;

    move-result-object v14

    invoke-virtual {v13, v14}, Lg/gnh;->o(Lg/bjt;)Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object v13, v12

    :cond_1c
    invoke-virtual {v13, v12}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    sget-object v14, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v11, v14}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Incorrect type for fill-array insn "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v10, Lg/eek;->ag:I

    invoke-static {v14}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", element type: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", insn element type: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v13}, Lg/cwx;->h()Z

    move-result v11

    if-nez v11, :cond_20

    sget-object v11, Lg/dxg;->b:Lg/dba;

    const-string v14, "Unknown array element type: {} in mth: {}"

    invoke-interface {v11, v13, v14, v0}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lg/cwx;->h()Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-virtual {v13}, Lg/cwx;->j()Lg/cwx;

    move-result-object v12

    :goto_c
    if-eqz v12, :cond_1f

    move-object v13, v12

    goto :goto_d

    :cond_1f
    new-instance v0, Lg/gck;

    const-string v1, "Null array element type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_d
    invoke-virtual {v10, v13}, Lg/og;->_ap(Lg/cwx;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lg/fs;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v11, v12, v13}, Lg/fs;-><init>(ILg/cwx;)V

    iget-object v2, v2, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v2}, Lg/gks;->z()Lg/gks;

    move-result-object v2

    invoke-virtual {v11, v2}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ekh;

    invoke-virtual {v3, v10}, Lg/cci;->bo(Lg/ekh;)Lg/chf;

    move-result-object v12

    if-eqz v12, :cond_21

    new-instance v10, Lg/adz;

    sget-object v13, Lg/hay;->SGET:Lg/hay;

    invoke-interface {v12}, Lg/chf;->c()Lg/dsj;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v10, v13, v14, v15}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-static {v10}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v10

    invoke-virtual {v11, v10}, Lg/eek;->_an(Lg/gsh;)V

    invoke-static {v12, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    goto :goto_e

    :cond_21
    invoke-virtual {v10}, Lg/ekh;->b()Lg/gsh;

    move-result-object v10

    invoke-virtual {v11, v10}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_e

    :cond_22
    invoke-static {v0, v5, v9, v11}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    invoke-virtual {v1, v6}, Lg/fpd;->v(Lg/eek;)V

    goto/16 :goto_7

    :pswitch_7
    check-cast v10, Lg/bzm;

    invoke-virtual {v10}, Lg/bzm;->ad()Lg/bx;

    move-result-object v2

    iget-object v2, v2, Lg/bx;->c:[I

    array-length v6, v2

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v6, :cond_f

    aget v12, v2, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v3, v12, v14}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object v12

    if-eqz v12, :cond_23

    invoke-virtual {v10, v11, v12}, Lg/bzm;->ae(ILjava/lang/Object;)V

    invoke-static {v12, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :pswitch_8
    iget-object v2, v10, Lg/eek;->ah:Lg/hay;

    sget-object v6, Lg/hay;->CONST_STR:Lg/hay;

    if-ne v2, v6, :cond_24

    move-object v2, v10

    check-cast v2, Lg/epw;

    iget-object v2, v2, Lg/epw;->a:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v3, v2, v12}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object v2

    :goto_10
    move-object v6, v2

    const/4 v2, 0x0

    goto :goto_11

    :cond_24
    const/4 v12, 0x1

    sget-object v6, Lg/hay;->CONST_CLASS:Lg/hay;

    if-ne v2, v6, :cond_25

    move-object v2, v10

    check-cast v2, Lg/dkd;

    iget-object v2, v2, Lg/dkd;->a:Lg/cwx;

    invoke-virtual {v3, v2, v12}, Lg/cci;->ba(Ljava/lang/Object;Z)Lg/chf;

    move-result-object v2

    goto :goto_10

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    check-cast v6, Lg/ekh;

    invoke-virtual {v3, v6}, Lg/cci;->bo(Lg/ekh;)Lg/chf;

    move-result-object v6

    :goto_11
    if-eqz v6, :cond_1

    new-instance v11, Lg/adz;

    sget-object v12, Lg/hay;->SGET:Lg/hay;

    invoke-interface {v6}, Lg/chf;->c()Lg/dsj;

    move-result-object v13

    invoke-direct {v11, v12, v13, v2}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    iget-object v10, v10, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v11, v10}, Lg/eek;->ax(Lg/gks;)V

    invoke-static {v0, v5, v9, v11}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    invoke-static {v6, v0}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    goto/16 :goto_2

    :pswitch_9
    check-cast v10, Lg/eew;

    iget-object v6, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v6, v6, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v6, v10}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v6

    iget-object v11, v10, Lg/eek;->aj:Ljava/util/List;

    instance-of v12, v6, Lg/hed;

    if-nez v12, :cond_26

    goto/16 :goto_2

    :cond_26
    check-cast v6, Lg/hed;

    sget-object v12, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object v13, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lg/csv;->NO_SKIP_ARGS:Lg/csv;

    iget-object v13, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_27

    goto/16 :goto_2

    :cond_27
    sget-object v12, Lg/acq;->ab:Lg/acq;

    iget-object v13, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v12

    check-cast v12, Lg/cse;

    if-eqz v12, :cond_29

    iget-object v6, v6, Lg/hed;->al:Lg/ayu;

    iget-object v6, v6, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v6, :cond_1

    iget-object v13, v12, Lg/cse;->a:Ljava/util/BitSet;

    invoke-virtual {v13, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual {v10, v11}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    sget-object v14, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v13, v14}, Lg/lh;->w(Lg/csv;)V

    instance-of v14, v13, Lg/gks;

    if-eqz v14, :cond_28

    check-cast v13, Lg/gks;

    iget-object v13, v13, Lg/gks;->a:Lg/vm;

    invoke-virtual {v13}, Lg/vm;->u()Lg/ejb;

    move-result-object v13

    const/4 v14, 0x1

    iput-boolean v14, v13, Lg/ejb;->a:Z

    goto :goto_13

    :cond_28
    const/4 v14, 0x1

    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_29
    const/4 v14, 0x1

    new-instance v6, Lg/esk;

    const/16 v10, 0x14

    invoke-direct {v6, v10}, Lg/esk;-><init>(I)V

    invoke-static {v11, v6}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_2a
    invoke-virtual {v1}, Lg/fpd;->u()V

    goto/16 :goto_0

    :cond_2b
    const/4 v14, 0x1

    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    iput-object v4, v1, Lg/fpd;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    sget-object v6, Lg/cho;->a:[I

    iget-object v7, v5, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    sget-object v6, Lg/csv;->REMOVE:Lg/csv;

    iget-object v7, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v1, v5}, Lg/fpd;->v(Lg/eek;)V

    goto :goto_16

    :pswitch_a
    invoke-virtual {v1, v5}, Lg/fpd;->v(Lg/eek;)V

    goto :goto_16

    :cond_2d
    invoke-virtual {v1}, Lg/fpd;->u()V

    goto :goto_15

    :cond_2e
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :cond_2f
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v4, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->MOVE:Lg/hay;

    if-ne v6, v7, :cond_30

    iget-object v6, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6}, Lg/sm;->h()Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v5, Lg/eek;->ai:Lg/gks;

    if-eqz v6, :cond_30

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    iget-object v6, v6, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v0, v5}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {v0, v3, v5}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    const/4 v12, 0x1

    goto :goto_17

    :cond_31
    if-nez v12, :cond_2e

    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final k(Lg/cci;)Z
    .locals 3

    iget-object v0, p1, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    iget-boolean v0, v0, Lg/ur;->an:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ks;

    invoke-virtual {p0, p1, v0}, Lg/dxg;->l(Lg/cci;Lg/ks;)V

    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v0, p1, Lg/cci;->ag:Ljava/util/List;

    new-instance v1, Lg/ecm;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/ecm;-><init>(Lg/dxg;Lg/cci;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v0, p1, Lg/cci;->aj:Ljava/util/List;

    new-instance v1, Lg/ecm;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/ecm;-><init>(Lg/dxg;Lg/cci;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final l(Lg/cci;Lg/ks;)V
    .locals 3

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

    move-result-object v2

    check-cast v2, Lg/ghr;

    invoke-virtual {p0, p1, v2}, Lg/dxg;->i(Lg/cci;Lg/ghr;)Lg/ghr;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
