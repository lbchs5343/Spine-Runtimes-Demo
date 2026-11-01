.class public final Lg/gjs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:[I

.field public final synthetic c:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic d:I

.field public final synthetic e:[F

.field public final synthetic f:Lg/ghz;


# direct methods
.method public synthetic constructor <init>(Lg/ghz;[F[I[ILandroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    iput p6, p0, Lg/gjs;->d:I

    iput-object p1, p0, Lg/gjs;->f:Lg/ghz;

    iput-object p2, p0, Lg/gjs;->e:[F

    iput-object p3, p0, Lg/gjs;->a:[I

    iput-object p4, p0, Lg/gjs;->b:[I

    iput-object p5, p0, Lg/gjs;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget p1, p0, Lg/gjs;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gjs;->f:Lg/ghz;

    check-cast p1, Lg/fri;

    iget-object v0, p1, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lg/gjs;->b:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lg/gjs;->a:[I

    iget-object v5, p0, Lg/gjs;->e:[F

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    const/4 v7, 0x2

    if-eq v1, v7, :cond_0

    goto :goto_1

    :cond_0
    aget v1, v2, v6

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aget v1, v4, v6

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget v7, v5, v6

    sub-float/2addr v2, v7

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p1, Lg/fri;->j:Lg/fri;

    sget-boolean v2, Lg/edx;->d:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lg/fnp;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v1}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lg/gjs;->c:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v4, v3

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aget v2, v5, v3

    sub-float/2addr p2, v2

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lg/fri;->l:Landroid/view/WindowManager;

    iget-object p1, p1, Lg/fri;->i:Landroid/view/View;

    invoke-interface {p2, p1, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aput v0, v5, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aput p2, v5, v3

    iget-object p2, p1, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Lg/fri;->j:Lg/fri;

    invoke-static {p1, v2}, Lg/fso;->ba(Lg/ghz;[I)V

    :goto_1
    return v6

    :pswitch_0
    iget-object p1, p0, Lg/gjs;->f:Lg/ghz;

    check-cast p1, Lg/ka;

    iget-object v0, p1, Lg/ka;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lg/gjs;->b:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lg/gjs;->a:[I

    iget-object v5, p0, Lg/gjs;->e:[F

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    goto :goto_3

    :cond_3
    aget v1, v2, v6

    sub-int/2addr v1, v0

    int-to-float v0, v1

    aget v1, v4, v6

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget v7, v5, v6

    sub-float/2addr v2, v7

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p1, Lg/ka;->p:Lg/ka;

    sget-boolean v2, Lg/baq;->d:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lg/fnp;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-static {v1}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_4
    const/4 v1, 0x0

    :goto_2
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lg/gjs;->c:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v4, v3

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aget v2, v5, v3

    sub-float/2addr p2, v2

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p1, Lg/ka;->i:Landroid/view/WindowManager;

    iget-object p1, p1, Lg/ka;->n:Landroid/view/View;

    invoke-interface {p2, p1, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aput v0, v5, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aput p2, v5, v3

    iget-object p2, p1, Lg/ka;->n:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Lg/ka;->p:Lg/ka;

    invoke-static {p1, v2}, Lg/fso;->ba(Lg/ghz;[I)V

    :goto_3
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
