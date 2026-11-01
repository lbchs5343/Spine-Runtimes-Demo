.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;
    }
.end annotation


# instance fields
.field private d:F

.field private dq:F

.field private iw:Landroid/content/Context;

.field private ox:Z

.field private p:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->iw:Landroid/content/Context;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->s:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->d:F

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->dq:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->ox:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->ox:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;->d()V

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->iw:Landroid/content/Context;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->d:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->dq:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->d:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->dq:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_4

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->s:I

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;->dq()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;->d()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;->dq:F

    :cond_6
    :goto_0
    return v0
.end method
