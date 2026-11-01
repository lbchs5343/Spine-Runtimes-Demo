.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

# interfaces
.implements Lg/ahr;


# instance fields
.field private ia:F

.field private ig:Lg/dlv;

.field private iw:Z

.field private kk:F

.field private mn:F

.field private no:J

.field private o:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V

    return-void
.end method

.method private dq(Landroid/view/MotionEvent;)V
    .locals 10

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->iw:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->mn:F

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->ia:F

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->kk:F

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->o:F

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->no:J

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s:I

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->ox()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p:Ljava/lang/String;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v2, "click"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->iw:Z

    return-void
.end method

.method private iw()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->ig:Lg/dlv;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg/dlv;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->ig:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method

.method private s()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ie()I

    move-result v1

    mul-int v1, v1, v0

    int-to-double v0, v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public dq(Lg/dlv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    const-string v0, "fl_count_down"

    invoke-virtual {p1, v0}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->ig:Lg/dlv;

    return-void
.end method

.method public dq(Lg/dlv;Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->iw:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->kk:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->o:F

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->dq(Landroid/view/MotionEvent;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->no:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->mn:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->ia:F

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->iw()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->dq(Lg/ahr;)V

    :try_start_0
    const-string v0, "isPlayable"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "remainTime"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->s()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->iw()V

    return-void
.end method
