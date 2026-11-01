.class public final Lg/ebw;
.super Lg/doi;
.source "SourceFile"


# instance fields
.field public final a:Lg/axc;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lg/aoi;

.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Landroid/view/View;

.field public final f:Landroid/widget/TextView;

.field public final g:Ljava/util/ArrayList;

.field public final h:Lg/fvi;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Ljava/util/ArrayList;Lg/aoi;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ebw;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ebw;->b:Ljava/util/ArrayList;

    new-instance v0, Lg/fvi;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ebw;->h:Lg/fvi;

    new-instance v0, Lg/axc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/axc;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ebw;->a:Lg/axc;

    iput-object p4, p0, Lg/ebw;->c:Lg/aoi;

    iput-object p1, p0, Lg/ebw;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lg/ebw;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lg/dpj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ebw;->g:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/ebw;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dpj;

    iget-object v2, v2, Lg/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    sget-object p3, Lg/goi;->c:Ljava/util/WeakHashMap;

    new-instance v2, Lg/hej;

    const v3, 0x7f090332

    const/4 v7, 0x3

    const-class v4, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    invoke-direct/range {v2 .. v7}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2, p3}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v2, Lg/hej;

    const v3, 0x7f090338

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v2, p2, p3}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    new-instance v0, Lg/gjk;

    invoke-direct {v0, p1, p2}, Lg/gjk;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    invoke-direct {p3, p4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p4, Lg/gup;

    invoke-direct {p4, v1, p3}, Lg/gup;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lg/doi;)V

    iget-object p3, p0, Lg/ebw;->a:Lg/axc;

    invoke-virtual {p1, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p3, p0, Lg/ebw;->a:Lg/axc;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p2, p0, Lg/ebw;->h:Lg/fvi;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    iget-object v0, p0, Lg/ebw;->h:Lg/fvi;

    iget-object v1, p0, Lg/ebw;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Lg/doi;)V

    iget-object v0, p0, Lg/ebw;->a:Lg/axc;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lg/ebw;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/ebw;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 12

    iget-object v0, p0, Lg/ebw;->e:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ebw;->e:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lg/ebw;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x4

    iget-object v4, p0, Lg/ebw;->f:Landroid/widget/TextView;

    if-nez v2, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->bv()I

    move-result v5

    const/4 v6, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    iget-object v8, p0, Lg/ebw;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v5, :cond_2

    add-int/lit8 v7, v6, 0x1

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_0

    :cond_2
    if-gez v7, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    int-to-float v10, v6

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    if-ne v9, v10, :cond_5

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    if-ne v9, v10, :cond_5

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v9, v6, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lg/ebw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lg/ebw;->c:Lg/aoi;

    iget-object v3, v3, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v3, Lg/amy;

    invoke-virtual {v3, v4, v0}, Lg/amy;->o(Landroid/widget/TextView;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-ge v7, v0, :cond_7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float v2, v6

    sub-float/2addr v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_7
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_8

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-object v5, p0, Lg/ebw;->e:Landroid/view/View;

    :cond_8
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0}, Lg/ebw;->j()V

    return-void
.end method
