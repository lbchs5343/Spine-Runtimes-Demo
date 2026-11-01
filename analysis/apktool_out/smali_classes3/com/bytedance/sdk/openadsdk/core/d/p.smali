.class public abstract Lcom/bytedance/sdk/openadsdk/core/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/p$dq;
    }
.end annotation


# static fields
.field private static d:F = 0.0f

.field private static dq:F = 0.0f

.field protected static o:I = 0x8

.field private static ox:F

.field private static p:F

.field private static s:J


# instance fields
.field protected ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field protected final kk:Lcom/bytedance/sdk/openadsdk/core/d/dq/p;

.field protected final mn:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->kk:Lcom/bytedance/sdk/openadsdk/core/d/dq/p;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->kk:Lcom/bytedance/sdk/openadsdk/core/d/dq/p;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    return-object p1
.end method

.method public abstract dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, 0x3

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    const/4 v2, -0x1

    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/d/dq;->dq(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/d/dq;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/p$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/p;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_1
    const/4 v2, 0x4

    const/4 v4, 0x4

    goto/16 :goto_1

    :cond_2
    sget p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->ox:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v3, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, p1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ox:F

    sget p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v3, Lcom/bytedance/sdk/openadsdk/core/d/p;->d:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, p1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/bytedance/sdk/openadsdk/core/d/p;->s:J

    sub-long/2addr v5, v7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    :cond_4
    const-wide/16 v7, 0xc8

    cmp-long p1, v5, v7

    if-lez p1, :cond_10

    sget p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->ox:F

    sget v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I

    int-to-float v3, v0

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_5

    sget p1, Lcom/bytedance/sdk/openadsdk/core/d/p;->d:F

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_10

    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v4, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v4, Lcom/bytedance/sdk/openadsdk/core/d/p;->o:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    const-class v4, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_a
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/d/dq;->dq(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ia()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->kk()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, p2, v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/d/dq;->dq(Landroid/view/View;FFFF)Z

    move-result p2

    if-eqz p2, :cond_b

    return v1

    :cond_b
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/d/dq;->d(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_c
    return v2

    :cond_d
    if-eqz v4, :cond_e

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p1, :cond_e

    invoke-virtual {v4, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;->dq(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v4, p1, v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;->dq(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    :cond_e
    const/4 v4, 0x3

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/bytedance/sdk/openadsdk/core/d/p;->s:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->dq(Landroid/view/MotionEvent;)V

    const/4 v4, 0x0

    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v7, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;-><init>(IDDJ)V

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s(I)V
    .locals 0

    return-void
.end method
