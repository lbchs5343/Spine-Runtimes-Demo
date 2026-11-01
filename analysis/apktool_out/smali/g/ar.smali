.class public final Lg/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lg/aep;

.field public c:Ljava/util/ArrayList;

.field public d:Lg/aep;

.field public e:Lg/gri;

.field public f:Z

.field public g:Z

.field public h:Lg/dcu;


# virtual methods
.method public final i(Lg/aep;I)I
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v3, v1, Lg/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    if-ge v7, v4, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fld;

    iget-object v10, v10, Lg/fld;->a:Lg/mi;

    instance-of v11, v10, Lg/gnk;

    if-eqz v11, :cond_0

    move-object v11, v10

    check-cast v11, Lg/gnk;

    iget v11, v11, Lg/mi;->e:I

    if-eq v11, v2, :cond_2

    :goto_1
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-wide v0, v5

    goto/16 :goto_8

    :cond_0
    if-nez v2, :cond_1

    instance-of v11, v10, Lg/dza;

    if-nez v11, :cond_2

    goto :goto_1

    :cond_1
    instance-of v11, v10, Lg/fju;

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v11, v0, Lg/brh;->be:Lg/dza;

    :goto_2
    iget-object v11, v11, Lg/mi;->a:Lg/big;

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lg/brh;->bi:Lg/fju;

    goto :goto_2

    :goto_3
    if-nez v2, :cond_4

    iget-object v12, v0, Lg/brh;->be:Lg/dza;

    :goto_4
    iget-object v12, v12, Lg/mi;->f:Lg/big;

    goto :goto_5

    :cond_4
    iget-object v12, v0, Lg/brh;->bi:Lg/fju;

    goto :goto_4

    :goto_5
    iget-object v13, v10, Lg/mi;->a:Lg/big;

    iget-object v14, v10, Lg/mi;->f:Lg/big;

    iget-object v15, v13, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    iget-object v15, v14, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v10}, Lg/mi;->s()J

    move-result-wide v15

    if-eqz v11, :cond_a

    if-eqz v12, :cond_a

    invoke-static {v13, v5, v6}, Lg/fld;->d(Lg/big;J)J

    move-result-wide v11

    invoke-static {v14, v5, v6}, Lg/fld;->c(Lg/big;J)J

    move-result-wide v0

    sub-long/2addr v11, v15

    iget v5, v14, Lg/big;->g:I

    neg-int v6, v5

    move-object/from16 v17, v3

    move/from16 v18, v4

    int-to-long v3, v6

    cmp-long v6, v11, v3

    if-ltz v6, :cond_5

    int-to-long v3, v5

    add-long/2addr v11, v3

    :cond_5
    neg-long v0, v0

    sub-long/2addr v0, v15

    iget v3, v13, Lg/big;->g:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_6

    sub-long/2addr v0, v3

    :cond_6
    iget-object v3, v10, Lg/mi;->g:Lg/brh;

    if-nez v2, :cond_7

    iget v3, v3, Lg/brh;->cp:F

    goto :goto_6

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget v3, v3, Lg/brh;->ct:F

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, -0x40800000    # -1.0f

    :goto_6
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v3

    long-to-float v1, v11

    sub-float v4, v5, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_7

    :cond_9
    const-wide/16 v0, 0x0

    :goto_7
    long-to-float v0, v0

    mul-float v1, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-long v10, v1

    invoke-static {v5, v3, v0, v4}, Lg/awf;->g(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v10, v15

    add-long/2addr v10, v0

    iget v0, v13, Lg/big;->g:I

    int-to-long v0, v0

    add-long/2addr v0, v10

    iget v3, v14, Lg/big;->g:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    goto :goto_8

    :cond_a
    move-object/from16 v17, v3

    move/from16 v18, v4

    if-eqz v11, :cond_b

    iget v0, v13, Lg/big;->g:I

    int-to-long v0, v0

    invoke-static {v13, v0, v1}, Lg/fld;->d(Lg/big;J)J

    move-result-wide v0

    iget v3, v13, Lg/big;->g:I

    int-to-long v3, v3

    add-long/2addr v3, v15

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_b
    if-eqz v12, :cond_c

    iget v0, v14, Lg/big;->g:I

    int-to-long v0, v0

    invoke-static {v14, v0, v1}, Lg/fld;->c(Lg/big;J)J

    move-result-wide v0

    iget v3, v14, Lg/big;->g:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v15

    neg-long v0, v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_c
    iget v0, v13, Lg/big;->g:I

    int-to-long v0, v0

    invoke-virtual {v10}, Lg/mi;->s()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget v0, v14, Lg/big;->g:I

    int-to-long v0, v0

    sub-long v0, v3, v0

    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, v17

    move/from16 v4, v18

    const-wide/16 v5, 0x0

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v8

    return v0
.end method

.method public final j(Lg/mi;ILjava/util/ArrayList;)V
    .locals 5

    iget-object v0, p1, Lg/mi;->a:Lg/big;

    iget-object v1, p1, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/exs;

    instance-of v4, v2, Lg/big;

    if-eqz v4, :cond_1

    check-cast v2, Lg/big;

    invoke-virtual {p0, v2, p2, p3, v3}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lg/mi;

    if-eqz v4, :cond_0

    check-cast v2, Lg/mi;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v2, p2, p3, v3}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/exs;

    instance-of v2, v1, Lg/big;

    if-eqz v2, :cond_4

    check-cast v1, Lg/big;

    invoke-virtual {p0, v1, p2, p3, v3}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lg/mi;

    if-eqz v2, :cond_3

    check-cast v1, Lg/mi;

    iget-object v1, v1, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v1, p2, p3, v3}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lg/fju;

    iget-object p1, p1, Lg/fju;->w:Lg/big;

    iget-object p1, p1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/exs;

    instance-of v1, v0, Lg/big;

    if-eqz v1, :cond_6

    check-cast v0, Lg/big;

    invoke-virtual {p0, v0, p2, p3, v3}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V
    .locals 6

    iget-object p1, p1, Lg/big;->c:Lg/mi;

    iget-object v0, p1, Lg/mi;->i:Lg/fld;

    iget-object v1, p1, Lg/mi;->f:Lg/big;

    iget-object v2, p1, Lg/mi;->a:Lg/big;

    if-nez v0, :cond_a

    iget-object v0, p0, Lg/ar;->d:Lg/aep;

    iget-object v3, v0, Lg/brh;->be:Lg/dza;

    if-eq p1, v3, :cond_a

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, Lg/fld;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p4, Lg/fld;->a:Lg/mi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p4, Lg/fld;->b:Ljava/util/ArrayList;

    iput-object p1, p4, Lg/fld;->a:Lg/mi;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p4, p1, Lg/mi;->i:Lg/fld;

    iget-object v0, p4, Lg/fld;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/exs;

    instance-of v4, v3, Lg/big;

    if-eqz v4, :cond_2

    check-cast v3, Lg/big;

    invoke-virtual {p0, v3, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/exs;

    instance-of v4, v3, Lg/big;

    if-eqz v4, :cond_4

    check-cast v3, Lg/big;

    invoke-virtual {p0, v3, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    instance-of v3, p1, Lg/fju;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lg/fju;

    iget-object v3, v3, Lg/fju;->w:Lg/big;

    iget-object v3, v3, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/exs;

    instance-of v5, v4, Lg/big;

    if-eqz v5, :cond_6

    check-cast v4, Lg/big;

    invoke-virtual {p0, v4, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_2

    :cond_7
    iget-object v2, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    invoke-virtual {p0, v3, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_3

    :cond_8
    iget-object v1, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/big;

    invoke-virtual {p0, v2, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V

    goto :goto_4

    :cond_9
    if-ne p2, v0, :cond_a

    instance-of v0, p1, Lg/fju;

    if-eqz v0, :cond_a

    check-cast p1, Lg/fju;

    iget-object p1, p1, Lg/fju;->w:Lg/big;

    iget-object p1, p1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/big;

    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lg/ar;->k(Lg/big;ILjava/util/ArrayList;Lg/fld;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    :cond_a
    :goto_6
    return-void
.end method

.method public final l(Lg/brh;Lg/fol;ILg/fol;I)V
    .locals 1

    iget-object v0, p0, Lg/ar;->h:Lg/dcu;

    iput-object p2, v0, Lg/dcu;->d:Lg/fol;

    iput-object p4, v0, Lg/dcu;->g:Lg/fol;

    iput p3, v0, Lg/dcu;->i:I

    iput p5, v0, Lg/dcu;->b:I

    iget-object p2, p0, Lg/ar;->e:Lg/gri;

    invoke-virtual {p2, p1, v0}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget p2, v0, Lg/dcu;->c:I

    invoke-virtual {p1, p2}, Lg/brh;->ed(I)V

    iget p2, v0, Lg/dcu;->e:I

    invoke-virtual {p1, p2}, Lg/brh;->dj(I)V

    iget-boolean p2, v0, Lg/dcu;->a:Z

    iput-boolean p2, p1, Lg/brh;->cx:Z

    iget p2, v0, Lg/dcu;->j:I

    invoke-virtual {p1, p2}, Lg/brh;->ee(I)V

    return-void
.end method

.method public final m(Lg/aep;)V
    .locals 22

    move-object/from16 v0, p1

    iget-object v1, v0, Lg/aep;->x:Ljava/util/ArrayList;

    iget-object v2, v0, Lg/brh;->ch:[Lg/fol;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lg/brh;

    iget-object v3, v5, Lg/brh;->ch:[Lg/fol;

    iget-object v4, v5, Lg/brh;->ax:[Lg/hac;

    iget-object v6, v5, Lg/brh;->as:Lg/hac;

    iget-object v7, v5, Lg/brh;->bx:Lg/hac;

    iget-object v8, v5, Lg/brh;->br:Lg/hac;

    iget-object v9, v5, Lg/brh;->cw:Lg/hac;

    const/4 v10, 0x0

    aget-object v11, v3, v10

    const/4 v12, 0x1

    aget-object v3, v3, v12

    iget v13, v5, Lg/brh;->aq:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_0

    iput-boolean v12, v5, Lg/brh;->bk:Z

    goto :goto_0

    :cond_0
    iget v13, v5, Lg/brh;->bu:F

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x2

    cmpg-float v16, v13, v14

    if-gez v16, :cond_1

    const/16 v16, 0x0

    sget-object v10, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v11, v10, :cond_2

    iput v15, v5, Lg/brh;->da:I

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :cond_2
    :goto_1
    iget v10, v5, Lg/brh;->am:F

    cmpg-float v17, v10, v14

    if-gez v17, :cond_3

    const/high16 v17, 0x3f800000    # 1.0f

    sget-object v14, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v3, v14, :cond_4

    iput v15, v5, Lg/brh;->by:I

    goto :goto_2

    :cond_3
    const/high16 v17, 0x3f800000    # 1.0f

    :cond_4
    :goto_2
    iget v14, v5, Lg/brh;->bq:F

    const/16 v18, 0x0

    const/4 v15, 0x3

    cmpl-float v14, v14, v18

    if-lez v14, :cond_a

    sget-object v14, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v11, v14, :cond_6

    sget-object v12, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v3, v12, :cond_5

    sget-object v12, Lg/fol;->FIXED:Lg/fol;

    if-ne v3, v12, :cond_6

    :cond_5
    iput v15, v5, Lg/brh;->da:I

    goto :goto_3

    :cond_6
    if-ne v3, v14, :cond_8

    sget-object v12, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v11, v12, :cond_7

    sget-object v12, Lg/fol;->FIXED:Lg/fol;

    if-ne v11, v12, :cond_8

    :cond_7
    iput v15, v5, Lg/brh;->by:I

    goto :goto_3

    :cond_8
    if-ne v11, v14, :cond_a

    if-ne v3, v14, :cond_a

    iget v12, v5, Lg/brh;->da:I

    if-nez v12, :cond_9

    iput v15, v5, Lg/brh;->da:I

    :cond_9
    iget v12, v5, Lg/brh;->by:I

    if-nez v12, :cond_a

    iput v15, v5, Lg/brh;->by:I

    :cond_a
    :goto_3
    sget-object v12, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v11, v12, :cond_c

    iget v14, v5, Lg/brh;->da:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    iget-object v14, v9, Lg/hac;->e:Lg/hac;

    if-eqz v14, :cond_b

    iget-object v14, v8, Lg/hac;->e:Lg/hac;

    if-nez v14, :cond_c

    :cond_b
    sget-object v11, Lg/fol;->WRAP_CONTENT:Lg/fol;

    :cond_c
    if-ne v3, v12, :cond_e

    iget v14, v5, Lg/brh;->by:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    iget-object v14, v7, Lg/hac;->e:Lg/hac;

    if-eqz v14, :cond_d

    iget-object v14, v6, Lg/hac;->e:Lg/hac;

    if-nez v14, :cond_e

    :cond_d
    sget-object v3, Lg/fol;->WRAP_CONTENT:Lg/fol;

    :cond_e
    iget-object v14, v5, Lg/brh;->be:Lg/dza;

    iput-object v11, v14, Lg/mi;->b:Lg/fol;

    iget v15, v5, Lg/brh;->da:I

    iput v15, v14, Lg/mi;->d:I

    iget-object v14, v5, Lg/brh;->bi:Lg/fju;

    iput-object v3, v14, Lg/mi;->b:Lg/fol;

    iget v0, v5, Lg/brh;->by:I

    iput v0, v14, Lg/mi;->d:I

    sget-object v14, Lg/fol;->MATCH_PARENT:Lg/fol;

    move-object/from16 v21, v1

    if-eq v11, v14, :cond_f

    sget-object v1, Lg/fol;->FIXED:Lg/fol;

    if-eq v11, v1, :cond_f

    sget-object v1, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v11, v1, :cond_11

    :cond_f
    if-eq v3, v14, :cond_10

    sget-object v1, Lg/fol;->FIXED:Lg/fol;

    if-eq v3, v1, :cond_10

    sget-object v1, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v3, v1, :cond_11

    :cond_10
    move-object v4, v3

    goto/16 :goto_d

    :cond_11
    const/high16 v1, 0x3f000000    # 0.5f

    if-ne v11, v12, :cond_13

    sget-object v6, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v3, v6, :cond_12

    sget-object v7, Lg/fol;->FIXED:Lg/fol;

    if-ne v3, v7, :cond_13

    :cond_12
    const/4 v7, 0x3

    goto :goto_4

    :cond_13
    move-object v8, v3

    goto/16 :goto_6

    :goto_4
    if-ne v15, v7, :cond_16

    if-ne v3, v6, :cond_14

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    :cond_14
    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v9

    int-to-float v0, v9

    iget v3, v5, Lg/brh;->bq:F

    mul-float v0, v0, v3

    add-float/2addr v0, v1

    float-to-int v7, v0

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lg/brh;->bk:Z

    :cond_15
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    goto/16 :goto_0

    :cond_16
    move-object v7, v6

    const/4 v6, 0x1

    if-ne v15, v6, :cond_17

    const/4 v0, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v8, v3

    move-object v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    iput v1, v0, Lg/eeh;->p:I

    goto :goto_5

    :cond_17
    move-object v8, v3

    move-object v6, v7

    const/4 v3, 0x2

    if-ne v15, v3, :cond_19

    aget-object v3, v2, v16

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-eq v3, v6, :cond_18

    if-ne v3, v14, :cond_1b

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lg/brh;->eb()I

    move-result v0

    int-to-float v0, v0

    mul-float v13, v13, v0

    add-float/2addr v13, v1

    float-to-int v7, v13

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v3, 0x1

    iput-boolean v3, v5, Lg/brh;->bk:Z

    goto :goto_5

    :cond_19
    const/4 v3, 0x1

    aget-object v7, v4, v16

    iget-object v7, v7, Lg/hac;->e:Lg/hac;

    if-eqz v7, :cond_1a

    aget-object v7, v4, v3

    iget-object v3, v7, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_1b

    :cond_1a
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v15, 0x1

    iput-boolean v15, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :cond_1b
    :goto_6
    if-ne v8, v12, :cond_1d

    sget-object v6, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v11, v6, :cond_1c

    sget-object v3, Lg/fol;->FIXED:Lg/fol;

    if-ne v11, v3, :cond_1d

    :cond_1c
    const/4 v7, 0x3

    goto :goto_8

    :cond_1d
    move-object v4, v8

    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_b

    :goto_8
    if-ne v0, v7, :cond_20

    if-ne v11, v6, :cond_1e

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    :cond_1e
    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v7

    iget v0, v5, Lg/brh;->bq:F

    iget v3, v5, Lg/brh;->db:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    div-float v0, v17, v0

    :cond_1f
    int-to-float v3, v7

    mul-float v3, v3, v0

    add-float/2addr v3, v1

    float-to-int v9, v3

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v3, 0x1

    iput-boolean v3, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :cond_20
    const/4 v3, 0x1

    if-ne v0, v3, :cond_21

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v8, v6

    move-object v6, v11

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    iput v1, v0, Lg/eeh;->p:I

    goto/16 :goto_5

    :cond_21
    move-object v7, v6

    move-object v6, v11

    const/4 v9, 0x2

    if-ne v0, v9, :cond_24

    aget-object v4, v2, v3

    move-object v3, v8

    sget-object v8, Lg/fol;->FIXED:Lg/fol;

    if-eq v4, v8, :cond_23

    if-ne v4, v14, :cond_22

    goto :goto_9

    :cond_22
    move-object v4, v3

    move-object v11, v6

    goto :goto_7

    :cond_23
    :goto_9
    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lg/brh;->di()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v10, v0

    add-float/2addr v10, v1

    float-to-int v9, v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v15, 0x1

    iput-boolean v15, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :cond_24
    move-object v11, v6

    move-object v3, v8

    const/16 v19, 0x2

    aget-object v6, v4, v19

    iget-object v6, v6, Lg/hac;->e:Lg/hac;

    if-eqz v6, :cond_25

    const/16 v20, 0x3

    aget-object v4, v4, v20

    iget-object v4, v4, Lg/hac;->e:Lg/hac;

    if-nez v4, :cond_26

    :cond_25
    move-object v6, v7

    goto :goto_a

    :cond_26
    move-object v4, v3

    goto/16 :goto_7

    :goto_a
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v3, 0x1

    iput-boolean v3, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :goto_b
    if-ne v11, v12, :cond_15

    if-ne v4, v12, :cond_15

    if-eq v15, v3, :cond_28

    if-ne v0, v3, :cond_27

    goto :goto_c

    :cond_27
    const/4 v9, 0x2

    if-ne v0, v9, :cond_15

    if-ne v15, v9, :cond_15

    aget-object v0, v2, v16

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-ne v0, v6, :cond_15

    aget-object v0, v2, v3

    if-ne v0, v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Lg/brh;->eb()I

    move-result v0

    int-to-float v0, v0

    mul-float v13, v13, v0

    add-float/2addr v13, v1

    float-to-int v7, v13

    invoke-virtual/range {p1 .. p1}, Lg/brh;->di()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v10, v0

    add-float/2addr v10, v1

    float-to-int v9, v10

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v15, 0x1

    iput-boolean v15, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :cond_28
    :goto_c
    sget-object v6, Lg/fol;->WRAP_CONTENT:Lg/fol;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    iput v1, v0, Lg/eeh;->p:I

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    iput v1, v0, Lg/eeh;->p:I

    goto/16 :goto_5

    :goto_d
    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v0

    if-ne v11, v14, :cond_29

    invoke-virtual/range {p1 .. p1}, Lg/brh;->eb()I

    move-result v0

    iget v1, v9, Lg/hac;->i:I

    sub-int/2addr v0, v1

    iget v1, v8, Lg/hac;->i:I

    sub-int/2addr v0, v1

    sget-object v11, Lg/fol;->FIXED:Lg/fol;

    :cond_29
    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    if-ne v4, v14, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lg/brh;->di()I

    move-result v1

    iget v3, v7, Lg/hac;->i:I

    sub-int/2addr v1, v3

    iget v3, v6, Lg/hac;->i:I

    sub-int/2addr v1, v3

    sget-object v3, Lg/fol;->FIXED:Lg/fol;

    move-object v8, v3

    move-object/from16 v4, p0

    move v7, v0

    move v9, v1

    move-object v6, v11

    goto :goto_e

    :cond_2a
    move-object v8, v4

    move v7, v0

    move v9, v1

    move-object v6, v11

    move-object/from16 v4, p0

    :goto_e
    invoke-virtual/range {v4 .. v9}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iget-object v0, v5, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    iget-object v0, v5, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/eeh;->m(I)V

    const/4 v15, 0x1

    iput-boolean v15, v5, Lg/brh;->bk:Z

    goto/16 :goto_5

    :cond_2b
    return-void
.end method

.method public final n()V
    .locals 10

    iget-object v0, p0, Lg/ar;->d:Lg/aep;

    iget-object v1, p0, Lg/ar;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lg/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lg/ar;->b:Lg/aep;

    iget-object v4, v3, Lg/brh;->be:Lg/dza;

    invoke-virtual {v4}, Lg/dza;->r()V

    iget-object v4, v3, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v4}, Lg/fju;->r()V

    iget-object v4, v3, Lg/brh;->be:Lg/dza;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v9, v6, Lg/aar;

    if-eqz v9, :cond_1

    new-instance v7, Lg/cnr;

    invoke-direct {v7, v6}, Lg/mi;-><init>(Lg/brh;)V

    iget-object v8, v6, Lg/brh;->be:Lg/dza;

    invoke-virtual {v8}, Lg/dza;->r()V

    iget-object v8, v6, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v8}, Lg/fju;->r()V

    check-cast v6, Lg/aar;

    iget v6, v6, Lg/aar;->f:I

    iput v6, v7, Lg/mi;->e:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lg/brh;->eg()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Lg/brh;->cg:Lg/gnk;

    if-nez v9, :cond_2

    new-instance v9, Lg/gnk;

    invoke-direct {v9, v6, v8}, Lg/gnk;-><init>(Lg/brh;I)V

    iput-object v9, v6, Lg/brh;->cg:Lg/gnk;

    :cond_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v8, v6, Lg/brh;->cg:Lg/gnk;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v8, v6, Lg/brh;->be:Lg/dza;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v6}, Lg/brh;->dk()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v6, Lg/brh;->cr:Lg/gnk;

    if-nez v8, :cond_5

    new-instance v8, Lg/gnk;

    invoke-direct {v8, v6, v7}, Lg/gnk;-><init>(Lg/brh;I)V

    iput-object v8, v6, Lg/brh;->cr:Lg/gnk;

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v7, v6, Lg/brh;->cr:Lg/gnk;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v7, v6, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v7, v6, Lg/gbi;

    if-eqz v7, :cond_0

    new-instance v7, Lg/or;

    invoke-direct {v7, v6}, Lg/mi;-><init>(Lg/brh;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/mi;

    invoke-virtual {v5}, Lg/mi;->r()V

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/mi;

    iget-object v5, v4, Lg/mi;->g:Lg/brh;

    if-ne v5, v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lg/mi;->o()V

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lg/brh;->be:Lg/dza;

    invoke-virtual {p0, v2, v8, v1}, Lg/ar;->j(Lg/mi;ILjava/util/ArrayList;)V

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    invoke-virtual {p0, v0, v7, v1}, Lg/ar;->j(Lg/mi;ILjava/util/ArrayList;)V

    iput-boolean v8, p0, Lg/ar;->f:Z

    return-void
.end method

.method public final o()V
    .locals 12

    iget-object v0, p0, Lg/ar;->d:Lg/aep;

    iget-object v0, v0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/brh;

    iget-boolean v1, v3, Lg/brh;->bk:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v3, Lg/brh;->ch:[Lg/fol;

    const/4 v2, 0x0

    aget-object v8, v1, v2

    const/4 v9, 0x1

    aget-object v1, v1, v9

    iget v4, v3, Lg/brh;->da:I

    iget v5, v3, Lg/brh;->by:I

    sget-object v6, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v8, v6, :cond_3

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v8, v7, :cond_2

    if-ne v4, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eq v1, v6, :cond_4

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v1, v7, :cond_5

    if-ne v5, v9, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    iget-object v5, v3, Lg/brh;->be:Lg/dza;

    iget-object v5, v5, Lg/mi;->c:Lg/eeh;

    iget-boolean v7, v5, Lg/big;->j:Z

    iget-object v10, v3, Lg/brh;->bi:Lg/fju;

    iget-object v10, v10, Lg/mi;->c:Lg/eeh;

    iget-boolean v11, v10, Lg/big;->j:Z

    if-eqz v7, :cond_6

    if-eqz v11, :cond_6

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    iget v5, v5, Lg/big;->l:I

    iget v7, v10, Lg/big;->l:I

    move-object v6, v4

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    iput-boolean v9, v3, Lg/brh;->bk:Z

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    iget v5, v5, Lg/big;->l:I

    iget v7, v10, Lg/big;->l:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    sget-object v2, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v1, v2, :cond_7

    iget-object v1, v3, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3}, Lg/brh;->di()I

    move-result v2

    iput v2, v1, Lg/eeh;->p:I

    goto :goto_3

    :cond_7
    iget-object v1, v3, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3}, Lg/brh;->di()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/eeh;->m(I)V

    iput-boolean v9, v3, Lg/brh;->bk:Z

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v4, :cond_a

    iget v5, v5, Lg/big;->l:I

    move-object v4, v6

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    iget v7, v10, Lg/big;->l:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/ar;->l(Lg/brh;Lg/fol;ILg/fol;I)V

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v8, v1, :cond_9

    iget-object v1, v3, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3}, Lg/brh;->eb()I

    move-result v2

    iput v2, v1, Lg/eeh;->p:I

    goto :goto_3

    :cond_9
    iget-object v1, v3, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3}, Lg/brh;->eb()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/eeh;->m(I)V

    iput-boolean v9, v3, Lg/brh;->bk:Z

    :cond_a
    :goto_3
    iget-boolean v1, v3, Lg/brh;->bk:Z

    if-eqz v1, :cond_0

    iget-object v1, v3, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/fju;->x:Lg/fgk;

    if-eqz v1, :cond_0

    iget v2, v3, Lg/brh;->bn:I

    invoke-virtual {v1, v2}, Lg/eeh;->m(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
