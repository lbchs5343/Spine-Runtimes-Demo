.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/b;
.source "SourceFile"

# interfaces
.implements Lg/wp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;
    }
.end annotation


# instance fields
.field public a:I

.field public aa:I

.field public final ac:I

.field public ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

.field public final af:Z

.field public ai:Z

.field public ak:Z

.field public final al:Lg/bjd;

.field public final b:Lg/ru;

.field public final c:Ljava/util/BitSet;

.field public final d:Landroid/graphics/Rect;

.field public final e:Lg/fdy;

.field public f:I

.field public g:Z

.field public final h:I

.field public final i:Lg/byd;

.field public final j:Lg/fyb;

.field public k:Z

.field public l:[I

.field public final o:Lg/bjd;

.field public final p:I

.field public final t:[Lg/ctw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    new-instance v0, Lg/fdy;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lg/fdy;-><init>(IZ)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroid/graphics/Rect;

    new-instance v2, Lg/ru;

    invoke-direct {v2, p0}, Lg/ru;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Lg/ru;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    new-instance v3, Lg/byd;

    const/16 v4, 0x19

    invoke-direct {v3, v4, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Lg/byd;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/b;->eb(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg/gur;

    move-result-object p1

    iget p2, p1, Lg/gur;->b:I

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->de(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :goto_1
    iget p2, p1, Lg/gur;->c:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->de(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-eq p2, p4, :cond_4

    invoke-virtual {v0}, Lg/fdy;->o()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    new-array p2, p2, [Lg/ctw;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    const/4 p2, 0x0

    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge p2, p4, :cond_3

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    new-instance v0, Lg/ctw;

    invoke-direct {v0, p0, p2}, Lg/ctw;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :cond_4
    iget-boolean p1, p1, Lg/gur;->d:Z

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->de(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    if-eq p3, p1, :cond_5

    iput-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    new-instance p1, Lg/fyb;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p1, Lg/fyb;->d:Z

    iput v1, p1, Lg/fyb;->e:I

    iput v1, p1, Lg/fyb;->i:I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    invoke-static {p0, p1}, Lg/bjd;->e(Landroidx/recyclerview/widget/b;I)Lg/bjd;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    sub-int/2addr v2, p1

    invoke-static {p0, v2}, Lg/bjd;->e(Landroidx/recyclerview/widget/b;I)Lg/bjd;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    return-void
.end method

.method public static an(III)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return p0

    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ab(Lg/yx;)Z
    .locals 0

    instance-of p1, p1, Lg/cur;

    return p1
.end method

.method public final ae(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/yx;
    .locals 1

    new-instance v0, Lg/cur;

    invoke-direct {v0, p1, p2}, Lg/yx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ag(II)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->as(III)V

    return-void
.end method

.method public final ah()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aj(Landroid/view/View;ILandroidx/recyclerview/widget/f;Lg/aqz;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->ds:Landroidx/recyclerview/widget/n;

    iget-object v0, v0, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move-object p1, v1

    :cond_3
    if-nez p1, :cond_4

    goto/16 :goto_10

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bs()V

    const/high16 v0, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_e

    const/4 v4, 0x2

    if-eq p2, v4, :cond_c

    const/16 v4, 0x11

    if-eq p2, v4, :cond_b

    const/16 v4, 0x21

    if-eq p2, v4, :cond_9

    const/16 v4, 0x42

    if-eq p2, v4, :cond_8

    const/16 v4, 0x82

    if-eq p2, v4, :cond_6

    :cond_5
    const/high16 p2, -0x80000000

    goto :goto_4

    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne p2, v3, :cond_5

    :cond_7
    :goto_1
    const/4 p2, 0x1

    goto :goto_4

    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-nez p2, :cond_5

    goto :goto_1

    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne p2, v3, :cond_5

    :cond_a
    :goto_2
    const/4 p2, -0x1

    goto :goto_4

    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-nez p2, :cond_5

    :goto_3
    goto :goto_2

    :cond_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne p2, v3, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne p2, v3, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :goto_4
    if-ne p2, v0, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/cur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/cur;->e:Lg/ctw;

    if-ne p2, v3, :cond_11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v4

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v4

    :goto_5
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ax(ILg/aqz;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iget v6, v5, Lg/fyb;->b:I

    add-int/2addr v6, v4

    iput v6, v5, Lg/fyb;->h:I

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v6}, Lg/bjd;->g()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Lg/fyb;->g:I

    iput-boolean v3, v5, Lg/fyb;->a:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Lg/fyb;->d:Z

    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    invoke-virtual {v0, v4, p2}, Lg/ctw;->u(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_12

    if-eq p3, p1, :cond_12

    return-object p3

    :cond_12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bv(I)Z

    move-result p3

    if-eqz p3, :cond_14

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    sub-int/2addr p3, v3

    :goto_6
    if-ltz p3, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lg/ctw;->u(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_13

    if-eq p4, p1, :cond_13

    return-object p4

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_14
    const/4 p3, 0x0

    :goto_7
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge p3, p4, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lg/ctw;->u(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_15

    if-eq p4, p1, :cond_15

    return-object p4

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    xor-int/2addr p3, v3

    if-ne p2, v2, :cond_17

    const/4 p4, 0x1

    goto :goto_8

    :cond_17
    const/4 p4, 0x0

    :goto_8
    if-ne p3, p4, :cond_18

    const/4 p3, 0x1

    goto :goto_9

    :cond_18
    const/4 p3, 0x0

    :goto_9
    if-eqz p3, :cond_19

    invoke-virtual {v0}, Lg/ctw;->o()I

    move-result p4

    goto :goto_a

    :cond_19
    invoke-virtual {v0}, Lg/ctw;->p()I

    move-result p4

    :goto_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/b;->cz(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1a

    if-eq p4, p1, :cond_1a

    return-object p4

    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bv(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    sub-int/2addr p2, v3

    :goto_b
    if-ltz p2, :cond_21

    iget p4, v0, Lg/ctw;->d:I

    if-ne p2, p4, :cond_1b

    goto :goto_d

    :cond_1b
    if-eqz p3, :cond_1c

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Lg/ctw;->o()I

    move-result p4

    goto :goto_c

    :cond_1c
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Lg/ctw;->p()I

    move-result p4

    :goto_c
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/b;->cz(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1d

    if-eq p4, p1, :cond_1d

    return-object p4

    :cond_1d
    :goto_d
    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_1e
    :goto_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v6, p2, :cond_21

    if-eqz p3, :cond_1f

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lg/ctw;->o()I

    move-result p2

    goto :goto_f

    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lg/ctw;->p()I

    move-result p2

    :goto_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->cz(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_20

    if-eq p2, p1, :cond_20

    return-object p2

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_21
    :goto_10
    return-object v1
.end method

.method public final am(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bg(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final ao(Landroid/view/ViewGroup$LayoutParams;)Lg/yx;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lg/cur;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lg/yx;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/cur;

    invoke-direct {v0, p1}, Lg/yx;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final ap(Lg/aqz;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Lg/ru;

    invoke-virtual {p1}, Lg/ru;->h()V

    return-void
.end method

.method public final aq()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ar(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lg/ctw;->w(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lg/ctw;->w(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final as(III)V
    .locals 7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    goto :goto_1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    invoke-virtual {v4, v3}, Lg/fdy;->v(I)I

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    const/4 v6, 0x2

    if-eq p3, v6, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1, v5}, Lg/fdy;->aj(II)V

    invoke-virtual {v4, p2, v5}, Lg/fdy;->al(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, p1, p2}, Lg/fdy;->aj(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, p1, p2}, Lg/fdy;->al(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :cond_8
    :goto_5
    return-void
.end method

.method public final at()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final au()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    invoke-virtual {v0}, Lg/fdy;->o()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public final av(Landroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final aw(Landroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ax(ILg/aqz;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    const/4 v1, 0x0

    iput v1, v0, Lg/fyb;->g:I

    iput p1, v0, Lg/fyb;->h:I

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->dr:Landroidx/recyclerview/widget/i;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Landroidx/recyclerview/widget/i;->g:Z

    if-eqz v2, :cond_2

    iget p2, p2, Lg/aqz;->g:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v2, p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p1}, Lg/bjd;->g()I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p1}, Lg/bjd;->g()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->p()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lg/fyb;->e:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p2}, Lg/bjd;->r()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v0, Lg/fyb;->i:I

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->l()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Lg/fyb;->i:I

    neg-int p1, p2

    iput p1, v0, Lg/fyb;->e:I

    :goto_3
    iput-boolean v1, v0, Lg/fyb;->a:Z

    iput-boolean v3, v0, Lg/fyb;->d:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p1}, Lg/bjd;->n()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p1}, Lg/bjd;->l()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, v0, Lg/fyb;->f:Z

    return-void
.end method

.method public final ay(Landroid/graphics/Rect;II)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v3, 0x1

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int p3, p3, v4

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int p1, p1, v4

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p1

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final az()Lg/yx;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lg/cur;

    invoke-direct {v0, v2, v1}, Lg/yx;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lg/cur;

    invoke-direct {v0, v1, v2}, Lg/yx;-><init>(II)V

    return-object v0
.end method

.method public final ba(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Lg/ru;

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/b;->fh(Landroidx/recyclerview/widget/f;)V

    invoke-virtual {v5}, Lg/ru;->h()V

    return-void

    :cond_1
    iget-boolean v3, v5, Lg/ru;->b:Z

    iget-object v6, v5, Lg/ru;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    const/high16 v10, -0x80000000

    if-eqz v3, :cond_25

    invoke-virtual {v5}, Lg/ru;->h()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v11, :cond_a

    iget v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsetsSize:I

    if-lez v12, :cond_7

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ne v12, v13, :cond_6

    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lg/ctw;->v()V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v13, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsets:[I

    aget v13, v13, v11

    if-eq v13, v10, :cond_5

    iget-boolean v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorLayoutFromEnd:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->r()I

    move-result v12

    :goto_3
    add-int/2addr v13, v12

    goto :goto_4

    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->p()I

    move-result v12

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v12, v12, v11

    iput v13, v12, Lg/ctw;->g:I

    iput v13, v12, Lg/ctw;->h:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->invalidateSpanInfo()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mVisibleAnchorPosition:I

    iput v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-boolean v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mLastLayoutRTL:Z

    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ai:Z

    iget-boolean v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->de(Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v12, :cond_8

    iget-boolean v13, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    if-eq v13, v11, :cond_8

    iput-boolean v11, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->em()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bs()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    if-eq v12, v4, :cond_9

    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iget-boolean v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorLayoutFromEnd:Z

    iput-boolean v12, v5, Lg/ru;->f:Z

    goto :goto_5

    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iput-boolean v12, v5, Lg/ru;->f:Z

    :goto_5
    iget v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanLookupSize:I

    if-le v12, v8, :cond_b

    iget-object v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanLookup:[I

    iput-object v12, v9, Lg/fdy;->c:Ljava/lang/Object;

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mFullSpanItems:Ljava/util/List;

    iput-object v11, v9, Lg/fdy;->a:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bs()V

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iput-boolean v11, v5, Lg/ru;->f:Z

    :cond_b
    :goto_6
    iget-boolean v11, v2, Lg/aqz;->n:Z

    if-nez v11, :cond_20

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ne v11, v4, :cond_c

    goto/16 :goto_10

    :cond_c
    if-ltz v11, :cond_1f

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v12

    if-lt v11, v12, :cond_d

    goto/16 :goto_f

    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v11, :cond_f

    iget v12, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    if-eq v12, v4, :cond_f

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsetsSize:I

    if-ge v11, v8, :cond_e

    goto :goto_7

    :cond_e
    iput v10, v5, Lg/ru;->e:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iput v11, v5, Lg/ru;->c:I

    goto/16 :goto_14

    :cond_f
    :goto_7
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->cz(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v12, :cond_10

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v12

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v12

    :goto_8
    iput v12, v5, Lg/ru;->c:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    if-eq v12, v10, :cond_12

    iget-boolean v12, v5, Lg/ru;->f:Z

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->r()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v13, v11}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->p()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v13, v11}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12, v11}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v13}, Lg/bjd;->g()I

    move-result v13

    if-le v12, v13, :cond_14

    iget-boolean v11, v5, Lg/ru;->f:Z

    if-eqz v11, :cond_13

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->r()I

    move-result v11

    goto :goto_9

    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    :goto_9
    iput v11, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12, v11}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v13}, Lg/bjd;->p()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_15

    neg-int v11, v12

    iput v11, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12}, Lg/bjd;->r()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v13, v11}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    if-gez v12, :cond_16

    iput v12, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_16
    iput v10, v5, Lg/ru;->e:I

    goto/16 :goto_14

    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iput v11, v5, Lg/ru;->c:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    if-ne v12, v10, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v12

    if-nez v12, :cond_18

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v11, :cond_1a

    goto :goto_b

    :cond_18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v12

    if-ge v11, v12, :cond_19

    const/4 v11, 0x1

    goto :goto_a

    :cond_19
    const/4 v11, 0x0

    :goto_a
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eq v11, v12, :cond_1b

    :cond_1a
    const/4 v11, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v11, 0x1

    :goto_c
    iput-boolean v11, v5, Lg/ru;->f:Z

    if-eqz v11, :cond_1c

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->r()I

    move-result v11

    goto :goto_d

    :cond_1c
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    :goto_d
    iput v11, v5, Lg/ru;->e:I

    goto :goto_e

    :cond_1d
    iget-boolean v11, v5, Lg/ru;->f:Z

    if-eqz v11, :cond_1e

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->r()I

    move-result v11

    sub-int/2addr v11, v12

    iput v11, v5, Lg/ru;->e:I

    goto :goto_e

    :cond_1e
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v5, Lg/ru;->e:I

    :goto_e
    iput-boolean v8, v5, Lg/ru;->a:Z

    goto :goto_14

    :cond_1f
    :goto_f
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    :cond_20
    :goto_10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    if-eqz v11, :cond_23

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v11

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v12

    sub-int/2addr v12, v8

    :goto_11
    if-ltz v12, :cond_22

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_21

    if-ge v13, v11, :cond_21

    goto :goto_13

    :cond_21
    add-int/lit8 v12, v12, -0x1

    goto :goto_11

    :cond_22
    const/4 v13, 0x0

    goto :goto_13

    :cond_23
    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v11

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v12

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v12, :cond_22

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_24

    if-ge v14, v11, :cond_24

    move v13, v14

    goto :goto_13

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :goto_13
    iput v13, v5, Lg/ru;->c:I

    iput v10, v5, Lg/ru;->e:I

    :goto_14
    iput-boolean v8, v5, Lg/ru;->b:Z

    :cond_25
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-nez v11, :cond_27

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ne v11, v4, :cond_27

    iget-boolean v11, v5, Lg/ru;->f:Z

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    if-ne v11, v12, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v11

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ai:Z

    if-eq v11, v12, :cond_27

    :cond_26
    invoke-virtual {v9}, Lg/fdy;->o()V

    iput-boolean v8, v5, Lg/ru;->a:Z

    :cond_27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v9

    if-lez v9, :cond_36

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v9, :cond_28

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsetsSize:I

    if-ge v9, v8, :cond_36

    :cond_28
    iget-boolean v9, v5, Lg/ru;->a:Z

    if-eqz v9, :cond_2a

    const/4 v3, 0x0

    :goto_15
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lg/ctw;->v()V

    iget v6, v5, Lg/ru;->e:I

    if-eq v6, v10, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v9, v9, v3

    iput v6, v9, Lg/ctw;->g:I

    iput v6, v9, Lg/ctw;->h:I

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    if-nez v3, :cond_2c

    iget-object v3, v5, Lg/ru;->d:[I

    if-nez v3, :cond_2b

    goto :goto_17

    :cond_2b
    const/4 v3, 0x0

    :goto_16
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lg/ctw;->v()V

    iget-object v9, v5, Lg/ru;->d:[I

    aget v9, v9, v3

    iput v9, v6, Lg/ctw;->g:I

    iput v9, v6, Lg/ctw;->h:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    :goto_17
    const/4 v3, 0x0

    :goto_18
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v3, v9, :cond_33

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v9, v9, v3

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iget v12, v5, Lg/ru;->e:I

    iget-object v13, v9, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_2d

    invoke-virtual {v9, v10}, Lg/ctw;->l(I)I

    move-result v14

    goto :goto_19

    :cond_2d
    invoke-virtual {v9, v10}, Lg/ctw;->w(I)I

    move-result v14

    :goto_19
    invoke-virtual {v9}, Lg/ctw;->v()V

    if-ne v14, v10, :cond_2e

    goto :goto_1a

    :cond_2e
    if-eqz v11, :cond_2f

    iget-object v15, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v15}, Lg/bjd;->r()I

    move-result v15

    if-lt v14, v15, :cond_32

    :cond_2f
    if-nez v11, :cond_30

    iget-object v11, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    if-le v14, v11, :cond_30

    goto :goto_1a

    :cond_30
    if-eq v12, v10, :cond_31

    add-int/2addr v14, v12

    :cond_31
    iput v14, v9, Lg/ctw;->h:I

    iput v14, v9, Lg/ctw;->g:I

    :cond_32
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_33
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    array-length v9, v3

    iget-object v11, v5, Lg/ru;->d:[I

    if-eqz v11, :cond_34

    array-length v11, v11

    if-ge v11, v9, :cond_35

    :cond_34
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v5, Lg/ru;->d:[I

    :cond_35
    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v9, :cond_36

    iget-object v11, v5, Lg/ru;->d:[I

    aget-object v12, v3, v6

    invoke-virtual {v12, v10}, Lg/ctw;->w(I)I

    move-result v12

    aput v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/b;->ex(Landroidx/recyclerview/widget/f;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iput-boolean v7, v3, Lg/fyb;->d:Z

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v6}, Lg/bjd;->g()I

    move-result v6

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    div-int v9, v6, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->n()I

    move-result v9

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v6, v5, Lg/ru;->c:I

    invoke-virtual {v0, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ax(ILg/aqz;)V

    iget-boolean v6, v5, Lg/ru;->f:Z

    if-eqz v6, :cond_37

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    iget v4, v5, Lg/ru;->c:I

    iget v6, v3, Lg/fyb;->b:I

    add-int/2addr v4, v6

    iput v4, v3, Lg/fyb;->h:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    goto :goto_1c

    :cond_37
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    iget v4, v5, Lg/ru;->c:I

    iget v6, v3, Lg/fyb;->b:I

    add-int/2addr v4, v6

    iput v4, v3, Lg/fyb;->h:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    :goto_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->n()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_38

    goto/16 :goto_21

    :cond_38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v3, :cond_3a

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v9

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v11, v9}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v12, v11, v4

    if-gez v12, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/cur;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3a
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    int-to-float v9, v9

    mul-float v4, v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->n()I

    move-result v9

    if-ne v9, v10, :cond_3b

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->g()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3b
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    div-int v9, v4, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->n()I

    move-result v9

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v6, :cond_3c

    goto :goto_21

    :cond_3c
    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_3f

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lg/cur;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v11

    if-eqz v11, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne v11, v8, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    sub-int/2addr v11, v8

    iget-object v10, v10, Lg/cur;->e:Lg/ctw;

    iget v10, v10, Lg/ctw;->d:I

    sub-int/2addr v11, v10

    neg-int v10, v11

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int v11, v11, v10

    mul-int v10, v10, v6

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3d
    iget-object v10, v10, Lg/cur;->e:Lg/ctw;

    iget v10, v10, Lg/ctw;->d:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int v11, v11, v10

    mul-int v10, v10, v6

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne v12, v8, :cond_3e

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3e
    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3f
    :goto_21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-lez v3, :cond_41

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v3, :cond_40

    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bw(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bd(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    goto :goto_22

    :cond_40
    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bd(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bw(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    :cond_41
    :goto_22
    if-eqz p3, :cond_43

    iget-boolean v3, v2, Lg/aqz;->n:Z

    if-nez v3, :cond_43

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:I

    if-eqz v3, :cond_43

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v3

    if-lez v3, :cond_43

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bl()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, v0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_42

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Lg/byd;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->br()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_23

    :cond_43
    const/4 v8, 0x0

    :goto_23
    iget-boolean v3, v2, Lg/aqz;->n:Z

    if-eqz v3, :cond_44

    invoke-virtual {v5}, Lg/ru;->h()V

    :cond_44
    iget-boolean v3, v5, Lg/ru;->f:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v3

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ai:Z

    if-eqz v8, :cond_45

    invoke-virtual {v5}, Lg/ru;->h()V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ba(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    :cond_45
    return-void
.end method

.method public final bb(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->as(III)V

    return-void
.end method

.method public final bc(ILg/aqz;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iput-boolean v0, v3, Lg/fyb;->d:Z

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ax(ILg/aqz;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bq(I)V

    iget p2, v3, Lg/fyb;->b:I

    add-int/2addr v1, p2

    iput v1, v3, Lg/fyb;->h:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v3, Lg/fyb;->g:I

    return-void
.end method

.method public final bd(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ar(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->p()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bg(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lg/bjd;->h(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final be(Lg/aqz;)I
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lg/ckd;->au(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;ZZ)I

    move-result p1

    return p1
.end method

.method public final bf(Landroidx/recyclerview/widget/f;I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3, v2}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3, v2}, Lg/bjd;->m(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lg/cur;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lg/cur;->e:Lg/ctw;

    iget-object v4, v4, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lg/cur;->e:Lg/ctw;

    iget-object v4, v3, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lg/cur;

    const/4 v7, 0x0

    iput-object v7, v6, Lg/cur;->e:Lg/ctw;

    iget-object v7, v6, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v3, Lg/ctw;->c:I

    iget-object v7, v3, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v7, v4}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v3, Lg/ctw;->c:I

    :cond_2
    const/high16 v4, -0x80000000

    if-ne v5, v1, :cond_3

    iput v4, v3, Lg/ctw;->g:I

    :cond_3
    iput v4, v3, Lg/ctw;->h:I

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/b;->fi(Landroid/view/View;Landroidx/recyclerview/widget/f;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final bg(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bc(ILg/aqz;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I

    move-result p3

    iget v2, v0, Lg/fyb;->g:I

    if-ge v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    neg-int v2, p1

    invoke-virtual {p3, v2}, Lg/bjd;->h(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    iput v1, v0, Lg/fyb;->g:I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bo(Landroidx/recyclerview/widget/f;Lg/fyb;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final bh(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lg/ctw;->l(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lg/ctw;->l(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final bi()Z
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

.method public final bj(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->p()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->r()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v6, v5}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v7, v5}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final bk(Landroidx/recyclerview/widget/f;Lg/fyb;Lg/aqz;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    const/4 v4, 0x0

    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iget-boolean v5, v3, Lg/fyb;->f:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lg/fyb;->c:I

    if-ne v5, v6, :cond_0

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v5, -0x80000000

    goto :goto_0

    :cond_1
    iget v5, v2, Lg/fyb;->c:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lg/fyb;->i:I

    iget v9, v2, Lg/fyb;->g:I

    add-int/2addr v5, v9

    goto :goto_0

    :cond_2
    iget v5, v2, Lg/fyb;->e:I

    iget v9, v2, Lg/fyb;->g:I

    sub-int/2addr v5, v9

    :goto_0
    iget v9, v2, Lg/fyb;->c:I

    const/4 v10, 0x0

    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v11, v11, v10

    iget-object v11, v11, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v11, v11, v10

    invoke-virtual {v0, v11, v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bt(Lg/ctw;II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->r()I

    move-result v9

    goto :goto_3

    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v9}, Lg/bjd;->p()I

    move-result v9

    :goto_3
    const/4 v10, 0x0

    :goto_4
    iget v11, v2, Lg/fyb;->h:I

    const/4 v12, -0x1

    if-ltz v11, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lg/aqz;->p()I

    move-result v13

    if-ge v11, v13, :cond_1c

    iget-boolean v11, v3, Lg/fyb;->f:Z

    if-nez v11, :cond_6

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1c

    :cond_6
    iget v10, v2, Lg/fyb;->h:I

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/f;->n(I)Landroid/view/View;

    move-result-object v10

    iget v11, v2, Lg/fyb;->h:I

    iget v13, v2, Lg/fyb;->b:I

    add-int/2addr v11, v13

    iput v11, v2, Lg/fyb;->h:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lg/cur;

    iget-object v13, v11, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    iget-object v15, v14, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v15, [I

    if-eqz v15, :cond_8

    array-length v8, v15

    if-lt v13, v8, :cond_7

    goto :goto_5

    :cond_7
    aget v8, v15, v13

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v8, -0x1

    :goto_6
    if-ne v8, v12, :cond_e

    iget v8, v2, Lg/fyb;->c:I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bv(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    sub-int/2addr v8, v6

    const/4 v15, -0x1

    const/16 v16, -0x1

    goto :goto_7

    :cond_9
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    move v15, v8

    const/4 v8, 0x0

    const/16 v16, 0x1

    :goto_7
    iget v7, v2, Lg/fyb;->c:I

    const/16 v17, 0x0

    if-ne v7, v6, :cond_c

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v7}, Lg/bjd;->p()I

    move-result v7

    const v4, 0x7fffffff

    :goto_8
    if-eq v8, v15, :cond_b

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v12, v12, v8

    invoke-virtual {v12, v7}, Lg/ctw;->l(I)I

    move-result v6

    if-ge v6, v4, :cond_a

    move v4, v6

    move-object/from16 v17, v12

    :cond_a
    add-int v8, v8, v16

    const/4 v6, 0x1

    const/4 v12, -0x1

    goto :goto_8

    :cond_b
    move-object/from16 v4, v17

    goto :goto_a

    :cond_c
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v4}, Lg/bjd;->r()I

    move-result v4

    const/high16 v6, -0x80000000

    :goto_9
    if-eq v8, v15, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v7, v7, v8

    invoke-virtual {v7, v4}, Lg/ctw;->w(I)I

    move-result v12

    if-le v12, v6, :cond_d

    move-object/from16 v17, v7

    move v6, v12

    :cond_d
    add-int v8, v8, v16

    goto :goto_9

    :goto_a
    invoke-virtual {v14, v13}, Lg/fdy;->m(I)V

    iget-object v6, v14, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v6, [I

    iget v7, v4, Lg/ctw;->d:I

    aput v7, v6, v13

    goto :goto_b

    :cond_e
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v4, v4, v8

    :goto_b
    iput-object v4, v11, Lg/cur;->e:Lg/ctw;

    iget v6, v2, Lg/fyb;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_c

    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v0, v10, v8, v8}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    :goto_c
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-ne v6, v7, :cond_10

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v12, v0, Landroidx/recyclerview/widget/b;->dq:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v12, v8, v13, v8}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v6

    iget v8, v0, Landroidx/recyclerview/widget/b;->dn:I

    iget v12, v0, Landroidx/recyclerview/widget/b;->du:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v13

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v14

    add-int/2addr v14, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v12, v14, v13, v7}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bm(Landroid/view/View;II)V

    goto :goto_d

    :cond_10
    iget v6, v0, Landroidx/recyclerview/widget/b;->do:I

    iget v8, v0, Landroidx/recyclerview/widget/b;->dq:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v13

    add-int/2addr v13, v12

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v8, v13, v12, v7}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v6

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v12, v0, Landroidx/recyclerview/widget/b;->du:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v14, 0x0

    invoke-static {v8, v12, v14, v13, v14}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bm(Landroid/view/View;II)V

    :goto_d
    iget v6, v2, Lg/fyb;->c:I

    if-ne v6, v7, :cond_11

    invoke-virtual {v4, v9}, Lg/ctw;->l(I)I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v7, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_e

    :cond_11
    invoke-virtual {v4, v9}, Lg/ctw;->w(I)I

    move-result v7

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v6, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v6

    sub-int v6, v7, v6

    :goto_e
    iget v8, v2, Lg/fyb;->c:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_15

    iget-object v8, v11, Lg/cur;->e:Lg/ctw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lg/cur;

    iput-object v8, v11, Lg/cur;->e:Lg/ctw;

    iget-object v13, v8, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v14, -0x80000000

    iput v14, v8, Lg/ctw;->h:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v12, :cond_12

    iput v14, v8, Lg/ctw;->g:I

    :cond_12
    iget-object v12, v11, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v11, v11, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    iget v11, v8, Lg/ctw;->c:I

    iget-object v12, v8, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, Lg/ctw;->c:I

    :cond_14
    const/high16 v14, -0x80000000

    goto :goto_f

    :cond_15
    iget-object v8, v11, Lg/cur;->e:Lg/ctw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lg/cur;

    iput-object v8, v11, Lg/cur;->e:Lg/ctw;

    iget-object v12, v8, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v14, -0x80000000

    iput v14, v8, Lg/ctw;->g:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    iput v14, v8, Lg/ctw;->h:I

    :cond_16
    iget-object v12, v11, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v11, v11, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_17
    iget v11, v8, Lg/ctw;->c:I

    iget-object v12, v8, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, Lg/ctw;->c:I

    :cond_18
    :goto_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_19

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v8}, Lg/bjd;->r()I

    move-result v8

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    sub-int/2addr v11, v12

    iget v12, v4, Lg/ctw;->d:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int v11, v11, v12

    sub-int/2addr v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v11, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v11

    sub-int v11, v8, v11

    goto :goto_10

    :cond_19
    iget v8, v4, Lg/ctw;->d:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int v8, v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Lg/bjd;

    invoke-virtual {v8, v10}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v11

    :goto_10
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a

    invoke-static {v10, v11, v6, v8, v7}, Landroidx/recyclerview/widget/b;->ec(Landroid/view/View;IIII)V

    goto :goto_11

    :cond_1a
    invoke-static {v10, v6, v11, v7, v8}, Landroidx/recyclerview/widget/b;->ec(Landroid/view/View;IIII)V

    :goto_11
    iget v6, v3, Lg/fyb;->c:I

    invoke-virtual {v0, v4, v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bt(Lg/ctw;II)V

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bo(Landroidx/recyclerview/widget/f;Lg/fyb;)V

    iget-boolean v6, v3, Lg/fyb;->a:Z

    if-eqz v6, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    iget v4, v4, Lg/ctw;->d:I

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Ljava/util/BitSet;->set(IZ)V

    :cond_1b
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_1c
    if-nez v10, :cond_1d

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bo(Landroidx/recyclerview/widget/f;Lg/fyb;)V

    :cond_1d
    iget v1, v3, Lg/fyb;->c:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1e

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ar(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->p()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_12

    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bh(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    sub-int v3, v1, v3

    :goto_12
    if-lez v3, :cond_1f

    iget v1, v2, Lg/fyb;->g:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_1f
    const/16 v18, 0x0

    return v18
.end method

.method public final bl()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v6, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v7, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eq v1, v0, :cond_d

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lg/cur;

    iget-object v9, v8, Lg/cur;->e:Lg/ctw;

    iget v9, v9, Lg/ctw;->d:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, Lg/cur;->e:Lg/ctw;

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    const/high16 v11, -0x80000000

    if-eqz v10, :cond_4

    iget v10, v9, Lg/ctw;->h:I

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lg/ctw;->q()V

    iget v10, v9, Lg/ctw;->h:I

    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->r()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v0, v9, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/cur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_4
    iget v10, v9, Lg/ctw;->g:I

    if-eq v10, v11, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v9, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lg/cur;

    iget-object v12, v9, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v12, v10}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v10

    iput v10, v9, Lg/ctw;->g:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lg/ctw;->g:I

    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11}, Lg/bjd;->p()I

    move-result v11

    if-le v10, v11, :cond_6

    iget-object v0, v9, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/cur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_6
    iget-object v9, v8, Lg/cur;->e:Lg/ctw;

    iget v9, v9, Lg/ctw;->d:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_7
    add-int/2addr v1, v6

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v10, v7}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11, v9}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_8

    goto :goto_7

    :cond_8
    if-ne v10, v11, :cond_2

    goto :goto_4

    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v10, v7}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v11, v9}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_a

    goto :goto_7

    :cond_a
    if-ne v10, v11, :cond_2

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lg/cur;

    iget-object v8, v8, Lg/cur;->e:Lg/ctw;

    iget v8, v8, Lg/ctw;->d:I

    iget-object v9, v9, Lg/cur;->e:Lg/ctw;

    iget v9, v9, Lg/ctw;->d:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    :goto_5
    if-gez v3, :cond_c

    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    :goto_6
    if-eq v8, v9, :cond_2

    :goto_7
    return-object v7

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bm(Landroid/view/View;II)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/cur;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->an(III)I

    move-result p2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->an(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/b;->fk(Landroid/view/View;IILg/yx;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final bn(Landroidx/recyclerview/widget/f;I)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->j(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/cur;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lg/cur;->e:Lg/ctw;

    iget-object v3, v3, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lg/cur;->e:Lg/ctw;

    iget-object v3, v2, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg/cur;

    const/4 v5, 0x0

    iput-object v5, v4, Lg/cur;->e:Lg/ctw;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v5, -0x80000000

    if-nez v3, :cond_1

    iput v5, v2, Lg/ctw;->h:I

    :cond_1
    iget-object v3, v4, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, Lg/ctw;->c:I

    iget-object v4, v2, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v4, v0}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Lg/ctw;->c:I

    :cond_3
    iput v5, v2, Lg/ctw;->g:I

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/b;->fi(Landroid/view/View;Landroidx/recyclerview/widget/f;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final bo(Landroidx/recyclerview/widget/f;Lg/fyb;)V
    .locals 4

    iget-boolean v0, p2, Lg/fyb;->d:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lg/fyb;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Lg/fyb;->g:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lg/fyb;->c:I

    if-ne v0, v1, :cond_1

    iget p2, p2, Lg/fyb;->i:I

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bf(Landroidx/recyclerview/widget/f;I)V

    return-void

    :cond_1
    iget p2, p2, Lg/fyb;->e:I

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bn(Landroidx/recyclerview/widget/f;I)V

    return-void

    :cond_2
    iget v0, p2, Lg/fyb;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p2, Lg/fyb;->e:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lg/ctw;->w(I)I

    move-result v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lg/ctw;->w(I)I

    move-result v3

    if-le v3, v1, :cond_3

    move v1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    iget p2, p2, Lg/fyb;->i:I

    goto :goto_1

    :cond_5
    iget v1, p2, Lg/fyb;->i:I

    iget p2, p2, Lg/fyb;->g:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bf(Landroidx/recyclerview/widget/f;I)V

    return-void

    :cond_6
    iget v0, p2, Lg/fyb;->i:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lg/ctw;->l(I)I

    move-result v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lg/ctw;->l(I)I

    move-result v3

    if-ge v3, v1, :cond_7

    move v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, Lg/fyb;->i:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    iget p2, p2, Lg/fyb;->e:I

    goto :goto_3

    :cond_9
    iget v0, p2, Lg/fyb;->e:I

    iget p2, p2, Lg/fyb;->g:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bn(Landroidx/recyclerview/widget/f;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final bp(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->p()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->r()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v5, v4}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v6, v4}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final bq(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    iput p1, v0, Lg/fyb;->c:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Lg/fyb;->b:I

    return-void
.end method

.method public final br()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/b;->dz:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bl()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    invoke-virtual {v0}, Lg/fdy;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/b;->dt:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final bs()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    return-void
.end method

.method public final bt(Lg/ctw;II)V
    .locals 5

    iget v0, p1, Lg/ctw;->c:I

    iget v1, p1, Lg/ctw;->d:I

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    iget p2, p1, Lg/ctw;->g:I

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lg/ctw;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/cur;

    iget-object v3, p1, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3, p2}, Lg/bjd;->k(Landroid/view/View;)I

    move-result p2

    iput p2, p1, Lg/ctw;->g:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lg/ctw;->g:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    return-void

    :cond_1
    iget p2, p1, Lg/ctw;->h:I

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lg/ctw;->q()V

    iget p2, p1, Lg/ctw;->h:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    return-void
.end method

.method public final bu(IILg/aqz;Landroidx/recyclerview/widget/r;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bc(ILg/aqz;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:[I

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Lg/fyb;

    if-ge p2, v1, :cond_6

    iget v1, v2, Lg/fyb;->b:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    iget v1, v2, Lg/fyb;->e:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lg/ctw;->w(I)I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, p2

    iget v3, v2, Lg/fyb;->i:I

    invoke-virtual {v1, v3}, Lg/ctw;->l(I)I

    move-result v1

    iget v2, v2, Lg/fyb;->i:I

    goto :goto_2

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_4
    if-ge p1, v0, :cond_7

    iget p2, v2, Lg/fyb;->h:I

    if-ltz p2, :cond_7

    invoke-virtual {p3}, Lg/aqz;->p()I

    move-result v1

    if-ge p2, v1, :cond_7

    iget p2, v2, Lg/fyb;->h:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:[I

    aget v1, v1, p1

    invoke-virtual {p4, p2, v1}, Landroidx/recyclerview/widget/r;->e(II)V

    iget p2, v2, Lg/fyb;->h:I

    iget v1, v2, Lg/fyb;->b:I

    add-int/2addr p2, v1

    iput p2, v2, Lg/fyb;->h:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final bv(I)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bi()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public final bw(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bh(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v0}, Lg/bjd;->r()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bg(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {p1, v0}, Lg/bjd;->h(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bx()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    return v0
.end method

.method public final ca()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cc()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V

    return-object v1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mReverseLayout:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorLayoutFromEnd:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ai:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mLastLayoutRTL:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v3, [I

    if-eqz v3, :cond_1

    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanLookupSize:I

    iget-object v2, v2, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanLookupSize:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_8

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->at()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v2

    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mVisibleAnchorPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsetsSize:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsets:[I

    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v1, v2, :cond_7

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lg/ctw;->l(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    :goto_5
    sub-int/2addr v2, v3

    goto :goto_6

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lg/ctw;->w(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->p()I

    move-result v3

    goto :goto_5

    :cond_6
    :goto_6
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsets:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mVisibleAnchorPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mSpanOffsetsSize:I

    return-object v0
.end method

.method public final cd()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ce(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->ce(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final cf(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eqz p1, :cond_3

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aq()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ak:Z

    if-eq p1, v0, :cond_0

    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    if-nez v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 v2, 0x0

    if-nez v0, :cond_5

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    :cond_5
    iput v2, p1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method public final ch()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cm(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/i;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/i;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/i;->h:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->ep(Landroidx/recyclerview/widget/i;)V

    return-void
.end method

.method public final cr(Lg/aqz;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/ckd;->am(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final cx(Lg/aqz;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/ckd;->am(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final dc(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Lg/byd;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg/ctw;->v()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final de(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->de(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dg(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->invalidateAnchorPositionInfo()V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->invalidateSpanInfo()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    :cond_1
    return-void
.end method

.method public final dh(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ad:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->mAnchorPosition:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->aa:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void
.end method

.method public final ei(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->br()Z

    :cond_0
    return-void
.end method

.method public final el()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Lg/fdy;

    invoke-virtual {v0}, Lg/fdy;->o()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg/ctw;->v()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ez(I)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->ez(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v0

    iget v2, v1, Lg/ctw;->g:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Lg/ctw;->g:I

    :cond_0
    iget v2, v1, Lg/ctw;->h:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lg/ctw;->h:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final fe(I)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b;->fe(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Lg/ctw;

    aget-object v1, v1, v0

    iget v2, v1, Lg/ctw;->g:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Lg/ctw;->g:I

    :cond_0
    iget v2, v1, Lg/ctw;->h:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lg/ctw;->h:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bg(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final q(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->be(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final r(Landroidx/recyclerview/widget/f;Lg/aqz;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ba(Landroidx/recyclerview/widget/f;Lg/aqz;Z)V

    return-void
.end method

.method public final s(Lg/aqz;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/ckd;->bg(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final u(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->as(III)V

    return-void
.end method

.method public final v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V

    const-string p1, "androidx.recyclerview.widget.StaggeredGridLayoutManager"

    invoke-virtual {p3, p1}, Lg/fnz;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final w(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->be(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final x(Lg/aqz;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bj(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->bp(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->af:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/ckd;->bg(Lg/aqz;Lg/bjd;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/b;Z)I

    move-result p1

    return p1
.end method

.method public final y(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->as(III)V

    return-void
.end method

.method public final z(Landroidx/recyclerview/widget/f;Lg/aqz;Landroid/view/View;Lg/fnz;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lg/cur;

    if-nez p2, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/b;->eu(Landroid/view/View;Lg/fnz;)V

    return-void

    :cond_0
    check-cast p1, Lg/cur;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ac:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_2

    iget-object p1, p1, Lg/cur;->e:Lg/ctw;

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget p1, p1, Lg/ctw;->d:I

    :goto_0
    invoke-static {p1, v0, v1, v1, p3}, Lg/fc;->f(IIIIZ)Lg/fc;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/fnz;->l(Lg/fc;)V

    return-void

    :cond_2
    iget-object p1, p1, Lg/cur;->e:Lg/ctw;

    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    iget p1, p1, Lg/ctw;->d:I

    :goto_1
    invoke-static {v1, v1, p1, v0, p3}, Lg/fc;->f(IIIIZ)Lg/fc;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/fnz;->l(Lg/fc;)V

    return-void
.end method
