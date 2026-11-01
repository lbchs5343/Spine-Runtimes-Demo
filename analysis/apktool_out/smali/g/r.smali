.class public final Lg/r;
.super Lg/gbi;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z


# virtual methods
.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lg/r;->d:Z

    return v0
.end method

.method public final f()I
    .locals 3

    iget v0, p0, Lg/r;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lg/bwo;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/brh;->ax:[Lg/hac;

    const/4 v3, 0x0

    iget-object v4, v0, Lg/brh;->cw:Lg/hac;

    aput-object v4, v2, v3

    const/4 v5, 0x2

    iget-object v6, v0, Lg/brh;->bx:Lg/hac;

    aput-object v6, v2, v5

    const/4 v7, 0x1

    iget-object v8, v0, Lg/brh;->br:Lg/hac;

    aput-object v8, v2, v7

    const/4 v9, 0x3

    iget-object v10, v0, Lg/brh;->as:Lg/hac;

    aput-object v10, v2, v9

    const/4 v11, 0x0

    :goto_0
    array-length v12, v2

    if-ge v11, v12, :cond_0

    aget-object v12, v2, v11

    invoke-virtual {v1, v12}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v13

    iput-object v13, v12, Lg/hac;->f:Lg/crb;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget v11, v0, Lg/r;->b:I

    if-ltz v11, :cond_1e

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1e

    aget-object v2, v2, v11

    iget-boolean v11, v0, Lg/r;->d:Z

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lg/r;->h()Z

    :cond_1
    iget-boolean v11, v0, Lg/r;->d:Z

    if-eqz v11, :cond_5

    iput-boolean v3, v0, Lg/r;->d:Z

    iget v2, v0, Lg/r;->b:I

    if-eqz v2, :cond_4

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v5, :cond_3

    if-ne v2, v9, :cond_1e

    :cond_3
    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget v3, v0, Lg/brh;->cb:I

    invoke-virtual {v1, v2, v3}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v10, Lg/hac;->f:Lg/crb;

    iget v3, v0, Lg/brh;->cb:I

    invoke-virtual {v1, v2, v3}, Lg/bwo;->v(Lg/crb;I)V

    return-void

    :cond_4
    :goto_1
    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget v3, v0, Lg/brh;->cv:I

    invoke-virtual {v1, v2, v3}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v8, Lg/hac;->f:Lg/crb;

    iget v3, v0, Lg/brh;->cv:I

    invoke-virtual {v1, v2, v3}, Lg/bwo;->v(Lg/crb;I)V

    return-void

    :cond_5
    const/4 v11, 0x0

    :goto_2
    iget v13, v0, Lg/gbi;->ev:I

    if-ge v11, v13, :cond_b

    iget-object v13, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v13, v13, v11

    iget-boolean v14, v0, Lg/r;->a:Z

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lg/brh;->j()Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_4

    :cond_6
    iget v14, v0, Lg/r;->b:I

    if-eqz v14, :cond_7

    if-ne v14, v7, :cond_8

    :cond_7
    iget-object v15, v13, Lg/brh;->ch:[Lg/fol;

    aget-object v15, v15, v3

    sget-object v12, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v15, v12, :cond_8

    iget-object v12, v13, Lg/brh;->cw:Lg/hac;

    iget-object v12, v12, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_8

    iget-object v12, v13, Lg/brh;->br:Lg/hac;

    iget-object v12, v12, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_8

    :goto_3
    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    if-eq v14, v5, :cond_9

    if-ne v14, v9, :cond_a

    :cond_9
    iget-object v12, v13, Lg/brh;->ch:[Lg/fol;

    aget-object v12, v12, v7

    sget-object v14, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v12, v14, :cond_a

    iget-object v12, v13, Lg/brh;->bx:Lg/hac;

    iget-object v12, v12, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_a

    iget-object v12, v13, Lg/brh;->as:Lg/hac;

    iget-object v12, v12, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    goto :goto_2

    :cond_b
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v4}, Lg/hac;->u()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v8}, Lg/hac;->u()Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v12, 0x1

    :goto_7
    invoke-virtual {v6}, Lg/hac;->u()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v10}, Lg/hac;->u()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_8

    :cond_e
    const/4 v13, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v13, 0x1

    :goto_9
    if-nez v11, :cond_14

    iget v11, v0, Lg/r;->b:I

    if-nez v11, :cond_10

    if-nez v12, :cond_13

    :cond_10
    if-ne v11, v5, :cond_11

    if-nez v13, :cond_13

    :cond_11
    if-ne v11, v7, :cond_12

    if-nez v12, :cond_13

    :cond_12
    if-ne v11, v9, :cond_14

    if-eqz v13, :cond_14

    :cond_13
    const/4 v11, 0x1

    goto :goto_a

    :cond_14
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_15

    const/4 v11, 0x4

    goto :goto_b

    :cond_15
    const/4 v11, 0x5

    :goto_b
    const/4 v12, 0x0

    :goto_c
    iget v13, v0, Lg/gbi;->ev:I

    if-ge v12, v13, :cond_1a

    iget-object v13, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v13, v13, v12

    iget-boolean v14, v0, Lg/r;->a:Z

    if-nez v14, :cond_16

    invoke-virtual {v13}, Lg/brh;->j()Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_10

    :cond_16
    iget-object v14, v13, Lg/brh;->ax:[Lg/hac;

    iget v15, v0, Lg/r;->b:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v14

    iget-object v13, v13, Lg/brh;->ax:[Lg/hac;

    iget v15, v0, Lg/r;->b:I

    aget-object v13, v13, v15

    iput-object v14, v13, Lg/hac;->f:Lg/crb;

    iget-object v9, v13, Lg/hac;->e:Lg/hac;

    if-eqz v9, :cond_17

    iget-object v9, v9, Lg/hac;->b:Lg/brh;

    if-ne v9, v0, :cond_17

    iget v9, v13, Lg/hac;->i:I

    goto :goto_d

    :cond_17
    const/4 v9, 0x0

    :goto_d
    if-eqz v15, :cond_19

    if-ne v15, v5, :cond_18

    goto :goto_e

    :cond_18
    iget-object v13, v2, Lg/hac;->f:Lg/crb;

    iget v15, v0, Lg/r;->c:I

    add-int/2addr v15, v9

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v5

    invoke-virtual {v1}, Lg/bwo;->ac()Lg/crb;

    move-result-object v7

    iput v3, v7, Lg/crb;->g:I

    invoke-virtual {v5, v13, v14, v7, v15}, Lg/gz;->l(Lg/crb;Lg/crb;Lg/crb;I)V

    invoke-virtual {v1, v5}, Lg/bwo;->ai(Lg/gz;)V

    goto :goto_f

    :cond_19
    :goto_e
    iget-object v5, v2, Lg/hac;->f:Lg/crb;

    iget v7, v0, Lg/r;->c:I

    sub-int/2addr v7, v9

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v13

    invoke-virtual {v1}, Lg/bwo;->ac()Lg/crb;

    move-result-object v15

    iput v3, v15, Lg/crb;->g:I

    invoke-virtual {v13, v5, v14, v15, v7}, Lg/gz;->m(Lg/crb;Lg/crb;Lg/crb;I)V

    invoke-virtual {v1, v13}, Lg/bwo;->ai(Lg/gz;)V

    :goto_f
    iget-object v5, v2, Lg/hac;->f:Lg/crb;

    iget v7, v0, Lg/r;->c:I

    add-int/2addr v7, v9

    invoke-virtual {v1, v5, v14, v7, v11}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x3

    goto :goto_c

    :cond_1a
    iget v2, v0, Lg/r;->b:I

    const/16 v5, 0x8

    if-nez v2, :cond_1b

    iget-object v2, v8, Lg/hac;->f:Lg/crb;

    iget-object v6, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v6, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v5, v0, Lg/brh;->bj:Lg/brh;

    iget-object v5, v5, Lg/brh;->br:Lg/hac;

    iget-object v5, v5, Lg/hac;->f:Lg/crb;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->cw:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v3}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    return-void

    :cond_1b
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1c

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v6, v8, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v6, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v5, v0, Lg/brh;->bj:Lg/brh;

    iget-object v5, v5, Lg/brh;->cw:Lg/hac;

    iget-object v5, v5, Lg/hac;->f:Lg/crb;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->br:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v3}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    return-void

    :cond_1c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    iget-object v2, v10, Lg/hac;->f:Lg/crb;

    iget-object v4, v6, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->as:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->bx:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v3}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    return-void

    :cond_1d
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1e

    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget-object v4, v10, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->bx:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v2, v6, Lg/hac;->f:Lg/crb;

    iget-object v4, v0, Lg/brh;->bj:Lg/brh;

    iget-object v4, v4, Lg/brh;->as:Lg/hac;

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v2, v4, v3, v3}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_1e
    return-void
.end method

.method public final h()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lg/gbi;->ev:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lg/gbi;->ew:[Lg/brh;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lg/r;->a:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lg/brh;->j()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, Lg/r;->b:I

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_2

    :cond_1
    invoke-virtual {v4}, Lg/brh;->i()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v7, p0, Lg/r;->b:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Lg/brh;->e()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    if-lez v4, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    iget v4, p0, Lg/gbi;->ev:I

    if-ge v1, v4, :cond_10

    iget-object v4, p0, Lg/gbi;->ew:[Lg/brh;

    aget-object v4, v4, v1

    iget-boolean v7, p0, Lg/r;->a:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lg/brh;->j()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_b

    iget v3, p0, Lg/r;->b:I

    if-nez v3, :cond_7

    sget-object v2, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v4, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v0, :cond_8

    sget-object v2, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v4, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    sget-object v2, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v4, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    sget-object v2, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v4, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    :cond_a
    :goto_4
    const/4 v3, 0x1

    :cond_b
    iget v7, p0, Lg/r;->b:I

    if-nez v7, :cond_c

    sget-object v7, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v4, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v7, v0, :cond_d

    sget-object v7, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v4, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v7, v6, :cond_e

    sget-object v7, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v4, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v7, v5, :cond_f

    sget-object v7, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v4, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_10
    iget v1, p0, Lg/r;->c:I

    add-int/2addr v2, v1

    iget v1, p0, Lg/r;->b:I

    if-eqz v1, :cond_12

    if-ne v1, v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v2, v2}, Lg/brh;->dt(II)V

    goto :goto_7

    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Lg/brh;->dx(II)V

    :goto_7
    iput-boolean v0, p0, Lg/r;->d:Z

    return v0

    :cond_13
    return v1
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lg/r;->d:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Barrier] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/brh;->an:Ljava/lang/String;

    const-string v2, " {"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg/gbi;->ev:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lg/gbi;->ew:[Lg/brh;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-static {v0, v3}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
