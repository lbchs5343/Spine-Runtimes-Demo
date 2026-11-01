.class public Lcom/bytedance/sdk/openadsdk/core/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Loader;


# instance fields
.field private volatile d:Landroid/content/Context;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/u;)Lcom/bytedance/sdk/openadsdk/core/h;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/u;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/o/kk;I)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/o/mn;->s(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    sget-object p2, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/f;->dq(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/f;->dq(ZLjava/lang/String;)V

    return-void
.end method

.method private dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    move-result v0

    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)Z

    move-result p0

    return p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->no(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Landroid/content/Context;

    return-object v0
.end method

.method private ia(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/s;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    return-void
.end method

.method private kk(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/kk;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/kk;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/p;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$10;

    const-string v1, "loadExpressDrawFeedAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x9

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$3;

    const-string v1, "loadStream"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x6

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$5;

    const-string v2, "loadNativeAd"

    move-object v1, p0

    move v7, p1

    move-object v6, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/u$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;JLcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V

    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez p1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string p2, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v7}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object p1

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/s;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/ox;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$4;

    const-string v1, "loadDrawFeedAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x9

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(I)I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/u$6;

    const-string v3, "loadSplashAd b"

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/u$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V

    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez p1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string p2, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/d/s;

    const/16 p3, 0x2710

    invoke-direct {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/component/o/mn;->s(Lcom/bytedance/sdk/component/o/kk;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v5}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$9;

    const-string v1, "loadNativeExpressAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x5

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$7;

    const-string v1, "loadRewardVideoAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x7

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$1;

    const-string v1, "loadFeedAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    const-string v0, "Please exec  TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x5

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$8;

    const-string v1, "loadFullScreenVideoAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x8

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public iw(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/ia;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void
.end method

.method public load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p1, "load with null valueset"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-class p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez p3, :cond_1

    const-string p1, "load with null callback"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lg/hat;->o(II)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 v2, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p2, v2, v1}, Lg/cpo;->booleanValue(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->iw(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->d(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->p(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->kk(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :pswitch_4
    invoke-virtual {p2, v2, v1}, Lg/cpo;->booleanValue(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->s(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->ia(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :cond_4
    invoke-virtual {p2, v0, v1}, Lg/cpo;->intValue(II)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;I)V

    return-void

    :cond_5
    invoke-virtual {p2, v2, v1}, Lg/cpo;->booleanValue(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->mn(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/u;->ox(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mn(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/ia;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/mn;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/mn;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;)V

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$2;

    const-string v1, "loadBannerExpressAd"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z

    if-nez v1, :cond_0

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/s/dq;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public p(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/iw;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    return-void
.end method

.method public s(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dq/ia;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void
.end method
