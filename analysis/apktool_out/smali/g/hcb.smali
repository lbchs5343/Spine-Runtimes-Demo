.class public final Lg/hcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic b:Lg/drp;

.field public final c:[F

.field public d:F


# direct methods
.method public constructor <init>(Lg/drp;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hcb;->b:Lg/drp;

    iput-object p2, p0, Lg/hcb;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lg/hcb;->c:[F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lg/hcb;->d:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lg/hcb;->d:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    iget-object p1, p0, Lg/hcb;->b:Lg/drp;

    iget-object p1, p1, Lg/drp;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget p1, v2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lg/hcb;->d:F

    :cond_1
    iget-object p1, p0, Lg/hcb;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lg/hcb;->c:[F

    aget v0, v3, v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lg/hcb;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lg/hcb;->c:[F

    aget v0, v0, v1

    sub-float/2addr p2, v0

    iget v0, p0, Lg/hcb;->d:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lg/hcb;->b:Lg/drp;

    iget-boolean p1, p1, Lg/drp;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/hcb;->b:Lg/drp;

    iget-object p2, p1, Lg/drp;->j:Landroid/view/WindowManager;

    iget-object p1, p1, Lg/drp;->f:Landroid/view/View;

    iget-object v0, p0, Lg/hcb;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object p1, p0, Lg/hcb;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, p1, v0

    iget-object p1, p0, Lg/hcb;->c:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    aput p2, p1, v1

    return v1
.end method
