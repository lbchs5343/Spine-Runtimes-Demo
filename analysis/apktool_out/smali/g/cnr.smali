.class public final Lg/cnr;
.super Lg/mi;
.source "SourceFile"


# virtual methods
.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 7

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    move-object v1, v0

    check-cast v1, Lg/aar;

    iget v2, v1, Lg/aar;->a:I

    iget v3, v1, Lg/aar;->c:I

    iget v1, v1, Lg/aar;->f:I

    const/4 v4, -0x1

    iget-object v5, p0, Lg/mi;->a:Lg/big;

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    if-eq v2, v4, :cond_0

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v5, Lg/big;->g:I

    goto :goto_0

    :cond_0
    if-eq v3, v4, :cond_1

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v5, Lg/big;->g:I

    goto :goto_0

    :cond_1
    iput-boolean v6, v5, Lg/big;->i:Z

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/cnr;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/cnr;->w(Lg/big;)V

    return-void

    :cond_2
    if-eq v2, v4, :cond_3

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v5, Lg/big;->g:I

    goto :goto_1

    :cond_3
    if-eq v3, v4, :cond_4

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v5, Lg/big;->g:I

    goto :goto_1

    :cond_4
    iput-boolean v6, v5, Lg/big;->i:Z

    iget-object v1, v5, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bj:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget-object v0, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/cnr;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/cnr;->w(Lg/big;)V

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    move-object v1, v0

    check-cast v1, Lg/aar;

    iget v1, v1, Lg/aar;->f:I

    const/4 v2, 0x1

    iget-object v3, p0, Lg/mi;->a:Lg/big;

    if-ne v1, v2, :cond_0

    iget v1, v3, Lg/big;->l:I

    iput v1, v0, Lg/brh;->cv:I

    return-void

    :cond_0
    iget v1, v3, Lg/big;->l:I

    iput v1, v0, Lg/brh;->cb:I

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    invoke-virtual {v0}, Lg/big;->o()V

    return-void
.end method

.method public final v(Lg/exs;)V
    .locals 2

    iget-object p1, p0, Lg/mi;->a:Lg/big;

    iget-boolean v0, p1, Lg/big;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lg/big;->j:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lg/big;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/big;

    iget-object v1, p0, Lg/mi;->g:Lg/brh;

    check-cast v1, Lg/aar;

    iget v0, v0, Lg/big;->l:I

    int-to-float v0, v0

    iget v1, v1, Lg/aar;->d:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lg/big;->m(I)V

    return-void
.end method

.method public final w(Lg/big;)V
    .locals 2

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    iget-object v1, v0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
