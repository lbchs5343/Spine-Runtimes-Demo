.class public final Lg/dza;
.super Lg/mi;
.source "SourceFile"


# static fields
.field public static final w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lg/dza;->w:[I

    return-void
.end method

.method public static x([IIIIIFI)V
    .locals 2

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    const/4 p1, -0x1

    const/4 p3, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p6, p1, :cond_2

    if-eqz p6, :cond_1

    if-eq p6, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    mul-float p1, p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p2, p0, p3

    aput p1, p0, v1

    return-void

    :cond_1
    int-to-float p1, p4

    mul-float p1, p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p1, p0, p3

    aput p4, p0, v1

    return-void

    :cond_2
    int-to-float p1, p4

    mul-float p1, p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p6, p2

    div-float/2addr p6, p5

    add-float/2addr p6, v0

    float-to-int p5, p6

    if-gt p1, p2, :cond_3

    aput p1, p0, p3

    aput p4, p0, v1

    return-void

    :cond_3
    if-gt p5, p4, :cond_4

    aput p2, p0, p3

    aput p5, p0, v1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 3

    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget v0, v0, Lg/brh;->da:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final o()V
    .locals 10

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v1, v0, Lg/brh;->bk:Z

    iget-object v2, p0, Lg/mi;->c:Lg/eeh;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/brh;->eb()I

    move-result v0

    invoke-virtual {v2, v0}, Lg/eeh;->m(I)V

    :cond_0
    iget-boolean v0, v2, Lg/big;->j:Z

    const/4 v1, 0x0

    iget-object v3, p0, Lg/mi;->f:Lg/big;

    iget-object v4, p0, Lg/mi;->a:Lg/big;

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v5, v0, Lg/brh;->ch:[Lg/fol;

    aget-object v5, v5, v1

    iput-object v5, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-eq v5, v6, :cond_5

    sget-object v6, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v5, v6, :cond_2

    iget-object v7, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v7, :cond_2

    iget-object v8, v7, Lg/brh;->ch:[Lg/fol;

    aget-object v8, v8, v1

    sget-object v9, Lg/fol;->FIXED:Lg/fol;

    if-eq v8, v9, :cond_1

    if-ne v8, v6, :cond_2

    :cond_1
    invoke-virtual {v7}, Lg/brh;->eb()I

    move-result v0

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v7, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->a:Lg/big;

    iget-object v5, p0, Lg/mi;->g:Lg/brh;

    iget-object v5, v5, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v5}, Lg/hac;->n()I

    move-result v5

    invoke-static {v4, v1, v5}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v1, v7, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->f:Lg/big;

    iget-object v4, p0, Lg/mi;->g:Lg/brh;

    iget-object v4, v4, Lg/brh;->br:Lg/hac;

    invoke-virtual {v4}, Lg/hac;->n()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v1, v4}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {v2, v0}, Lg/eeh;->m(I)V

    return-void

    :cond_2
    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lg/brh;->eb()I

    move-result v0

    invoke-virtual {v2, v0}, Lg/eeh;->m(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v5, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v7, v1

    sget-object v8, Lg/fol;->FIXED:Lg/fol;

    if-eq v7, v8, :cond_4

    if-ne v7, v5, :cond_5

    :cond_4
    iget-object v1, v6, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->a:Lg/big;

    iget-object v0, v0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    invoke-static {v4, v1, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget-object v0, v6, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    invoke-static {v3, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_5
    :goto_0
    iget-boolean v0, v2, Lg/big;->j:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-boolean v6, v0, Lg/brh;->bk:Z

    if-eqz v6, :cond_c

    iget-object v6, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v7, v6, v1

    iget-object v8, v7, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_9

    aget-object v9, v6, v5

    iget-object v9, v9, Lg/hac;->e:Lg/hac;

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    iput v0, v4, Lg/big;->g:I

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    neg-int v0, v0

    iput v0, v3, Lg/big;->g:I

    return-void

    :cond_6
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v1

    invoke-static {v0}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lg/mi;->g:Lg/brh;

    iget-object v2, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    invoke-static {v4, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    :cond_7
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v5

    invoke-static {v0}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    invoke-static {v3, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    :cond_8
    iput-boolean v5, v4, Lg/big;->i:Z

    iput-boolean v5, v3, Lg/big;->i:Z

    return-void

    :cond_9
    if-eqz v8, :cond_a

    invoke-static {v7}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v5, p0, Lg/mi;->g:Lg/brh;

    iget-object v5, v5, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    invoke-static {v4, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v0, v2, Lg/big;->l:I

    invoke-static {v3, v4, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_a
    aget-object v1, v6, v5

    iget-object v6, v1, Lg/hac;->e:Lg/hac;

    if-eqz v6, :cond_b

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    invoke-static {v3, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v0, v2, Lg/big;->l:I

    neg-int v0, v0

    invoke-static {v4, v3, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_b
    instance-of v1, v0, Lg/gbi;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v1, :cond_1a

    sget-object v1, Lg/dih;->CENTER:Lg/dih;

    invoke-virtual {v0, v1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v0

    iget-object v0, v0, Lg/hac;->e:Lg/hac;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v0, Lg/brh;->bj:Lg/brh;

    iget-object v1, v1, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->a:Lg/big;

    invoke-virtual {v0}, Lg/brh;->ei()I

    move-result v0

    invoke-static {v4, v1, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    iget v0, v2, Lg/big;->l:I

    invoke-static {v3, v4, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    return-void

    :cond_c
    iget-object v0, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v6, :cond_13

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget v6, v0, Lg/brh;->da:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_11

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    goto/16 :goto_1

    :cond_d
    iget v6, v0, Lg/brh;->by:I

    if-ne v6, v7, :cond_10

    iput-object p0, v4, Lg/big;->f:Lg/mi;

    iput-object p0, v3, Lg/big;->f:Lg/mi;

    iget-object v6, v0, Lg/brh;->bi:Lg/fju;

    iget-object v7, v6, Lg/mi;->a:Lg/big;

    iput-object p0, v7, Lg/big;->f:Lg/mi;

    iget-object v6, v6, Lg/mi;->f:Lg/big;

    iput-object p0, v6, Lg/big;->f:Lg/mi;

    iput-object p0, v2, Lg/big;->f:Lg/mi;

    invoke-virtual {v0}, Lg/brh;->dk()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v2, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->bi:Lg/fju;

    iget-object v6, v6, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v6, v0, Lg/mi;->c:Lg/eeh;

    iput-object p0, v6, Lg/big;->f:Lg/mi;

    iget-object v6, v2, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->bi:Lg/fju;

    iget-object v6, v6, Lg/mi;->f:Lg/big;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v0, v0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->bi:Lg/fju;

    iget-object v6, v6, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v0, v0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v6, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v2, Lg/big;->i:Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_11
    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    if-nez v0, :cond_12

    goto :goto_1

    :cond_12
    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    iget-object v6, v2, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v2, Lg/big;->i:Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_1
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v7, v6, v1

    iget-object v8, v7, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_17

    aget-object v9, v6, v5

    iget-object v9, v9, Lg/hac;->e:Lg/hac;

    if-eqz v9, :cond_17

    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    iput v0, v4, Lg/big;->g:I

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    neg-int v0, v0

    iput v0, v3, Lg/big;->g:I

    return-void

    :cond_14
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v1

    invoke-static {v0}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v5

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Lg/big;->n(Lg/mi;)V

    :cond_15
    if-eqz v1, :cond_16

    invoke-virtual {v1, p0}, Lg/big;->n(Lg/mi;)V

    :cond_16
    sget-object v0, Lg/dnl;->CENTER:Lg/dnl;

    iput-object v0, p0, Lg/mi;->h:Lg/dnl;

    return-void

    :cond_17
    if-eqz v8, :cond_18

    invoke-static {v7}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v6, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v6, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v6, v1

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    invoke-static {v4, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {p0, v3, v4, v5, v2}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    return-void

    :cond_18
    aget-object v1, v6, v5

    iget-object v6, v1, Lg/hac;->e:Lg/hac;

    if-eqz v6, :cond_19

    invoke-static {v1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    neg-int v1, v1

    invoke-static {v3, v0, v1}, Lg/mi;->m(Lg/big;Lg/big;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v4, v3, v0, v2}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    return-void

    :cond_19
    instance-of v1, v0, Lg/gbi;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lg/brh;->be:Lg/dza;

    iget-object v1, v1, Lg/mi;->a:Lg/big;

    invoke-virtual {v0}, Lg/brh;->ei()I

    move-result v0

    invoke-static {v4, v1, v0}, Lg/mi;->m(Lg/big;Lg/big;I)V

    invoke-virtual {p0, v3, v4, v5, v2}, Lg/mi;->t(Lg/big;Lg/big;ILg/eeh;)V

    :cond_1a
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    iget-boolean v1, v0, Lg/big;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget v0, v0, Lg/big;->l:I

    iput v0, v1, Lg/brh;->cv:I

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

    iget-object v0, p0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0}, Lg/big;->o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/mi;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HorizontalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lg/exs;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lg/hb;->a:[I

    iget-object v2, v0, Lg/mi;->h:Lg/dnl;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_25

    iget-object v1, v0, Lg/mi;->c:Lg/eeh;

    iget-boolean v4, v1, Lg/big;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    iget-object v7, v0, Lg/mi;->a:Lg/big;

    iget-object v8, v0, Lg/mi;->f:Lg/big;

    if-nez v4, :cond_1c

    iget-object v4, v0, Lg/mi;->b:Lg/fol;

    sget-object v9, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v4, v9, :cond_1c

    iget-object v4, v0, Lg/mi;->g:Lg/brh;

    iget v9, v4, Lg/brh;->da:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1b

    if-eq v9, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v9, v4, Lg/brh;->by:I

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    if-ne v9, v3, :cond_1

    goto :goto_3

    :cond_1
    iget v3, v4, Lg/brh;->db:I

    if-eq v3, v10, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v4, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    iget v3, v3, Lg/big;->l:I

    int-to-float v3, v3

    iget v4, v4, Lg/brh;->bq:F

    :goto_0
    mul-float v3, v3, v4

    :goto_1
    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_2

    :cond_3
    iget-object v3, v4, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    iget v3, v3, Lg/big;->l:I

    int-to-float v3, v3

    iget v4, v4, Lg/brh;->bq:F

    div-float/2addr v3, v4

    goto :goto_1

    :cond_4
    iget-object v3, v4, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    iget v3, v3, Lg/big;->l:I

    int-to-float v3, v3

    iget v4, v4, Lg/brh;->bq:F

    goto :goto_0

    :goto_2
    invoke-virtual {v1, v3}, Lg/eeh;->m(I)V

    goto/16 :goto_8

    :cond_5
    :goto_3
    iget-object v3, v4, Lg/brh;->bi:Lg/fju;

    iget-object v9, v3, Lg/mi;->a:Lg/big;

    iget-object v3, v3, Lg/mi;->f:Lg/big;

    iget-object v11, v4, Lg/brh;->cw:Lg/hac;

    iget-object v11, v11, Lg/hac;->e:Lg/hac;

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    iget-object v12, v4, Lg/brh;->bx:Lg/hac;

    iget-object v12, v12, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    iget-object v13, v4, Lg/brh;->br:Lg/hac;

    iget-object v13, v13, Lg/hac;->e:Lg/hac;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    iget-object v14, v4, Lg/brh;->as:Lg/hac;

    iget-object v14, v14, Lg/hac;->e:Lg/hac;

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    iget v15, v4, Lg/brh;->db:I

    if-eqz v11, :cond_f

    if-eqz v12, :cond_f

    if-eqz v13, :cond_f

    if-eqz v14, :cond_f

    iget v4, v4, Lg/brh;->bq:F

    iget-boolean v10, v9, Lg/big;->j:Z

    iget-object v11, v9, Lg/big;->d:Ljava/util/ArrayList;

    move/from16 v21, v15

    sget-object v15, Lg/dza;->w:[I

    if-eqz v10, :cond_b

    iget-boolean v10, v3, Lg/big;->j:Z

    if-eqz v10, :cond_b

    iget-boolean v5, v7, Lg/big;->k:Z

    if-eqz v5, :cond_24

    iget-boolean v5, v8, Lg/big;->k:Z

    if-nez v5, :cond_a

    goto/16 :goto_a

    :cond_a
    iget-object v5, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/big;

    iget v5, v5, Lg/big;->l:I

    iget v7, v7, Lg/big;->g:I

    add-int v16, v5, v7

    iget-object v5, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/big;

    iget v5, v5, Lg/big;->l:I

    iget v7, v8, Lg/big;->g:I

    sub-int v17, v5, v7

    iget v5, v9, Lg/big;->l:I

    iget v7, v9, Lg/big;->g:I

    add-int v18, v5, v7

    iget v5, v3, Lg/big;->l:I

    iget v3, v3, Lg/big;->g:I

    sub-int v19, v5, v3

    move/from16 v20, v4

    invoke-static/range {v15 .. v21}, Lg/dza;->x([IIIIIFI)V

    aget v2, v15, v2

    invoke-virtual {v1, v2}, Lg/eeh;->m(I)V

    iget-object v1, v0, Lg/mi;->g:Lg/brh;

    iget-object v1, v1, Lg/brh;->bi:Lg/fju;

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    aget v2, v15, v6

    invoke-virtual {v1, v2}, Lg/eeh;->m(I)V

    return-void

    :cond_b
    move/from16 v20, v4

    iget-boolean v4, v7, Lg/big;->j:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v8, Lg/big;->j:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v9, Lg/big;->k:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v3, Lg/big;->k:Z

    if-nez v4, :cond_c

    goto/16 :goto_a

    :cond_c
    iget v4, v7, Lg/big;->l:I

    iget v10, v7, Lg/big;->g:I

    add-int v16, v4, v10

    iget v4, v8, Lg/big;->l:I

    iget v10, v8, Lg/big;->g:I

    sub-int v17, v4, v10

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v10, v9, Lg/big;->g:I

    add-int v18, v4, v10

    iget-object v4, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v10, v3, Lg/big;->g:I

    sub-int v19, v4, v10

    invoke-static/range {v15 .. v21}, Lg/dza;->x([IIIIIFI)V

    aget v4, v15, v2

    invoke-virtual {v1, v4}, Lg/eeh;->m(I)V

    iget-object v4, v0, Lg/mi;->g:Lg/brh;

    iget-object v4, v4, Lg/brh;->bi:Lg/fju;

    iget-object v4, v4, Lg/mi;->c:Lg/eeh;

    aget v10, v15, v6

    invoke-virtual {v4, v10}, Lg/eeh;->m(I)V

    :cond_d
    iget-boolean v4, v7, Lg/big;->k:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v8, Lg/big;->k:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v9, Lg/big;->k:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v3, Lg/big;->k:Z

    if-nez v4, :cond_e

    goto/16 :goto_a

    :cond_e
    iget-object v4, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v10, v7, Lg/big;->g:I

    add-int v16, v4, v10

    iget-object v4, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v10, v8, Lg/big;->g:I

    sub-int v17, v4, v10

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v9, v9, Lg/big;->g:I

    add-int v18, v4, v9

    iget-object v4, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v3, v3, Lg/big;->g:I

    sub-int v19, v4, v3

    invoke-static/range {v15 .. v21}, Lg/dza;->x([IIIIIFI)V

    aget v3, v15, v2

    invoke-virtual {v1, v3}, Lg/eeh;->m(I)V

    iget-object v3, v0, Lg/mi;->g:Lg/brh;

    iget-object v3, v3, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    aget v4, v15, v6

    invoke-virtual {v3, v4}, Lg/eeh;->m(I)V

    goto/16 :goto_8

    :cond_f
    if-eqz v11, :cond_15

    if-eqz v13, :cond_15

    iget-boolean v3, v7, Lg/big;->k:Z

    if-eqz v3, :cond_24

    iget-boolean v3, v8, Lg/big;->k:Z

    if-nez v3, :cond_10

    goto/16 :goto_a

    :cond_10
    iget v3, v4, Lg/brh;->bq:F

    iget-object v4, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v4, v4, Lg/big;->l:I

    iget v9, v7, Lg/big;->g:I

    add-int/2addr v4, v9

    iget-object v9, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/big;

    iget v9, v9, Lg/big;->l:I

    iget v11, v8, Lg/big;->g:I

    sub-int/2addr v9, v11

    if-eq v15, v10, :cond_13

    if-eqz v15, :cond_13

    if-eq v15, v6, :cond_11

    goto/16 :goto_8

    :cond_11
    sub-int/2addr v9, v4

    invoke-virtual {v0, v9, v2}, Lg/mi;->u(II)I

    move-result v4

    int-to-float v9, v4

    div-float/2addr v9, v3

    add-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual {v0, v9, v6}, Lg/mi;->u(II)I

    move-result v10

    if-eq v9, v10, :cond_12

    int-to-float v4, v10

    mul-float v4, v4, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    :cond_12
    invoke-virtual {v1, v4}, Lg/eeh;->m(I)V

    iget-object v3, v0, Lg/mi;->g:Lg/brh;

    iget-object v3, v3, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3, v10}, Lg/eeh;->m(I)V

    goto/16 :goto_8

    :cond_13
    sub-int/2addr v9, v4

    invoke-virtual {v0, v9, v2}, Lg/mi;->u(II)I

    move-result v4

    int-to-float v9, v4

    mul-float v9, v9, v3

    add-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual {v0, v9, v6}, Lg/mi;->u(II)I

    move-result v10

    if-eq v9, v10, :cond_14

    int-to-float v4, v10

    div-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    :cond_14
    invoke-virtual {v1, v4}, Lg/eeh;->m(I)V

    iget-object v3, v0, Lg/mi;->g:Lg/brh;

    iget-object v3, v3, Lg/brh;->bi:Lg/fju;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v3, v10}, Lg/eeh;->m(I)V

    goto/16 :goto_8

    :cond_15
    if-eqz v12, :cond_1c

    if-eqz v14, :cond_1c

    iget-boolean v11, v9, Lg/big;->k:Z

    if-eqz v11, :cond_24

    iget-boolean v11, v3, Lg/big;->k:Z

    if-nez v11, :cond_16

    goto/16 :goto_a

    :cond_16
    iget v4, v4, Lg/brh;->bq:F

    iget-object v11, v9, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/big;

    iget v11, v11, Lg/big;->l:I

    iget v9, v9, Lg/big;->g:I

    add-int/2addr v11, v9

    iget-object v9, v3, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/big;

    iget v9, v9, Lg/big;->l:I

    iget v3, v3, Lg/big;->g:I

    sub-int/2addr v9, v3

    if-eq v15, v10, :cond_19

    if-eqz v15, :cond_17

    if-eq v15, v6, :cond_19

    goto :goto_8

    :cond_17
    sub-int/2addr v9, v11

    invoke-virtual {v0, v9, v6}, Lg/mi;->u(II)I

    move-result v3

    int-to-float v9, v3

    mul-float v9, v9, v4

    add-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Lg/mi;->u(II)I

    move-result v10

    if-eq v9, v10, :cond_18

    int-to-float v3, v10

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    :cond_18
    invoke-virtual {v1, v10}, Lg/eeh;->m(I)V

    iget-object v4, v0, Lg/mi;->g:Lg/brh;

    iget-object v4, v4, Lg/brh;->bi:Lg/fju;

    iget-object v4, v4, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v4, v3}, Lg/eeh;->m(I)V

    goto :goto_8

    :cond_19
    sub-int/2addr v9, v11

    invoke-virtual {v0, v9, v6}, Lg/mi;->u(II)I

    move-result v3

    int-to-float v9, v3

    div-float/2addr v9, v4

    add-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Lg/mi;->u(II)I

    move-result v10

    if-eq v9, v10, :cond_1a

    int-to-float v3, v10

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    :cond_1a
    invoke-virtual {v1, v10}, Lg/eeh;->m(I)V

    iget-object v4, v0, Lg/mi;->g:Lg/brh;

    iget-object v4, v4, Lg/brh;->bi:Lg/fju;

    iget-object v4, v4, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v4, v3}, Lg/eeh;->m(I)V

    goto :goto_8

    :cond_1b
    iget-object v3, v4, Lg/brh;->bj:Lg/brh;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lg/brh;->be:Lg/dza;

    iget-object v3, v3, Lg/mi;->c:Lg/eeh;

    iget-boolean v9, v3, Lg/big;->j:Z

    if-eqz v9, :cond_1c

    iget v4, v4, Lg/brh;->bu:F

    iget v3, v3, Lg/big;->l:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lg/eeh;->m(I)V

    :cond_1c
    :goto_8
    iget-boolean v3, v7, Lg/big;->k:Z

    if-eqz v3, :cond_24

    iget-boolean v3, v8, Lg/big;->k:Z

    if-nez v3, :cond_1d

    goto/16 :goto_a

    :cond_1d
    iget-boolean v3, v7, Lg/big;->j:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v8, Lg/big;->j:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Lg/big;->j:Z

    if-eqz v3, :cond_1e

    goto/16 :goto_a

    :cond_1e
    iget-boolean v3, v1, Lg/big;->j:Z

    if-nez v3, :cond_1f

    iget-object v3, v0, Lg/mi;->b:Lg/fol;

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v3, v4, :cond_1f

    iget-object v3, v0, Lg/mi;->g:Lg/brh;

    iget v4, v3, Lg/brh;->da:I

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Lg/brh;->eg()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    iget-object v4, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/big;

    iget v3, v3, Lg/big;->l:I

    iget v4, v7, Lg/big;->g:I

    add-int/2addr v3, v4

    iget v2, v2, Lg/big;->l:I

    iget v4, v8, Lg/big;->g:I

    add-int/2addr v2, v4

    sub-int v4, v2, v3

    invoke-virtual {v7, v3}, Lg/big;->m(I)V

    invoke-virtual {v8, v2}, Lg/big;->m(I)V

    invoke-virtual {v1, v4}, Lg/eeh;->m(I)V

    return-void

    :cond_1f
    iget-boolean v3, v1, Lg/big;->j:Z

    if-nez v3, :cond_21

    iget-object v3, v0, Lg/mi;->b:Lg/fol;

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v3, v4, :cond_21

    iget v3, v0, Lg/mi;->d:I

    if-ne v3, v6, :cond_21

    iget-object v3, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_21

    iget-object v3, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_21

    iget-object v3, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    iget-object v4, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/big;

    iget v3, v3, Lg/big;->l:I

    iget v6, v7, Lg/big;->g:I

    add-int/2addr v3, v6

    iget v4, v4, Lg/big;->l:I

    iget v6, v8, Lg/big;->g:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v3

    iget v3, v1, Lg/eeh;->p:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lg/mi;->g:Lg/brh;

    iget v6, v4, Lg/brh;->bs:I

    iget v4, v4, Lg/brh;->bl:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v6, :cond_20

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_20
    invoke-virtual {v1, v3}, Lg/eeh;->m(I)V

    :cond_21
    iget-boolean v3, v1, Lg/big;->j:Z

    if-nez v3, :cond_22

    goto :goto_a

    :cond_22
    iget-object v3, v7, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/big;

    iget-object v4, v8, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/big;

    iget v4, v3, Lg/big;->l:I

    iget v6, v7, Lg/big;->g:I

    add-int/2addr v6, v4

    iget v9, v2, Lg/big;->l:I

    iget v10, v8, Lg/big;->g:I

    add-int/2addr v10, v9

    iget-object v11, v0, Lg/mi;->g:Lg/brh;

    iget v11, v11, Lg/brh;->cp:F

    if-ne v3, v2, :cond_23

    const/high16 v11, 0x3f000000    # 0.5f

    goto :goto_9

    :cond_23
    move v4, v6

    move v9, v10

    :goto_9
    sub-int/2addr v9, v4

    iget v2, v1, Lg/big;->l:I

    sub-int/2addr v9, v2

    int-to-float v2, v4

    add-float/2addr v2, v5

    int-to-float v3, v9

    mul-float v3, v3, v11

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v7, v2}, Lg/big;->m(I)V

    iget v2, v7, Lg/big;->l:I

    iget v1, v1, Lg/big;->l:I

    add-int/2addr v2, v1

    invoke-virtual {v8, v2}, Lg/big;->m(I)V

    :cond_24
    :goto_a
    return-void

    :cond_25
    iget-object v1, v0, Lg/mi;->g:Lg/brh;

    iget-object v3, v1, Lg/brh;->cw:Lg/hac;

    iget-object v1, v1, Lg/brh;->br:Lg/hac;

    invoke-virtual {v0, v3, v1, v2}, Lg/mi;->p(Lg/hac;Lg/hac;I)V

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

    iget-object v1, p0, Lg/mi;->c:Lg/eeh;

    iput-boolean v0, v1, Lg/big;->j:Z

    return-void
.end method
