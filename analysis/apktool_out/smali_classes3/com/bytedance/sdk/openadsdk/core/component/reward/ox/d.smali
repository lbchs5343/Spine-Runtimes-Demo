.class public abstract Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    }
.end annotation


# instance fields
.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected ia:Landroid/app/Activity;

.field protected ig:Ljava/lang/String;

.field protected jy:Ljava/lang/String;

.field protected kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

.field protected mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

.field protected no:Ljava/lang/String;

.field protected o:Lg/ajp;

.field protected q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->jy:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lg/cyx;)Landroid/view/View;
    .locals 2

    new-instance v0, Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->o:Lg/ajp;

    invoke-virtual {v0, p1}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->o:Lg/ajp;

    invoke-virtual {v0, p3}, Lg/ajp;->s(Lg/cyx;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->o:Lg/ajp;

    invoke-virtual {p3, p2}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public dq(Landroid/app/Dialog;Landroid/view/View;F)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const/high16 v2, -0x3e600000    # -20.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p3

    sub-float/2addr v0, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->no(Landroid/content/Context;)F

    move-result p3

    sub-float/2addr v0, p3

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->no(Landroid/content/Context;)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V

    invoke-virtual {p0, p4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lg/cyx;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/mn;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->f:Ljava/util/Map;

    return-void

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public ia()F
    .locals 1

    const v0, 0x3f0ccccd    # 0.55f

    return v0
.end method

.method public iw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->jy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->jy:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->iw()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;)V

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->dq(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->ox(Ljava/lang/String;)V

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;)V

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    return-object p1
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public p(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->dq()V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method
