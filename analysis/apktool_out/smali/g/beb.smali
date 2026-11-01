.class public final Lg/beb;
.super Lg/bgh;


# instance fields
.field public a:F

.field public b:F

.field public c:Z


# virtual methods
.method public final varargs dq([Ljava/lang/Object;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    aget-object p1, p1, v1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/high16 v3, 0x41700000    # 15.0f

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lg/beb;->c:Z

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lg/beb;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_3

    iget v0, p0, Lg/beb;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_7

    :cond_3
    iput-boolean v2, p0, Lg/beb;->c:Z

    return v2

    :cond_4
    iget-boolean v0, p0, Lg/beb;->c:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lg/beb;->c:Z

    iput v4, p0, Lg/beb;->a:F

    iput v4, p0, Lg/beb;->b:F

    return v1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v5, p0, Lg/beb;->a:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_8

    iget v0, p0, Lg/beb;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lg/bgh;->dq:Lg/eyj;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v1, p0, Lg/bgh;->ox:Lg/csh;

    iget-object v1, v1, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast p1, Lg/gsa;

    invoke-virtual {p1, v0, v1}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    iput v4, p0, Lg/beb;->a:F

    iput v4, p0, Lg/beb;->b:F

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lg/beb;->c:Z

    return v2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lg/beb;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lg/beb;->b:F

    return v2
.end method
