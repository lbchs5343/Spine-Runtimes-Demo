.class public final Lg/or;
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

    instance-of v1, v0, Lg/r;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lg/mi;->a:Lg/big;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/big;->i:Z

    check-cast v0, Lg/r;

    iget v3, v0, Lg/r;->b:I

    iget-boolean v4, v0, Lg/r;->a:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v2, Lg/gfv;->BOTTOM:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    :goto_0
    iget v2, v0, Lg/gbi;->ev:I

    if-ge v6, v2, :cond_2

    iget-object v2, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v2, v2, v6

    if-nez v4, :cond_1

    iget v3, v2, Lg/brh;->aq:I

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget-object v3, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    return-void

    :cond_3
    sget-object v2, Lg/gfv;->TOP:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    :goto_2
    iget v2, v0, Lg/gbi;->ev:I

    if-ge v6, v2, :cond_5

    iget-object v2, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v2, v2, v6

    if-nez v4, :cond_4

    iget v3, v2, Lg/brh;->aq:I

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    iget-object v3, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    return-void

    :cond_6
    sget-object v2, Lg/gfv;->RIGHT:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    :goto_4
    iget v2, v0, Lg/gbi;->ev:I

    if-ge v6, v2, :cond_8

    iget-object v2, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v2, v2, v6

    if-nez v4, :cond_7

    iget v3, v2, Lg/brh;->aq:I

    if-ne v3, v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, v2, Lg/brh;->be:Lg/dza;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget-object v3, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    return-void

    :cond_9
    sget-object v2, Lg/gfv;->LEFT:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    :goto_6
    iget v2, v0, Lg/gbi;->ev:I

    if-ge v6, v2, :cond_b

    iget-object v2, v0, Lg/gbi;->ew:[Lg/brh;

    aget-object v2, v2, v6

    if-nez v4, :cond_a

    iget v3, v2, Lg/brh;->aq:I

    if-ne v3, v5, :cond_a

    goto :goto_7

    :cond_a
    iget-object v2, v2, Lg/brh;->be:Lg/dza;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    iget-object v3, v2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    iget-object v0, v0, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    invoke-virtual {p0, v0}, Lg/or;->w(Lg/big;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lg/mi;->g:Lg/brh;

    instance-of v1, v0, Lg/r;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lg/r;

    iget v1, v1, Lg/r;->b:I

    iget-object v2, p0, Lg/mi;->a:Lg/big;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v2, Lg/big;->l:I

    iput v1, v0, Lg/brh;->cb:I

    return-void

    :cond_1
    :goto_0
    iget v1, v2, Lg/big;->l:I

    iput v1, v0, Lg/brh;->cv:I

    :cond_2
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/mi;->i:Lg/fld;

    iget-object v0, p0, Lg/mi;->a:Lg/big;

    invoke-virtual {v0}, Lg/big;->o()V

    return-void
.end method

.method public final v(Lg/exs;)V
    .locals 7

    iget-object p1, p0, Lg/mi;->g:Lg/brh;

    check-cast p1, Lg/r;

    iget v0, p1, Lg/r;->b:I

    iget-object v1, p0, Lg/mi;->a:Lg/big;

    iget-object v2, v1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/big;

    iget v6, v6, Lg/big;->l:I

    if-eq v5, v3, :cond_1

    if-ge v6, v5, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    if-ge v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p1, Lg/r;->c:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lg/big;->m(I)V

    return-void

    :cond_5
    :goto_1
    iget p1, p1, Lg/r;->c:I

    add-int/2addr v5, p1

    invoke-virtual {v1, v5}, Lg/big;->m(I)V

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
