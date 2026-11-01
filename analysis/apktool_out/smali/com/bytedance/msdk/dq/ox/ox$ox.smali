.class Lcom/bytedance/msdk/dq/ox/ox$ox;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation


# instance fields
.field d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

.field private final f:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

.field private volatile jy:Z

.field final ox:Ljava/lang/Object;

.field final synthetic p:Lcom/bytedance/msdk/dq/ox/ox;

.field private q:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->ox:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->jy:Z

    new-instance p1, Lcom/bytedance/msdk/dq/ox/ox$ox$4;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/msdk/dq/ox/ox$ox$4;-><init>(Lcom/bytedance/msdk/dq/ox/ox$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->f:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/ox$ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->q:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ox$ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->s:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ox$ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->s:Z

    return p1
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ox$ox;->u()Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->f:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method private u()Lcom/bytedance/msdk/dq/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/dq/d/dq;

    return-object v0
.end method


# virtual methods
.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner : getDislikeDialog = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner : setSlideIntervalTime  intervalTime = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle banner : activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pluginDislikeInteractionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ox$ox$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/bytedance/msdk/dq/ox/ox$ox$3;-><init>(Lcom/bytedance/msdk/dq/ox/ox$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner :  ttDislikeDialogAbstract = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/ox;->dq(Lcom/bytedance/msdk/dq/ox/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/ox;->d(Lcom/bytedance/msdk/dq/ox/ox;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->q()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->kk()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/ox;->ox(Lcom/bytedance/msdk/dq/ox/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/ox/ox;->p(Lcom/bytedance/msdk/dq/ox/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/bytedance/msdk/dq/ox/ox$ox$1;-><init>(Lcom/bytedance/msdk/dq/ox/ox$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/u;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pangle banner : uploadDislikeEvent event = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->d(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public declared-synchronized ig()Landroid/view/View;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->d:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->ox:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    :goto_0
    iget-boolean v6, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->q:Z

    if-nez v6, :cond_1

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->ox:Ljava/lang/Object;

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle banner : getDislikeInfo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->ia()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->jy:Z

    new-instance v0, Lcom/bytedance/msdk/dq/ox/ox$ox$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/dq/ox/ox$ox$2;-><init>(Lcom/bytedance/msdk/dq/ox/ox$ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox;->jy:Z

    return v0
.end method
