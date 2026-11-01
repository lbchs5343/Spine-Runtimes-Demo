.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/b;
.source "SourceFile"

# interfaces
.implements Lg/wp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$a;
    }
.end annotation


# instance fields
.field public bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

.field public be:I

.field public final bf:Lg/efd;

.field public bg:Z

.field public final bh:[I

.field public final bi:I

.field public bj:Z

.field public final bk:Z

.field public bl:Z

.field public bm:I

.field public bn:Lg/cju;

.field public final bo:Lg/cea;

.field public final bp:Z

.field public bq:I

.field public br:Lg/bjd;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    new-instance v2, Lg/cea;

    invoke-direct {v2}, Lg/cea;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bo:Lg/cea;

    new-instance v2, Lg/efd;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bf:Lg/efd;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bi:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bh:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->co(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->de(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    new-instance v1, Lg/cea;

    invoke-direct {v1}, Lg/cea;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bo:Lg/cea;

    new-instance v1, Lg/efd;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bf:Lg/efd;

    const/4 v1, 0x2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bi:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bh:[I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/b;->eb(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg/gur;

    move-result-object p1

    iget p2, p1, Lg/gur;->b:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->co(I)V

    iget-boolean p2, p1, Lg/gur;->d:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->de(Ljava/lang/String;)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :goto_0
    iget-boolean p1, p1, Lg/gur;->a:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->aq(Z)V

    return-void
.end method


# virtual methods
.method public aa(Lg/aqz;Lg/cju;Landroidx/recyclerview/widget/r;)V
    .locals 1

    iget v0, p2, Lg/cju;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lg/aqz;->p()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Lg/cju;->l:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/r;->e(II)V

    :cond_0
    return-void
.end method

.method public ah()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bl:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aj(Landroid/view/View;ILandroidx/recyclerview/widget/f;Lg/aqz;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cb()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->dk(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->g()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->cw(IIZLg/aqz;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput p2, v0, Lg/cju;->l:I

    iput-boolean v1, v0, Lg/cju;->f:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cv(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->cv(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->cv(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cv(II)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cy()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ci()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_7

    if-nez p2, :cond_6

    :goto_2
    const/4 p1, 0x0

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method public ak(Landroidx/recyclerview/widget/f;Lg/aqz;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lg/aqz;->p()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v7}, Lg/bjd;->p()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8}, Lg/bjd;->r()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v14, v12}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v15, v12}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lg/yx;

    iget-object v13, v13, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    return-object v9

    :cond_b
    if-eqz v10, :cond_c

    return-object v10

    :cond_c
    return-object v11
.end method

.method public am(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->di(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public an(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cju;Lg/efd;)V
    .locals 10

    invoke-virtual {p3, p1}, Lg/cju;->n(Landroidx/recyclerview/widget/f;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lg/efd;->c:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    iget-object v1, p3, Lg/cju;->b:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iget v4, p3, Lg/cju;->g:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v2, v3}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v3, v3}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iget v4, p3, Lg/cju;->g:I

    if-ne v4, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v2, p2}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v3, p2}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/yx;

    iget-object v3, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iget v3, p0, Landroidx/recyclerview/widget/b;->do:I

    iget v6, p0, Landroidx/recyclerview/widget/b;->dq:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ca()Z

    move-result v7

    invoke-static {v3, v6, v8, v4, v7}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/b;->dn:I

    iget v6, p0, Landroidx/recyclerview/widget/b;->du:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cd()Z

    move-result v7

    invoke-static {v4, v6, v8, v5, v7}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v4

    invoke-virtual {p0, p1, v3, v4, v1}, Landroidx/recyclerview/widget/b;->fk(Landroid/view/View;IILg/yx;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1, p1}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Lg/efd;->b:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3, p1}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v3

    sub-int v3, v1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v3

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1, p1}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    :goto_3
    iget v4, p3, Lg/cju;->g:I

    if-ne v4, v2, :cond_8

    iget p3, p3, Lg/cju;->i:I

    iget v2, p4, Lg/efd;->b:I

    sub-int v2, p3, v2

    goto :goto_4

    :cond_8
    iget v2, p3, Lg/cju;->i:I

    iget p3, p4, Lg/efd;->b:I

    add-int/2addr p3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3, p1}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p3, Lg/cju;->g:I

    if-ne v4, v2, :cond_a

    iget p3, p3, Lg/cju;->i:I

    iget v2, p4, Lg/efd;->b:I

    sub-int v2, p3, v2

    move v9, v1

    move v1, p3

    move p3, v3

    move v3, v2

    move v2, v9

    goto :goto_4

    :cond_a
    iget p3, p3, Lg/cju;->i:I

    iget v2, p4, Lg/efd;->b:I

    add-int/2addr v2, p3

    move v9, v3

    move v3, p3

    move p3, v9

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_4
    invoke-static {p1, v3, v2, v1, p3}, Landroidx/recyclerview/widget/b;->ec(Landroid/view/View;IIII)V

    iget-object p3, v0, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->u()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v0, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->v()Z

    move-result p3

    if-eqz p3, :cond_c

    :cond_b
    iput-boolean p2, p4, Lg/efd;->d:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lg/efd;->a:Z

    return-void
.end method

.method public ap(Lg/aqz;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bo:Lg/cea;

    invoke-virtual {p1}, Lg/cea;->f()V

    return-void
.end method

.method public aq(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->de(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public ar(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cea;I)V
    .locals 0

    return-void
.end method

.method public az()Lg/yx;
    .locals 2

    new-instance v0, Lg/yx;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lg/yx;-><init>(II)V

    return-object v0
.end method

.method public final bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I
    .locals 7

    iget v0, p2, Lg/cju;->k:I

    iget v1, p2, Lg/cju;->l:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lg/cju;->l:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->cl(Landroidx/recyclerview/widget/f;Lg/cju;)V

    :cond_1
    iget v1, p2, Lg/cju;->k:I

    iget v3, p2, Lg/cju;->a:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Lg/cju;->d:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_9

    :cond_3
    iget v3, p2, Lg/cju;->c:I

    if-ltz v3, :cond_9

    invoke-virtual {p3}, Lg/aqz;->p()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bf:Lg/efd;

    const/4 v4, 0x0

    iput v4, v3, Lg/efd;->b:I

    iput-boolean v4, v3, Lg/efd;->c:Z

    iput-boolean v4, v3, Lg/efd;->d:Z

    iput-boolean v4, v3, Lg/efd;->a:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->an(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cju;Lg/efd;)V

    iget-boolean v4, v3, Lg/efd;->c:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Lg/cju;->i:I

    iget v5, v3, Lg/efd;->b:I

    iget v6, p2, Lg/cju;->g:I

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Lg/cju;->i:I

    iget-boolean v4, v3, Lg/efd;->d:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Lg/cju;->b:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, Lg/aqz;->n:Z

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Lg/cju;->k:I

    sub-int/2addr v4, v5

    iput v4, p2, Lg/cju;->k:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Lg/cju;->l:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Lg/cju;->l:I

    iget v5, p2, Lg/cju;->k:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Lg/cju;->l:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->cl(Landroidx/recyclerview/widget/f;Lg/cju;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Lg/efd;->a:Z

    if-eqz v3, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, Lg/cju;->k:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bt(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->p()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lg/cju;->k:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput p1, v0, Lg/cju;->c:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lg/cju;->e:I

    iput v1, v0, Lg/cju;->g:I

    iput p2, v0, Lg/cju;->i:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lg/cju;->l:I

    return-void
.end method

.method public final bu(IILg/aqz;Landroidx/recyclerview/widget/r;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cw(IIZLg/aqz;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->aa(Lg/aqz;Lg/cju;Landroidx/recyclerview/widget/r;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final bv()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final bw(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public final bx()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    return v0
.end method

.method public final by()I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final bz(Z)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ca()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cb()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bp:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    return-void
.end method

.method public final cc()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    return-object v1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bl:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ci()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->r()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3, v1}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorOffset:I

    invoke-static {v1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorPosition:I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cy()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorPosition:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->p()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorOffset:I

    return-object v0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->invalidateAnchor()V

    return-object v0
.end method

.method public final cd()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ce(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->ce(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bv()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->by()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final cf(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final cg(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->r()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->di(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p3}, Lg/bjd;->r()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p1, p3}, Lg/bjd;->h(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ci()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final cj()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    if-nez v0, :cond_0

    new-instance v0, Lg/cju;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/cju;->f:Z

    const/4 v1, 0x0

    iput v1, v0, Lg/cju;->a:I

    iput v1, v0, Lg/cju;->h:I

    const/4 v1, 0x0

    iput-object v1, v0, Lg/cju;->b:Ljava/util/List;

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    :cond_0
    return-void
.end method

.method public final ck()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cl(Landroidx/recyclerview/widget/f;Lg/cju;)V
    .locals 5

    iget-boolean v0, p2, Lg/cju;->f:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lg/cju;->d:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Lg/cju;->l:I

    iget v1, p2, Lg/cju;->h:I

    iget p2, p2, Lg/cju;->g:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->l()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4, v1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4, v1}, Lg/bjd;->m(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->dd(Landroidx/recyclerview/widget/f;II)V

    return-void

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v2

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->m(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->dd(Landroidx/recyclerview/widget/f;II)V

    return-void

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v1, :cond_b

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3, v2}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3, v2}, Lg/bjd;->j(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->dd(Landroidx/recyclerview/widget/f;II)V

    return-void

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4, v3}, Lg/bjd;->j(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->dd(Landroidx/recyclerview/widget/f;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public cm(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/i;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/i;->h:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->ep(Landroidx/recyclerview/widget/i;)V

    return-void
.end method

.method public final cn()Z
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/b;->du:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/b;->dq:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final co(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->de(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lg/bjd;->e(Landroidx/recyclerview/widget/b;I)Lg/bjd;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bo:Lg/cea;

    iput-object v0, v1, Lg/cea;->c:Lg/bjd;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public final cp(Z)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final cq(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroidx/recyclerview/widget/b;->dy:Lg/akj;

    invoke-virtual {p4, p1, p2, p3, v0}, Lg/akj;->k(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p4, p0, Landroidx/recyclerview/widget/b;->dp:Lg/akj;

    invoke-virtual {p4, p1, p2, p3, v0}, Lg/akj;->k(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final cr(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cu(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final cs(ILandroidx/recyclerview/widget/r;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorLayoutFromEnd:Z

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorPosition:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cb()V

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bi:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    invoke-virtual {p2, v0, v2}, Landroidx/recyclerview/widget/r;->e(II)V

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final ct(Lg/aqz;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cp(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bz(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/ckd;->bg(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final cu(Lg/aqz;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cp(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bz(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/ckd;->am(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final cv(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->p()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->dy:Lg/akj;

    invoke-virtual {v2, p1, p2, v0, v1}, Lg/akj;->k(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->dp:Lg/akj;

    invoke-virtual {v2, p1, p2, v0, v1}, Lg/akj;->k(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final cw(IIZLg/aqz;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->n()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->l()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lg/cju;->d:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput p1, v0, Lg/cju;->g:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bh:[I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->df(Lg/aqz;[I)V

    aget p4, v0, v2

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Lg/cju;->a:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Lg/cju;->h:I

    const/4 p4, -0x1

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->f()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Lg/cju;->a:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ci()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v1, :cond_4

    const/4 v3, -0x1

    :cond_4
    iput v3, v0, Lg/cju;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v2, v1, Lg/cju;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lg/cju;->c:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4, p1}, Lg/bjd;->o(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lg/cju;->i:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4, p1}, Lg/bjd;->o(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4}, Lg/bjd;->r()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cy()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v1, v0, Lg/cju;->a:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->p()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lg/cju;->a:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, -0x1

    :goto_3
    iput v3, v0, Lg/cju;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v2, v1, Lg/cju;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lg/cju;->c:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4, p1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lg/cju;->i:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4, p1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p4}, Lg/bjd;->p()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput p2, p4, Lg/cju;->k:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p4, Lg/cju;->k:I

    :cond_7
    iput p1, p4, Lg/cju;->l:I

    return-void
.end method

.method public final cx(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cu(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final cy()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final cz(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->cz(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final da(Lg/aqz;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cp(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bz(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bk:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lg/ckd;->au(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;ZZ)I

    move-result p1

    return p1
.end method

.method public final db(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->r()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lg/cju;->k:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lg/cju;->e:I

    iput p1, v0, Lg/cju;->c:I

    iput v2, v0, Lg/cju;->g:I

    iput p2, v0, Lg/cju;->i:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lg/cju;->l:I

    return-void
.end method

.method public final dc(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final dd(Landroidx/recyclerview/widget/f;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    goto :goto_2

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/b;->ej(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->u(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->ej(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->u(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final de(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->de(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public df(Lg/aqz;[I)V
    .locals 3

    iget p1, p1, Lg/aqz;->g:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p1}, Lg/bjd;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v2, v2, Lg/cju;->g:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p1

    const/4 p1, 0x0

    :goto_1
    aput p1, p2, v0

    const/4 p1, 0x1

    aput v1, p2, p1

    return-void
.end method

.method public final dg(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :cond_1
    return-void
.end method

.method public final dh(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public final di(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lg/cju;->f:Z

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cw(IIZLg/aqz;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v4, v2, Lg/cju;->l:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lg/bjd;->h(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput p1, p2, Lg/cju;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final dj(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->p()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->di(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {p3}, Lg/bjd;->p()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lg/bjd;->h(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final dk(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public m(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->di(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public n(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/b;->n(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v0, -0x1

    if-ne p1, v1, :cond_2

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return v2

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/b;->av(Landroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_3

    return v2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/b;->aw(Landroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->bw(II)V

    return v1

    :cond_4
    return v2
.end method

.method public q(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->da(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public r(Landroidx/recyclerview/widget/f;Lg/aqz;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/b;->fh(Landroidx/recyclerview/widget/f;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->hasValidAnchor()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorPosition:I

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lg/cju;->f:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cb()V

    iget-object v3, v0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v7, v0, Landroidx/recyclerview/widget/b;->ds:Landroidx/recyclerview/widget/n;

    iget-object v7, v7, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_0
    const/4 v3, 0x0

    :cond_5
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bo:Lg/cea;

    iget-boolean v8, v7, Lg/cea;->b:Z

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    if-eqz v8, :cond_8

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-ne v8, v4, :cond_8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_27

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->r()I

    move-result v11

    if-ge v8, v11, :cond_7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    if-gt v8, v11, :cond_27

    :cond_7
    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lg/cea;->i(ILandroid/view/View;)V

    goto/16 :goto_e

    :cond_8
    :goto_1
    invoke-virtual {v7}, Lg/cea;->f()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v7, Lg/cea;->a:Z

    iget-boolean v3, v2, Lg/aqz;->n:Z

    if-nez v3, :cond_19

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-ne v3, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ltz v3, :cond_18

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v8

    if-lt v3, v8, :cond_a

    goto/16 :goto_6

    :cond_a
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    iput v3, v7, Lg/cea;->d:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->hasValidAnchor()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorLayoutFromEnd:Z

    iput-boolean v3, v7, Lg/cea;->a:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorOffset:I

    sub-int/2addr v3, v8

    iput v3, v7, Lg/cea;->e:I

    goto/16 :goto_d

    :cond_b
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->p()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$a;->mAnchorOffset:I

    add-int/2addr v3, v8

    iput v3, v7, Lg/cea;->e:I

    goto/16 :goto_d

    :cond_c
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    if-ne v3, v9, :cond_16

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->g()I

    move-result v11

    if-le v8, v11, :cond_d

    invoke-virtual {v7}, Lg/cea;->g()V

    goto/16 :goto_d

    :cond_d
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->p()I

    move-result v3

    iput v3, v7, Lg/cea;->e:I

    iput-boolean v5, v7, Lg/cea;->a:Z

    goto/16 :goto_d

    :cond_e
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8}, Lg/bjd;->r()I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    iput v3, v7, Lg/cea;->e:I

    iput-boolean v10, v7, Lg/cea;->a:Z

    goto/16 :goto_d

    :cond_f
    iget-boolean v8, v7, Lg/cea;->a:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget v11, v8, Lg/bjd;->c:I

    if-ne v9, v11, :cond_10

    const/4 v11, 0x0

    goto :goto_2

    :cond_10
    invoke-virtual {v8}, Lg/bjd;->g()I

    move-result v11

    iget v8, v8, Lg/bjd;->c:I

    sub-int/2addr v11, v8

    :goto_2
    add-int/2addr v11, v3

    goto :goto_3

    :cond_11
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v11

    :goto_3
    iput v11, v7, Lg/cea;->e:I

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-ge v8, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_4

    :cond_13
    const/4 v3, 0x0

    :goto_4
    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-ne v3, v8, :cond_14

    const/4 v3, 0x1

    goto :goto_5

    :cond_14
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v7, Lg/cea;->a:Z

    :cond_15
    invoke-virtual {v7}, Lg/cea;->g()V

    goto/16 :goto_d

    :cond_16
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iput-boolean v3, v7, Lg/cea;->a:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    sub-int/2addr v3, v8

    iput v3, v7, Lg/cea;->e:I

    goto/16 :goto_d

    :cond_17
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->p()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    add-int/2addr v3, v8

    iput v3, v7, Lg/cea;->e:I

    goto/16 :goto_d

    :cond_18
    :goto_6
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    iput v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    :cond_19
    :goto_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_b

    :cond_1a
    iget-object v3, v0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v8, v0, Landroidx/recyclerview/widget/b;->ds:Landroidx/recyclerview/widget/n;

    iget-object v8, v8, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_1c
    :goto_8
    const/4 v3, 0x0

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lg/yx;

    iget-object v11, v8, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v8, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v11

    if-ltz v11, :cond_1e

    iget-object v8, v8, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v8

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v11

    if-ge v8, v11, :cond_1e

    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lg/cea;->i(ILandroid/view/View;)V

    goto :goto_d

    :cond_1e
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bl:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    if-eq v3, v8, :cond_1f

    goto :goto_b

    :cond_1f
    iget-boolean v3, v7, Lg/cea;->a:Z

    invoke-virtual {v0, v1, v2, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ak(Landroidx/recyclerview/widget/f;Lg/aqz;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lg/cea;->h(ILandroid/view/View;)V

    iget-boolean v8, v2, Lg/aqz;->n:Z

    if-nez v8, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ah()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v3}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->r()I

    move-result v12

    if-gt v3, v11, :cond_20

    if-ge v8, v11, :cond_20

    const/4 v13, 0x1

    goto :goto_9

    :cond_20
    const/4 v13, 0x0

    :goto_9
    if-lt v8, v12, :cond_21

    if-le v3, v12, :cond_21

    const/4 v3, 0x1

    goto :goto_a

    :cond_21
    const/4 v3, 0x0

    :goto_a
    if-nez v13, :cond_22

    if-eqz v3, :cond_26

    :cond_22
    iget-boolean v3, v7, Lg/cea;->a:Z

    if-eqz v3, :cond_23

    move v11, v12

    :cond_23
    iput v11, v7, Lg/cea;->e:I

    goto :goto_d

    :cond_24
    :goto_b
    invoke-virtual {v7}, Lg/cea;->g()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v3

    sub-int/2addr v3, v10

    goto :goto_c

    :cond_25
    const/4 v3, 0x0

    :goto_c
    iput v3, v7, Lg/cea;->d:I

    :cond_26
    :goto_d
    iput-boolean v10, v7, Lg/cea;->b:Z

    :cond_27
    :goto_e
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v8, v3, Lg/cju;->j:I

    if-ltz v8, :cond_28

    const/4 v8, 0x1

    goto :goto_f

    :cond_28
    const/4 v8, -0x1

    :goto_f
    iput v8, v3, Lg/cju;->g:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bh:[I

    aput v5, v3, v5

    aput v5, v3, v10

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->df(Lg/aqz;[I)V

    aget v8, v3, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    add-int/2addr v11, v8

    aget v3, v3, v10

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8}, Lg/bjd;->f()I

    move-result v8

    add-int/2addr v8, v3

    iget-boolean v3, v2, Lg/aqz;->n:Z

    if-eqz v3, :cond_2b

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bq:I

    if-eq v3, v4, :cond_2b

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    if-eq v12, v9, :cond_2b

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v9, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->r()I

    move-result v9

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v12, v3}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v9, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    :goto_10
    sub-int/2addr v9, v3

    goto :goto_11

    :cond_29
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v9, v3}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->p()I

    move-result v9

    sub-int/2addr v3, v9

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->be:I

    goto :goto_10

    :goto_11
    if-lez v9, :cond_2a

    add-int/2addr v11, v9

    goto :goto_12

    :cond_2a
    sub-int/2addr v8, v9

    :cond_2b
    :goto_12
    iget-boolean v3, v7, Lg/cea;->a:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v3, :cond_2e

    :cond_2c
    const/4 v4, 0x1

    goto :goto_13

    :cond_2d
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eqz v3, :cond_2c

    :cond_2e
    :goto_13
    invoke-virtual {v0, v1, v2, v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ar(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cea;I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/b;->ex(Landroidx/recyclerview/widget/f;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4}, Lg/bjd;->n()I

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v4}, Lg/bjd;->l()I

    move-result v4

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_14

    :cond_2f
    const/4 v4, 0x0

    :goto_14
    iput-boolean v4, v3, Lg/cju;->d:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v5, v3, Lg/cju;->h:I

    iget-boolean v3, v7, Lg/cea;->a:Z

    if-eqz v3, :cond_31

    iget v3, v7, Lg/cea;->d:I

    iget v4, v7, Lg/cea;->e:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->bt(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v11, v3, Lg/cju;->a:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v4, v3, Lg/cju;->i:I

    iget v9, v3, Lg/cju;->c:I

    iget v3, v3, Lg/cju;->k:I

    if-lez v3, :cond_30

    add-int/2addr v8, v3

    :cond_30
    iget v3, v7, Lg/cea;->d:I

    iget v11, v7, Lg/cea;->e:I

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->db(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v8, v3, Lg/cju;->a:I

    iget v8, v3, Lg/cju;->c:I

    iget v11, v3, Lg/cju;->e:I

    add-int/2addr v8, v11

    iput v8, v3, Lg/cju;->c:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v8, v3, Lg/cju;->i:I

    iget v3, v3, Lg/cju;->k:I

    if-lez v3, :cond_34

    invoke-virtual {v0, v9, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->bt(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v3, v4, Lg/cju;->a:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v4, v3, Lg/cju;->i:I

    goto :goto_15

    :cond_31
    iget v3, v7, Lg/cea;->d:I

    iget v4, v7, Lg/cea;->e:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->db(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v8, v3, Lg/cju;->a:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v8, v3, Lg/cju;->i:I

    iget v4, v3, Lg/cju;->c:I

    iget v3, v3, Lg/cju;->k:I

    if-lez v3, :cond_32

    add-int/2addr v11, v3

    :cond_32
    iget v3, v7, Lg/cea;->d:I

    iget v9, v7, Lg/cea;->e:I

    invoke-virtual {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->bt(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v11, v3, Lg/cju;->a:I

    iget v9, v3, Lg/cju;->c:I

    iget v11, v3, Lg/cju;->e:I

    add-int/2addr v9, v11

    iput v9, v3, Lg/cju;->c:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v9, v3, Lg/cju;->i:I

    iget v3, v3, Lg/cju;->k:I

    if-lez v3, :cond_33

    invoke-virtual {v0, v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->db(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v3, v4, Lg/cju;->a:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iget v8, v3, Lg/cju;->i:I

    :cond_33
    move v4, v9

    :cond_34
    :goto_15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-lez v3, :cond_36

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    xor-int/2addr v3, v9

    if-eqz v3, :cond_35

    invoke-virtual {v0, v8, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->cg(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->dj(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I

    move-result v3

    :goto_16
    add-int/2addr v4, v3

    add-int/2addr v8, v3

    goto :goto_17

    :cond_35
    invoke-virtual {v0, v4, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->dj(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v8, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->cg(ILandroidx/recyclerview/widget/f;Lg/aqz;Z)I

    move-result v3

    goto :goto_16

    :cond_36
    :goto_17
    iget-boolean v3, v2, Lg/aqz;->b:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-eqz v3, :cond_3e

    iget-boolean v3, v2, Lg/aqz;->n:Z

    if-nez v3, :cond_3e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ah()Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_1c

    :cond_37
    iget-object v3, v1, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_18
    if-ge v12, v9, :cond_3b

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/p;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v16

    iget-object v10, v15, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    if-eqz v16, :cond_38

    goto :goto_1a

    :cond_38
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v15

    if-ge v15, v11, :cond_39

    const/4 v15, 0x1

    goto :goto_19

    :cond_39
    const/4 v15, 0x0

    :goto_19
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    if-eq v15, v6, :cond_3a

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v6, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v6

    add-int/2addr v13, v6

    goto :goto_1a

    :cond_3a
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v6, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v6

    add-int/2addr v14, v6

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_18

    :cond_3b
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput-object v3, v6, Lg/cju;->b:Ljava/util/List;

    if-lez v13, :cond_3c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cy()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->bt(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v13, v3, Lg/cju;->a:I

    iput v5, v3, Lg/cju;->k:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lg/cju;->m(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    :cond_3c
    if-lez v14, :cond_3d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ci()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->db(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput v14, v3, Lg/cju;->a:I

    iput v5, v3, Lg/cju;->k:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lg/cju;->m(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->bs(Landroidx/recyclerview/widget/f;Lg/cju;Lg/aqz;Z)I

    goto :goto_1b

    :cond_3d
    const/4 v4, 0x0

    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bn:Lg/cju;

    iput-object v4, v1, Lg/cju;->b:Ljava/util/List;

    :cond_3e
    :goto_1c
    iget-boolean v1, v2, Lg/aqz;->n:Z

    if-nez v1, :cond_3f

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->g()I

    move-result v2

    iput v2, v1, Lg/bjd;->c:I

    goto :goto_1d

    :cond_3f
    invoke-virtual {v7}, Lg/cea;->f()V

    :goto_1d
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bj:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bl:Z

    return-void
.end method

.method public s(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ct(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    sget-object p1, Lg/csk;->b:Lg/csk;

    invoke-virtual {p3, p1}, Lg/fnz;->k(Lg/csk;)V

    :cond_0
    return-void
.end method

.method public w(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->da(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public x(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ct(Lg/aqz;)I

    move-result p1

    return p1
.end method
