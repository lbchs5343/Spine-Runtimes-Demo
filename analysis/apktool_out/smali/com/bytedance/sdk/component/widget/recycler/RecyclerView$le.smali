.class Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "le"
.end annotation


# instance fields
.field d:Landroid/view/animation/Interpolator;

.field dq:Landroid/widget/OverScroller;

.field private iw:Z

.field private mn:Z

.field final synthetic ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->er:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->iw:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->mn:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    return-void
.end method

.method private d(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int p3, p3, p3

    mul-int p4, p4, p4

    add-int/2addr p4, p3

    int-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(F)F

    move-result p1

    mul-float p1, p1, p4

    add-float/2addr p1, p4

    if-lez p3, :cond_2

    int-to-float p2, p3

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private dq(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private ox()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->mn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->iw:Z

    return-void
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->iw:Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->mn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public d(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(IIII)V

    return-void
.end method

.method public dq()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->iw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->mn:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/mn;->dq(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(II)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->s:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->p:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    return-void
.end method

.method public dq(III)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->er:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public dq(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(III)V

    return-void
.end method

.method public dq(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->s:I

    iput p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->p:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    return-void
.end method

.method public dq(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->er:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->d()V

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox()V

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p()V

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq:Landroid/widget/OverScroller;

    iget-object v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    iget-object v2, v2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ig:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v8, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->u:[I

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    iget v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->p:I

    sub-int v6, v3, v5

    iget v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->s:I

    sub-int v7, v11, v5

    iput v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->p:I

    iput v11, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->s:I

    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(II[I[II)Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_1

    aget v5, v8, v4

    sub-int/2addr v6, v5

    aget v5, v8, v9

    sub-int/2addr v7, v5

    :cond_1
    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v8, v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    if-eqz v8, :cond_5

    iget-object v8, v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->c:[I

    invoke-virtual {v5, v6, v7, v8}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(II[I)V

    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v5, v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->c:[I

    aget v8, v5, v4

    aget v5, v5, v9

    sub-int v10, v6, v8

    sub-int v12, v7, v5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->mn()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v13, v13, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ia()I

    move-result v14

    if-lt v14, v13, :cond_3

    sub-int/2addr v13, v9

    invoke-virtual {v2, v13}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox(I)V

    :cond_3
    sub-int v13, v6, v10

    sub-int v14, v7, v12

    invoke-virtual {v2, v13, v14}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(II)V

    :cond_4
    :goto_0
    move/from16 v17, v5

    move/from16 v16, v8

    move/from16 v18, v10

    move/from16 v19, v12

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v5, v5, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getOverScrollMode()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_7

    iget-object v5, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox(II)V

    :cond_7
    iget-object v15, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v15 .. v21}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(IIII[II)Z

    move-result v5

    move/from16 v10, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    if-nez v5, :cond_10

    if-nez v13, :cond_8

    if-eqz v14, :cond_10

    :cond_8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    float-to-int v5, v5

    if-eq v13, v3, :cond_a

    if-gez v13, :cond_9

    neg-int v15, v5

    goto :goto_2

    :cond_9
    if-lez v13, :cond_a

    move v15, v5

    goto :goto_2

    :cond_a
    const/4 v15, 0x0

    :goto_2
    if-eq v14, v11, :cond_c

    if-gez v14, :cond_b

    neg-int v5, v5

    goto :goto_3

    :cond_b
    if-lez v14, :cond_c

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    if-eq v4, v8, :cond_d

    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v4, v15, v5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p(II)V

    :cond_d
    if-nez v15, :cond_e

    if-eq v13, v3, :cond_e

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    if-nez v5, :cond_f

    if-eq v14, v11, :cond_f

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_10

    :cond_f
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_10
    if-nez v10, :cond_11

    if-eqz v12, :cond_12

    :cond_11
    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v3, v10, v12}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ia(II)V

    :cond_12
    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-static {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_13
    if-eqz v7, :cond_14

    iget-object v3, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v3, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ne v12, v7, :cond_14

    const/4 v3, 0x1

    goto :goto_4

    :cond_14
    const/4 v3, 0x0

    :goto_4
    if-eqz v6, :cond_15

    iget-object v4, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox()Z

    move-result v4

    if-eqz v4, :cond_15

    if-ne v10, v6, :cond_15

    const/4 v4, 0x1

    goto :goto_5

    :cond_15
    const/4 v4, 0x0

    :goto_5
    if-nez v6, :cond_16

    if-eqz v7, :cond_18

    :cond_16
    if-nez v4, :cond_18

    if-eqz v3, :cond_17

    goto :goto_6

    :cond_17
    const/4 v3, 0x0

    goto :goto_7

    :cond_18
    :goto_6
    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1a

    if-nez v3, :cond_19

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->o(I)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->dq()V

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v3, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->h:Lcom/bytedance/sdk/component/widget/recycler/p;

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v1, v6, v7}, Lcom/bytedance/sdk/component/widget/recycler/p;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;II)V

    goto :goto_9

    :cond_1a
    :goto_8
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->setScrollState(I)V

    sget-boolean v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->p:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ji:Lcom/bytedance/sdk/component/widget/recycler/p$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq()V

    :cond_1b
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->kk(I)V

    :cond_1c
    :goto_9
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->iw()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->dq(II)V

    :cond_1d
    iget-boolean v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->mn:Z

    if-nez v1, :cond_1e

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->s()V

    :cond_1e
    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$le;->p()V

    return-void
.end method
