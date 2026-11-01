.class public final Lg/bnm;
.super Lg/eg;
.source "SourceFile"


# instance fields
.field public final synthetic at:I

.field public final synthetic au:Lg/dip;


# direct methods
.method public synthetic constructor <init>(Lg/dip;I)V
    .locals 0

    iput p2, p0, Lg/bnm;->at:I

    iput-object p1, p0, Lg/bnm;->au:Lg/dip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aj(I)V
    .locals 2

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/bnm;->au:Lg/dip;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-boolean v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ai:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->an(I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/bnm;->au:Lg/dip;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cd(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ak(ILandroid/view/View;)I
    .locals 1

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lg/bnm;->au:Lg/dip;

    check-cast p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {v0}, Lg/erl;->bh()I

    move-result v0

    iget-object p2, p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {p2}, Lg/erl;->bp()I

    move-result p2

    invoke-static {p1, v0, p2}, Lg/dzm;->af(III)I

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final al(Landroid/view/View;FF)V
    .locals 5

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bnm;->au:Lg/dip;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {v1, p2}, Lg/erl;->bo(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {v1, p1, p2}, Lg/erl;->bn(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {v1, p2, p3}, Lg/erl;->bi(FF)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {p2, p1}, Lg/erl;->bj(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {p3}, Lg/erl;->br()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {v1}, Lg/erl;->bm()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_4

    :cond_3
    :goto_0
    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x5

    :goto_2
    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->am(Landroid/view/View;IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bnm;->au:Lg/dip;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    if-gez v4, :cond_7

    iget-boolean p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ba:Z

    if-eqz p2, :cond_6

    :cond_5
    :goto_3
    const/4 v1, 0x3

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bo:I

    if-le p2, p3, :cond_5

    goto/16 :goto_5

    :cond_7
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bn:Z

    if-eqz v4, :cond_c

    invoke-virtual {v0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cc(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, p2, v3

    if-gez p2, :cond_8

    iget p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ab:I

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cm()I

    move-result v3

    add-int/2addr v3, p3

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_a

    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_5

    :cond_a
    iget-boolean p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ba:Z

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cm()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bo:I

    sub-int/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_14

    goto :goto_3

    :cond_c
    const/4 v4, 0x4

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ba:Z

    if-eqz p2, :cond_f

    :cond_e
    const/4 v1, 0x4

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bo:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_10
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-boolean p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ba:Z

    if-eqz p3, :cond_11

    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ai:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_e

    goto/16 :goto_3

    :cond_11
    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bo:I

    if-ge p2, p3, :cond_13

    iget p3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_12

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_13
    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_14
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cl(Landroid/view/View;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final am(Landroid/view/View;II)V
    .locals 4

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    iget-object p3, p0, Lg/bnm;->au:Lg/dip;

    check-cast p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->af:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    iget-object v2, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v2, v1, v3, p1}, Lg/erl;->bg(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p3, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lg/erl;

    invoke-virtual {p3, p2}, Lg/erl;->bf(I)F

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bnm;->au:Lg/dip;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cb(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final an(ILandroid/view/View;)I
    .locals 1

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    return p1

    :pswitch_0
    iget-object p2, p0, Lg/bnm;->au:Lg/dip;

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cm()I

    move-result p2

    invoke-virtual {p0}, Lg/bnm;->ar()I

    move-result v0

    invoke-static {p1, p2, v0}, Lg/dzm;->af(III)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ap(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/eg;->ap(Landroid/view/View;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lg/bnm;->au:Lg/dip;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    iget p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    add-int/2addr v0, p1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ar()I
    .locals 2

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/eg;->ar()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bnm;->au:Lg/dip;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bn:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final as(ILandroid/view/View;)Z
    .locals 4

    iget v0, p0, Lg/bnm;->at:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/bnm;->au:Lg/dip;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->aa:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lg/bnm;->au:Lg/dip;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aw:I

    if-ne v1, p1, :cond_5

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->am:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ap:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
