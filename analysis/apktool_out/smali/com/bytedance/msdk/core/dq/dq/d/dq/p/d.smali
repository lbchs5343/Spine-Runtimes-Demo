.class public Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;
.super Lcom/bytedance/msdk/d/s;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private d:Lcom/bytedance/msdk/core/no/no;

.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

.field private p:Lcom/bytedance/msdk/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    iget-object p2, p1, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object p1, p1, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->kr()V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->el()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->uo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dn()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->kf()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->u()V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->uo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dn()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c55

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->fa()I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->wp(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->p(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->iw(Ljava/util/Map;)V

    return-void
.end method

.method private el()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hg()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->fa()I

    move-result v0

    goto :goto_0
.end method

.method private fa()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    const v4, 0x9c43

    invoke-interface {v0, v4, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private gv()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$2;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private hg()I
    .locals 5

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$1;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private hz()Lcom/bytedance/msdk/api/p/dq/p/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/p/dq;

    return-object v0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->p:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private iw(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc35a

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4e

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ix()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c44

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private kf()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c56

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private kr()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc359

    invoke-virtual {v0, v1, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c49

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ne()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$4;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->vk()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object p0

    return-object p0
.end method

.method private ox(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc358

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c48

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private p(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->xn()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->xq()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sp()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$8;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$8;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c57

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private uo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->gv()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vk()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4a

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method private wp(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc357

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4d

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private xn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c4b

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private xq()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    const v3, 0x9c4f

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "request_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const p3, 0xea69

    if-ne p1, p3, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->D_()V

    goto/16 :goto_0

    :cond_0
    const p3, 0xea64

    if-ne p1, p3, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->o_()V

    goto :goto_0

    :cond_1
    const p3, 0xea65

    if-ne p1, p3, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->q_()V

    goto :goto_0

    :cond_2
    const p3, 0xea66

    if-ne p1, p3, :cond_3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->p_()V

    goto :goto_0

    :cond_3
    const p3, 0xea6a

    if-ne p1, p3, :cond_4

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->r_()V

    goto :goto_0

    :cond_4
    const p3, 0xea67

    if-ne p1, p3, :cond_6

    const p1, 0xc35a

    const-class p3, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$9;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$9;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->hz()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$6;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;I)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->wp(I)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$3;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$3;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->p(Landroid/app/Activity;)V

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$7;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->iw(Ljava/util/Map;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->sp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->xq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ne()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->vk()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d$5;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->xn()V

    return-void
.end method

.method public s()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
