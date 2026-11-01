.class public Lg/eku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eo;


# static fields
.field public static a:Z

.field public static final b:J

.field public static final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public static d:J

.field public static e:Z


# instance fields
.field public f:Z

.field public g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field public h:Landroid/widget/LinearLayout;

.field public final i:Lg/dms;

.field public j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field public final k:Landroid/os/Handler;

.field public final l:Landroid/content/Context;

.field public m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lg/eku;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, 0x0

    sput-wide v0, Lg/eku;->d:J

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lg/eku;->b:J

    return-void
.end method

.method public constructor <init>(Lg/dms;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/eku;->f:Z

    iput-object p1, p0, Lg/eku;->i:Lg/dms;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/eku;->l:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lg/eku;->k:Landroid/os/Handler;

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lg/eku;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lg/eku;->e:Z

    :try_start_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useMediation(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-static {}, Lg/fnp;->m()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lg/fna;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/fna;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v2, Lg/fna;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/fna;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    new-instance p0, Lg/exe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    sput-boolean v1, Lg/eku;->e:Z

    :cond_1
    return v1
.end method


# virtual methods
.method public final p()V
    .locals 4

    iget-object v0, p0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    :cond_1
    iget-object v0, p0, Lg/eku;->i:Lg/dms;

    if-eqz v0, :cond_3

    sget-object v1, Lg/eku;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fiy;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lg/fiy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final q(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    iget-object v0, p0, Lg/eku;->l:Landroid/content/Context;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->i()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return v6

    :cond_1
    invoke-static {v0, p2}, Lg/eku;->o(Landroid/content/Context;Ljava/lang/String;)Z

    if-nez p4, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v5, 0x7f090080

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v7

    invoke-virtual {v7}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, v7, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lg/eku;->i:Lg/dms;

    const/4 v8, 0x0

    if-nez p4, :cond_8

    cmpg-float v5, v5, v8

    if-lez v5, :cond_6

    sget-boolean v5, Lg/eku;->a:Z

    if-nez v5, :cond_8

    :cond_6
    sget-boolean v0, Lg/eku;->a:Z

    if-nez v0, :cond_7

    new-instance v8, Lg/fiy;

    new-instance v0, Lg/dxh;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lg/dxh;-><init>(Lg/eku;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v8, v7, v0}, Lg/fiy;-><init>(Lg/dms;Ljava/lang/Runnable;)V

    sget-object v0, Lg/eku;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return v6

    :cond_7
    new-instance v0, Lg/dxh;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lg/dxh;-><init>(Lg/eku;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lg/eku;->k:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    :cond_8
    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v7, v3, v8

    if-lez v7, :cond_9

    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_a

    :cond_9
    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    :cond_a
    float-to-int v3, v3

    invoke-static {v0}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v0

    aget v5, v0, v6

    const/4 v6, 0x1

    aget v0, v0, v6

    if-lez v0, :cond_b

    if-le v5, v0, :cond_b

    div-int/2addr v0, v4

    mul-int/lit16 v0, v0, 0x12c

    div-int/lit8 v0, v0, 0x32

    if-lt v3, v0, :cond_b

    move v3, v0

    :cond_b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    mul-int/lit8 v4, v3, 0x32

    div-int/lit16 v4, v4, 0x12c

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    iget-object v3, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-nez v3, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    iget-object v4, p0, Lg/eku;->i:Lg/dms;

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v3

    iput-object v3, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    :cond_c
    iget-object v3, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v4, Lg/gqf;

    invoke-direct {v4, p0, p1}, Lg/gqf;-><init>(Lg/eku;Landroid/view/ViewGroup;)V

    invoke-interface {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    return v6
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lg/eku;->l:Landroid/content/Context;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lg/eku;->f:Z

    if-eqz v1, :cond_1

    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lg/eku;->d:J

    sub-long/2addr v3, v5

    sget-wide v5, Lg/eku;->b:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/eku;->f:Z

    invoke-static {v0, p1}, Lg/eku;->o(Landroid/content/Context;Ljava/lang/String;)Z

    iput-object p2, p0, Lg/eku;->n:Ljava/lang/String;

    sget-boolean v0, Lg/eku;->a:Z

    iget-object v3, p0, Lg/eku;->i:Lg/dms;

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lg/eku;->f:Z

    new-instance v0, Lg/fiy;

    new-instance v1, Lg/gdv;

    invoke-direct {v1, p0, p1, p2, v2}, Lg/gdv;-><init>(Lg/eku;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v3, v1}, Lg/fiy;-><init>(Lg/dms;Ljava/lang/Runnable;)V

    sget-object p1, Lg/eku;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return v2

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-static {v3}, Lg/fso;->ar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setMuted(Z)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setVolume(F)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setBidNotify(Z)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediationAdSlot(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    iget-object v0, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    iput-object v0, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    :cond_4
    iget-object v0, p0, Lg/eku;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v2, Lg/za;

    invoke-direct {v2, p0, p2}, Lg/za;-><init>(Lg/eku;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    return v1
.end method
