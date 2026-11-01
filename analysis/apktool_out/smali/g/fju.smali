.class public final Lg/fju;
.super Lg/mi;
.source "SourceFile"


# instance fields
.field public w:Lg/big;

.field public x:Lg/fgk;


# virtual methods
.method public final n()Z
    .locals 3

    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget v0, v0, Lg/brh;->by:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final o()V
    .locals 14

    iget-object v0, p0, Lg/fju;->w:Lg/big;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v2, v1, Lg/brh;->bk:Z

    iget-object v3, p0, Lg/mi;->c:Lg/eeh;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v3, v1}, Lg/eeh;->m(I)V

    :cond_0
    iget-boolean v1, v3, Lg/big;->j:Z

    const/4 v2, 0x1

    iget-object v4, p0, Lg/mi;->f:Lg/big;

    iget-object v5, p0, Lg/mi;->a:Lg/big;

    if-nez v1, :cond_3

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v1, Lg/brh;->ch:[Lg/fol;

    aget-object v6, v6, v2

    iput-object v6, p0, Lg/mi;->b:Lg/fol;

    iget-boolean v1, v1, Lg/brh;->cx:Z

    if-eqz v1, :cond_1

    new-instance v1, Lg/fgk;

    invoke-direct {v1, p0}, Lg/eeh;-><init>(Lg/mi;)V

    iput-object v1, p0, Lg/fju;->x:Lg/fgk;

    :cond_1
    iget-object v1, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-eq v1, v6, :cond_4

    sget-object v6, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v1, v6, :cond_2

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->bj:Lg/brh;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v7, v2

    sget-object v8, Lg/fol;->FIXED:Lg/fol;

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Lg/brh;->di()I

    move-result v0

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v6, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->a:Lg/big;

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v2, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    invoke-static {v5, v1, v2}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, v6, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->f:Lg/big;

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v2, Lg/brh;->as:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    neg-int v2, v2

    invoke-static {v4, v1, v2}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {v3, v0}, Lg/eeh;->m(I)V

    return-void

    :cond_2
    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v1

    invoke-virtual {v3, v1}, Lg/eeh;->m(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v1, Lg/brh;->bj:Lg/brh;

    if-eqz v6, :cond_4

    iget-object v7, v6, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v7, v2

    sget-object v8, Lg/fol;->FIXED:Lg/fol;

    if-ne v7, v8, :cond_4

    iget-object v0, v6, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    iget-object v1, v1, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    invoke-static {v5, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v0, v6, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    invoke-static {v4, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, v3, Lg/big;->j:Z

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v1, :cond_d

    iget-object v10, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v11, v10, Lg/brh;->bk:Z

    if-eqz v11, :cond_d

    iget-object v1, v10, Lg/brh;->ax:[Lg/hac;

    aget-object v11, v1, v8

    iget-object v12, v11, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_8

    aget-object v13, v1, v9

    iget-object v13, v13, Lg/hac;->e:Lg/hac;

    if-eqz v13, :cond_8

    invoke-virtual {v10}, Lg/brh;->dk()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    iput v1, v5, Lg/big;->g:I

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    iput v1, v4, Lg/big;->g:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v8

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lg/mi;->g:Lg/brh;

    iget-object v3, v3, Lg/brh;->ax:[Lg/hac;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v3

    invoke-static {v5, v1, v3}, Lg/mi;->m(Lg/big;Lg/big;I)V

    :cond_6
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v9

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, p0, Lg/mi;->g:Lg/brh;

    iget-object v3, v3, Lg/brh;->ax:[Lg/hac;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v3

    neg-int v3, v3

    invoke-static {v4, v1, v3}, Lg/mi;->m(Lg/big;Lg/big;I)V

    :cond_7
    iput-boolean v2, v5, Lg/big;->i:Z

    iput-boolean v2, v4, Lg/big;->i:Z

    :goto_1
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v2, v1, Lg/brh;->cx:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lg/brh;->bn:I

    invoke-static {v0, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_8
    if-eqz v12, :cond_9

    invoke-static {v11}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    invoke-static {v5, v1, v2}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v1, v3, Lg/big;->l:I

    invoke-static {v4, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v2, v1, Lg/brh;->cx:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lg/brh;->bn:I

    invoke-static {v0, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_9
    aget-object v2, v1, v9

    iget-object v8, v2, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_b

    invoke-static {v2}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    neg-int v2, v2

    invoke-static {v4, v1, v2}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v1, v3, Lg/big;->l:I

    neg-int v1, v1

    invoke-static {v5, v4, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    :cond_a
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v2, v1, Lg/brh;->cx:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lg/brh;->bn:I

    invoke-static {v0, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_b
    aget-object v1, v1, v7

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_c

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v0, v1, v6}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget v1, v1, Lg/brh;->bn:I

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v0, v3, Lg/big;->l:I

    invoke-static {v4, v5, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_c
    instance-of v1, v10, Lg/gbi;

    if-nez v1, :cond_1e

    iget-object v1, v10, Lg/brh;->bj:Lg/brh;

    if-eqz v1, :cond_1e

    sget-object v1, Lg/dih;->CENTER:Lg/dih;

    invoke-virtual {v10, v1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v1

    iget-object v1, v1, Lg/hac;->e:Lg/hac;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v1, Lg/brh;->bj:Lg/brh;

    iget-object v2, v2, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    invoke-virtual {v1}, Lg/brh;->dy()I

    move-result v1

    invoke-static {v5, v2, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v1, v3, Lg/big;->l:I

    invoke-static {v4, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v2, v1, Lg/brh;->cx:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lg/brh;->bn:I

    invoke-static {v0, v5, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_d
    if-nez v1, :cond_12

    iget-object v1, p0, Lg/mi;->b:Lg/fol;

    sget-object v10, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v1, v10, :cond_12

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget v10, v1, Lg/brh;->by:I

    if-eq v10, v8, :cond_10

    if-eq v10, v9, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lg/brh;->dk()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget v10, v1, Lg/brh;->da:I

    if-ne v10, v9, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, v1, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    iget-object v10, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v3, Lg/big;->i:Z

    iget-object v1, v3, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    iget-object v1, v1, Lg/brh;->bj:Lg/brh;

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, v1, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    iget-object v10, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v3, Lg/big;->i:Z

    iget-object v1, v3, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v3, p0}, Lg/big;->n(Lg/mi;)V

    :cond_13
    :goto_2
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v10, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v11, v10, v8

    iget-object v12, v11, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_17

    aget-object v13, v10, v9

    iget-object v13, v13, Lg/hac;->e:Lg/hac;

    if-eqz v13, :cond_17

    invoke-virtual {v1}, Lg/brh;->dk()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    iput v1, v5, Lg/big;->g:I

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    iput v1, v4, Lg/big;->g:I

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v8

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    iget-object v4, p0, Lg/mi;->g:Lg/brh;

    iget-object v4, v4, Lg/brh;->ax:[Lg/hac;

    aget-object v4, v4, v9

    invoke-static {v4}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v4

    if-eqz v1, :cond_15

    invoke-virtual {v1, p0}, Lg/big;->n(Lg/mi;)V

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v4, p0}, Lg/big;->n(Lg/mi;)V

    :cond_16
    sget-object v1, Lg/dnl;->CENTER:Lg/dnl;

    iput-object v1, p0, Lg/mi;->h:Lg/dnl;

    :goto_3
    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v1, v1, Lg/brh;->cx:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lg/fju;->x:Lg/fgk;

    invoke-virtual {p0, v0, v5, v2, v1}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    goto/16 :goto_4

    :cond_17
    const/4 v13, 0x0

    if-eqz v12, :cond_19

    invoke-static {v11}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->ax:[Lg/hac;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v6

    invoke-static {v5, v1, v6}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {p0, v4, v5, v2, v3}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v1, v1, Lg/brh;->cx:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lg/fju;->x:Lg/fgk;

    invoke-virtual {p0, v0, v5, v2, v1}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    :cond_18
    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget v4, v0, Lg/brh;->bq:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_1d

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v4, v0, Lg/mi;->b:Lg/fol;

    if-ne v4, v1, :cond_1d

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lg/big;->f:Lg/mi;

    goto/16 :goto_4

    :cond_19
    aget-object v8, v10, v9

    iget-object v11, v8, Lg/hac;->e:Lg/hac;

    const/4 v12, -0x1

    if-eqz v11, :cond_1a

    invoke-static {v8}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->ax:[Lg/hac;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v6

    neg-int v6, v6

    invoke-static {v4, v1, v6}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {p0, v5, v4, v12, v3}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v1, v1, Lg/brh;->cx:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lg/fju;->x:Lg/fgk;

    invoke-virtual {p0, v0, v5, v2, v1}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    goto :goto_4

    :cond_1a
    aget-object v7, v10, v7

    iget-object v8, v7, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_1b

    invoke-static {v7}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0, v1, v6}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, p0, Lg/fju;->x:Lg/fgk;

    invoke-virtual {p0, v5, v0, v12, v1}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    invoke-virtual {p0, v4, v5, v2, v3}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    goto :goto_4

    :cond_1b
    instance-of v6, v1, Lg/gbi;

    if-nez v6, :cond_1d

    iget-object v6, v1, Lg/brh;->bj:Lg/brh;

    if-eqz v6, :cond_1d

    iget-object v6, v6, Lg/brh;->bi:Lg/fju;

    iget-object v6, v6, Lg/mi;->a:Lg/big;

    invoke-virtual {v1}, Lg/brh;->dy()I

    move-result v1

    invoke-static {v5, v6, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {p0, v4, v5, v2, v3}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v1, v1, Lg/brh;->cx:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lg/fju;->x:Lg/fgk;

    invoke-virtual {p0, v0, v5, v2, v1}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    :cond_1c
    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget v4, v0, Lg/brh;->bq:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_1d

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v4, v0, Lg/mi;->b:Lg/fol;

    if-ne v4, v1, :cond_1d

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lg/big;->f:Lg/mi;

    :cond_1d
    :goto_4
    iget-object v0, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    iput-boolean v2, v3, Lg/big;->k:Z

    :cond_1e
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    iget-boolean v1, v0, Lg/big;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget v0, v0, Lg/big;->l:I

    iput v0, v1, Lg/brh;->cb:I

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/mi;->i:Lg/fld;

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    invoke-virtual {v0}, Lg/big;->o()V

    iget-object v0, p0, Lg/mi;->f:Lg/big;

    invoke-virtual {v0}, Lg/big;->o()V

    iget-object v0, p0, Lg/fju;->w:Lg/big;

    invoke-virtual {v0}, Lg/big;->o()V

    iget-object v0, p0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0}, Lg/big;->o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/mi;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lg/exs;)V
    .locals 10

    sget-object p1, Lg/drc;->a:[I

    iget-object v0, p0, Lg/mi;->h:Lg/dnl;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Lg/mi;->c:Lg/eeh;

    iget-boolean v2, p1, Lg/big;->k:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lg/big;->j:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lg/mi;->b:Lg/fol;

    sget-object v5, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget v5, v2, Lg/brh;->by:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v2, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    iget-boolean v5, v1, Lg/big;->j:Z

    if-eqz v5, :cond_5

    iget v5, v2, Lg/brh;->db:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, v1, Lg/big;->l:I

    int-to-float v1, v1

    iget v2, v2, Lg/brh;->bq:F

    :goto_0
    div-float/2addr v1, v2

    :goto_1
    add-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_2

    :cond_2
    iget v1, v1, Lg/big;->l:I

    int-to-float v1, v1

    iget v2, v2, Lg/brh;->bq:F

    mul-float v1, v1, v2

    goto :goto_1

    :cond_3
    iget v1, v1, Lg/big;->l:I

    int-to-float v1, v1

    iget v2, v2, Lg/brh;->bq:F

    goto :goto_0

    :goto_2
    invoke-virtual {p1, v1}, Lg/eeh;->m(I)V

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lg/brh;->bj:Lg/brh;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    iget-boolean v5, v1, Lg/big;->j:Z

    if-eqz v5, :cond_5

    iget v2, v2, Lg/brh;->am:F

    iget v1, v1, Lg/big;->l:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lg/eeh;->m(I)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lg/mi;->a:Lg/big;

    iget-boolean v2, v1, Lg/big;->k:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lg/mi;->f:Lg/big;

    iget-boolean v5, v2, Lg/big;->k:Z

    if-nez v5, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v5, v1, Lg/big;->j:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v2, Lg/big;->j:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p1, Lg/big;->j:Z

    if-eqz v5, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-boolean v5, p1, Lg/big;->j:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lg/mi;->g:Lg/brh;

    iget v6, v5, Lg/brh;->da:I

    if-nez v6, :cond_8

    invoke-virtual {v5}, Lg/brh;->dk()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v0, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/big;

    iget-object v3, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    iget v0, v0, Lg/big;->l:I

    iget v4, v1, Lg/big;->g:I

    add-int/2addr v0, v4

    iget v3, v3, Lg/big;->l:I

    iget v4, v2, Lg/big;->g:I

    add-int/2addr v3, v4

    sub-int v4, v3, v0

    invoke-virtual {v1, v0}, Lg/big;->m(I)V

    invoke-virtual {v2, v3}, Lg/big;->m(I)V

    invoke-virtual {p1, v4}, Lg/eeh;->m(I)V

    return-void

    :cond_8
    iget-boolean v5, p1, Lg/big;->j:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v5, v6, :cond_a

    iget v5, p0, Lg/mi;->d:I

    if-ne v5, v0, :cond_a

    iget-object v0, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/big;

    iget-object v5, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/big;

    iget v0, v0, Lg/big;->l:I

    iget v6, v1, Lg/big;->g:I

    add-int/2addr v0, v6

    iget v5, v5, Lg/big;->l:I

    iget v6, v2, Lg/big;->g:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v0, p1, Lg/eeh;->p:I

    if-ge v5, v0, :cond_9

    invoke-virtual {p1, v5}, Lg/eeh;->m(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, Lg/eeh;->m(I)V

    :cond_a
    :goto_4
    iget-boolean v0, p1, Lg/big;->j:Z

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/big;

    iget-object v5, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v5, v0, Lg/big;->l:I

    iget v6, v1, Lg/big;->g:I

    add-int/2addr v6, v5

    iget v7, v4, Lg/big;->l:I

    iget v8, v2, Lg/big;->g:I

    add-int/2addr v8, v7

    iget-object v9, p0, Lg/mi;->g:Lg/brh;

    iget v9, v9, Lg/brh;->ct:F

    if-ne v0, v4, :cond_c

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_c
    move v5, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v5

    iget v0, p1, Lg/big;->l:I

    sub-int/2addr v7, v0

    int-to-float v0, v5

    add-float/2addr v0, v3

    int-to-float v3, v7

    mul-float v3, v3, v9

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v0}, Lg/big;->m(I)V

    iget v0, v1, Lg/big;->l:I

    iget p1, p1, Lg/big;->l:I

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lg/big;->m(I)V

    :cond_d
    :goto_6
    return-void

    :cond_e
    iget-object p1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, p1, Lg/brh;->bx:Lg/hac;

    iget-object p1, p1, Lg/brh;->as:Lg/hac;

    invoke-virtual {p0, v1, p1, v0}, Lg/mi;->p(Lg/hac;Lg/hac;I)V

    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/mi;->j:Z

    iget-object v1, p0, Lg/mi;->a:Lg/big;

    invoke-virtual {v1}, Lg/big;->o()V

    iput-boolean v0, v1, Lg/big;->j:Z

    iget-object v1, p0, Lg/mi;->f:Lg/big;

    invoke-virtual {v1}, Lg/big;->o()V

    iput-boolean v0, v1, Lg/big;->j:Z

    iget-object v1, p0, Lg/fju;->w:Lg/big;

    invoke-virtual {v1}, Lg/big;->o()V

    iput-boolean v0, v1, Lg/big;->j:Z

    iget-object v1, p0, Lg/mi;->c:Lg/eeh;

    iput-boolean v0, v1, Lg/big;->j:Z

    return-void
.end method
