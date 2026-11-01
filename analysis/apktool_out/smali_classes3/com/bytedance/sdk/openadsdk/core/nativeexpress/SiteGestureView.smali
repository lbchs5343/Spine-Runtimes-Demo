.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;
.super Landroid/view/View;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/v;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

.field private iw:F

.field private mn:J

.field private ox:F

.field private p:F

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/v;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    const p1, 0x7d06ffdd

    const-string p2, "click"

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private d(ILandroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    const-string v2, "express_gesture_view"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->s:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->iw:F

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->mn:J

    invoke-virtual {p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    aget v2, v0, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    aget v1, v0, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/v;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {p1, p0, v2, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;Lcom/bytedance/sdk/openadsdk/core/r/v;)V

    return-void
.end method

.method private dq(ILandroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/v;->dq()I

    move-result v0

    const-string v1, "xdy"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ad"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->dq(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " site"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d(ILandroid/view/MotionEvent;)V

    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "xdy"

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "gesture cancel"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->d()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/r/v;->ox()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_2

    const-string v0, "nh g"

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d(ILandroid/view/MotionEvent;)V

    return v3

    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->ox:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->p:F

    sub-float/2addr v5, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v8, v1, v7

    if-gtz v8, :cond_3

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_3

    const-string v0, "c ad"

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->dq(Landroid/view/MotionEvent;)V

    return v3

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/v;->ox()D

    move-result-wide v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/v;->p()I

    move-result v7

    const/4 v8, 0x0

    cmpl-float v9, v1, v6

    if-lez v9, :cond_5

    float-to-double v5, v1

    cmpl-double v1, v5, v3

    if-lez v1, :cond_7

    int-to-long v3, v7

    const-wide/16 v5, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/cd/d;->dq(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    cmpg-float v1, v0, v8

    if-gez v1, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    const-wide/16 v5, 0x4

    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/cd/d;->dq(JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    float-to-double v0, v6

    cmpl-double v6, v0, v3

    if-lez v6, :cond_7

    int-to-long v0, v7

    const-wide/16 v3, 0x8

    invoke-static {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/cd/d;->dq(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    cmpg-float v3, v5, v8

    if-gez v3, :cond_6

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    const-wide/16 v3, 0x10

    invoke-static {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/cd/d;->dq(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float v0, v5, v8

    if-lez v0, :cond_7

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->ox:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->iw:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->mn:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->dq(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->d:Lcom/bytedance/sdk/openadsdk/core/r/v;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/v;->d()I

    move-result p1

    if-ne p1, v1, :cond_9

    const-string p1, "nt ad"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SiteGestureView;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->ox()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "un ad"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_0
    return v3
.end method
