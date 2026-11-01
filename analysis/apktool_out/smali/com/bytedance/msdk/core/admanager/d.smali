.class public abstract Lcom/bytedance/msdk/core/admanager/d;
.super Lcom/bytedance/msdk/core/mn/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/admanager/d$dq;
    }
.end annotation


# instance fields
.field private final b:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private cc:I

.field private volatile d:Z

.field private dq:Z

.field private hf:Ljava/lang/String;

.field private io:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private jo:Lcom/bytedance/msdk/d/s;

.field private m:Landroid/os/Handler;

.field private mc:I

.field protected ox:Z

.field private pa:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private wi:I

.field private xv:I

.field private yo:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/p;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/d;->dq:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/msdk/core/admanager/d;->ox:Z

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/d;->d:Z

    new-instance p2, Ljava/lang/ref/SoftReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/d;->pa:Ljava/lang/ref/SoftReference;

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/d;->xv:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/d;->wi:I

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/d;->cc:I

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/d;->mc:I

    new-instance p2, Lcom/bytedance/msdk/core/admanager/d$1;

    invoke-direct {p2, p0}, Lcom/bytedance/msdk/core/admanager/d$1;-><init>(Lcom/bytedance/msdk/core/admanager/d;)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/d;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->mp()I

    move-result p2

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/d;->cc:I

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->q()I

    move-result p2

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/d;->wi:I

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/core/no/d;->kk(I)I

    move-result p2

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/d;->mc:I

    if-gtz p2, :cond_0

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/d;->mc:I

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/d;->m:Landroid/os/Handler;

    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string p2, "--==--- inter full refresh is not enabled"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private cd()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/d;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/d;)Lcom/bytedance/msdk/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/d;->jo:Lcom/bytedance/msdk/d/s;

    return-object p0
.end method

.method private d(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/mn/p;->dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/bytedance/msdk/core/no/no;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->wn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->dq()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/d;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/d;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method private dq(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/d;->mc:I

    add-int/lit16 v0, v0, -0x7d0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/msdk/core/admanager/d$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/msdk/core/admanager/d$2;-><init>(Lcom/bytedance/msdk/core/admanager/d;Landroid/app/Activity;Landroid/os/Handler;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/d;Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/admanager/d;->d(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TTMediationSDK"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->xv()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u65e0\u4efb\u4f55\u5e7f\u544a\u53ef\u7528\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const v1, 0x13c70

    invoke-static {p1, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;I)V

    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u4ec5\u6709\u81ea\u5b9a\u4e49adn\u5e7f\u544a\u53ef\u7528\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const v1, 0x13c71

    invoke-static {p1, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;I)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/p;->d(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const-string v2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u547d\u4e2d\u4e86\u5c55\u793a\u9891\u63a7\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;I)V

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cshowingActivity\u6b63\u5728finish\u6216\u5df2\u7ecfdestroy\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private dq(Landroid/app/Activity;Landroid/app/Activity;Lcom/bytedance/msdk/d/s;)Z
    .locals 4

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/d;->xv:I

    iget v1, p0, Lcom/bytedance/msdk/core/admanager/d;->wi:I

    const/4 v2, 0x0

    const-string v3, "TTMediationSDK"

    if-lt v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u8f6e\u64ad\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/bytedance/msdk/core/admanager/d;->wi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad \u505c\u6b62\u8f6e\u64ad developerActivity\u4e3anull"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cttBaseAd\u4e3anull\uff0c\u4e0d\u8f6e\u64ad"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-direct {p0, p3}, Lcom/bytedance/msdk/core/admanager/d;->s(Lcom/bytedance/msdk/d/s;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u5c55\u793a\u7684\u662f\u81ea\u5b9a\u4e49adn\uff0c\u5219\u4e0d\u8f6e\u64ad"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u5f53\u524d\u5c55\u793a\u7684\u5e7f\u544a\u4e0d\u652f\u6301\u8f6e\u64ad: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", adtype: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", subType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const p2, 0x13c73

    invoke-static {p1, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;I)V

    return v2

    :cond_4
    if-nez p1, :cond_5

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cshowingActivity\u662fnull\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const p2, 0x13c72

    invoke-static {p1, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;I)V

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/d;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/d;->dq:Z

    return p1
.end method

.method private f()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/d;->cc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fw()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TTMediationSDK"

    const-string v1, "--==--- app is null, \u63d2\u5168\u5c4f\u8f6e\u64ad\u76f4\u63a5return"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/d;->d:Z

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/d;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/d;->yo:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/admanager/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/d;->hf:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/admanager/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->cd()V

    return-void
.end method

.method private s(Lcom/bytedance/msdk/d/s;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->j()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private xv()I
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/d;->s(Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/d;->s(Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    return v2

    :cond_7
    :goto_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/d;->s(Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    return v2

    :cond_b
    :goto_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/s;->h_()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->r()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->i()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v6, v5, v7, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/d;->d(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    return v2

    :cond_f
    :goto_8
    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->fw()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/d;->pa:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/d;->jo:Lcom/bytedance/msdk/d/s;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/d;->yo:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    iput-object p4, p0, Lcom/bytedance/msdk/core/admanager/d;->hf:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/mn/p;->dq(Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

.method public final e_()V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/d;->ox:Z

    iget v1, p0, Lcom/bytedance/msdk/core/admanager/d;->xv:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/msdk/core/admanager/d;->xv:I

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/d;->pa:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/d;->jo:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/d;->dq(Landroid/app/Activity;Landroid/app/Activity;Lcom/bytedance/msdk/d/s;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->cd()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/d;->m:Landroid/os/Handler;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/d;->m:Landroid/os/Handler;

    invoke-direct {p0, v3, v1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Landroid/os/Handler;Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/d;->m:Landroid/os/Handler;

    new-instance v4, Lcom/bytedance/msdk/core/admanager/d$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/bytedance/msdk/core/admanager/d$3;-><init>(Lcom/bytedance/msdk/core/admanager/d;Landroid/app/Activity;Lcom/bytedance/msdk/d/s;Landroid/app/Activity;)V

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/d;->mc:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final f_()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/d;->ox:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_2

    const-string v0, "--==--- \u7528\u6237\u5173\u95ed\u4e86\u5e7f\u544a\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v2, v0, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    if-eqz v2, :cond_1

    const-string v2, "--==--- \u7528\u6237\u5173\u95ed\u4e86\u5e7f\u544a\uff0cfinish showingActivity"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/d;->io:Ljava/lang/ref/SoftReference;

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->cd()V

    return-void

    :cond_2
    const-string v0, "--==--- \u8c03\u7528finish\u89e6\u53d1\u4e86close\u56de\u8c03"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g_()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TTMediationSDK"

    const-string v1, "--==--- \u7528\u6237\u70b9\u51fb\u4e86\u5e7f\u544a\uff0c\u505c\u6b62\u8f6e\u64ad"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/d;->cd()V

    return-void
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/d;->dq:Z

    return v0
.end method
