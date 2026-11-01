.class public final Lg/bcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bcr;->a:I

    iput-object p2, p0, Lg/bcr;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget v0, p0, Lg/bcr;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Lg/bcr;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lg/gbf;

    iget-object p1, v2, Lg/gbf;->a:Lcom/google/android/gms/internal/ads/zzavc;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavc;->zzd(Landroid/view/MotionEvent;)V

    :cond_0
    return v3

    :pswitch_0
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v2, Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    return v3

    :pswitch_1
    check-cast v2, Lg/edx;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v2, Lg/eib;->bc:Lg/eib;

    iget-object v0, v2, Lg/edx;->x:Lg/cgg;

    invoke-static {p1, v0}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, v2, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {p1}, Lg/jt;->getNodeInfo()Lg/he;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v4, v2, Lg/edx;->o:Lg/gpu;

    invoke-static {p1, v0, p2, v4}, Lg/he;->contains(Lg/he;IILg/bxi;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lg/edx;->y:Ljava/util/List;

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, v2, Lg/edx;->y:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/he;

    if-nez p1, :cond_5

    invoke-virtual {v2}, Lg/edx;->as()V

    goto :goto_2

    :cond_5
    iget-object p2, v2, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v2, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lg/he;->setInspected(Z)Lg/he;

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Lg/he;->setInspected(Z)Lg/he;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, v2, Lg/eib;->bc:Lg/eib;

    const-string p2, "tc_tips_long_click_copy"

    invoke-static {p1, p2}, Lg/acw;->ae(Lg/dms;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v2, Lg/eib;->bc:Lg/eib;

    const p2, 0x7f120287

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_8
    invoke-virtual {v2}, Lg/edx;->ao()V

    iget-object p1, v2, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_2
    return v1

    :pswitch_2
    check-cast v2, Lg/cfi;

    iget-object p1, v2, Lg/cfi;->ae:Lg/fll;

    iget-object v0, v2, Lg/cfi;->u:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez v4, :cond_9

    iget-object v6, v2, Lg/cfi;->ag:Lg/ui;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_9

    if-ltz v5, :cond_9

    iget-object v6, v2, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_9

    if-ltz p2, :cond_9

    iget-object v2, v2, Lg/cfi;->ag:Lg/ui;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_9

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_9
    if-ne v4, v1, :cond_a

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    return v3

    :pswitch_3
    check-cast v2, Lg/baq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, v2, Lg/eib;->bc:Lg/eib;

    iget-object v0, v2, Lg/baq;->u:Lg/cgg;

    invoke-static {p1, v0}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    iget-object p1, v2, Lg/baq;->p:Lc/b/ab;

    invoke-virtual {p1}, Lg/jt;->getNodeInfo()Lg/he;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0, p2}, Lg/he;->contains(Lg/he;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lg/baq;->m:Ljava/util/List;

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    iget-object p1, v2, Lg/baq;->m:Ljava/util/List;

    invoke-static {p1}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result p1

    if-le p1, v1, :cond_e

    iget-object p1, v2, Lg/baq;->m:Ljava/util/List;

    invoke-virtual {v2, p1}, Lg/baq;->ap(Ljava/util/List;)V

    goto :goto_5

    :cond_e
    iget-object p1, v2, Lg/baq;->m:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/he;

    invoke-virtual {v2, p1, v3}, Lg/baq;->ao(Lg/he;Z)V

    :goto_5
    return v1

    :pswitch_4
    check-cast v2, Lg/epi;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    goto/16 :goto_6

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v4, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v5, v4

    int-to-float v4, v5

    sub-float/2addr v4, p2

    float-to-double v4, v4

    iget-object v6, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v6

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float p1, v3

    iget v3, v2, Lg/epi;->d:F

    iget v4, v2, Lg/epi;->b:F

    invoke-static {v0, p2}, Lg/epi;->q(FF)V

    iget-object v5, v2, Lg/epi;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    iget-object v5, v2, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    invoke-static {v6, v5}, Lg/epi;->q(FF)V

    iget-object v5, v2, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    sub-float v3, v0, v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    sub-float v4, p2, v4

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, v2, Lg/epi;->m:Landroid/view/WindowManager;

    iget-object v4, v2, Lg/epi;->c:Landroid/view/View;

    invoke-interface {v3, v4, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v2, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-static {v4, v3}, Lg/epi;->q(FF)V

    iget-object v3, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-static {v4, v3}, Lg/epi;->q(FF)V

    iget-object v3, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    float-to-double v10, v0

    add-double/2addr v8, v10

    iget-object p1, v2, Lg/epi;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr p1, v10

    float-to-double v11, p1

    sub-double/2addr v8, v11

    double-to-int p1, v8

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    float-to-double v3, p2

    add-double/2addr v6, v3

    iget-object v3, v2, Lg/epi;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    float-to-double v3, v3

    sub-double/2addr v6, v3

    const-wide/high16 v3, 0x406e000000000000L    # 240.0

    sub-double/2addr v6, v3

    double-to-int v3, v6

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    invoke-static {v3, p1}, Lg/epi;->q(FF)V

    iget-object p1, v2, Lg/epi;->m:Landroid/view/WindowManager;

    iget-object v3, v2, Lg/epi;->j:Landroid/view/View;

    iget-object v4, v2, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, v2, Lg/epi;->d:F

    iput p2, v2, Lg/epi;->b:F

    goto :goto_6

    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v2, Lg/epi;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v2, Lg/epi;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
