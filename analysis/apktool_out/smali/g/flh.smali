.class public final Lg/flh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fdp;


# direct methods
.method public synthetic constructor <init>(Lg/fdp;I)V
    .locals 0

    iput p2, p0, Lg/flh;->a:I

    iput-object p1, p0, Lg/flh;->b:Lg/fdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget p1, p0, Lg/flh;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v0, p0, Lg/flh;->b:Lg/fdp;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v2, v0, Lg/fdp;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    iget v2, v0, Lg/fdp;->w:F

    div-float/2addr p1, v2

    iget-object v2, v0, Lg/fdp;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lg/fdp;->b:Lg/gft;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v2, v0, Lg/fdp;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    iget v2, v0, Lg/fdp;->w:F

    div-float/2addr p2, v2

    iget-object v2, v0, Lg/fdp;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lg/fdp;->b:Lg/gft;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v1, v3

    add-float/2addr v2, v1

    add-float/2addr v2, p2

    float-to-int p2, v2

    iget v1, v0, Lg/fdp;->d:F

    invoke-static {v0, p1, p2, v1}, Lg/fdp;->z(Lg/fdp;IIF)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lg/fdp;->p:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, v0, Lg/fdp;->m:Landroid/graphics/PointF;

    iget-object p2, v0, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lg/flh;->b:Lg/fdp;

    iget-object v2, v1, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, v1, Lg/fdp;->o:Lg/n;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, p2

    float-to-double v2, v2

    iget-object v4, v1, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, v1, Lg/fdp;->o:Lg/n;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v4

    int-to-float v0, v5

    sub-float/2addr v0, p1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lg/fdp;->d:F

    float-to-int p1, p1

    float-to-int p2, p2

    iget v0, v1, Lg/fdp;->d:F

    invoke-static {v1, p1, p2, v0}, Lg/fdp;->z(Lg/fdp;IIF)V

    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
