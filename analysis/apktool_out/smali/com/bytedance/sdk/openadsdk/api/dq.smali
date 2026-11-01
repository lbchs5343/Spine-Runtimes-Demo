.class public abstract Lcom/bytedance/sdk/openadsdk/api/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/api/dq$d;,
        Lcom/bytedance/sdk/openadsdk/api/dq$s;,
        Lcom/bytedance/sdk/openadsdk/api/dq$ox;,
        Lcom/bytedance/sdk/openadsdk/api/dq$p;
    }
.end annotation


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;
.end method

.method public abstract d(Landroid/content/Context;Lg/hat;)V
.end method

.method public d(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Result;)V

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v0

    const-string v1, "_tt_ad_sdk_"

    if-eqz v0, :cond_0

    const-string p1, "init sdk success "

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq;->dq:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "int sdk failed, code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq;->dq:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->code()I

    move-result v1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->message()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->message()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq;->dq:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/ox/ox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq;->ox()Lcom/bytedance/sdk/openadsdk/ox/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/ox/d;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/dq;->dq:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p3

    invoke-static {p3}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v0, v1}, Lg/hat;->h(IJ)V

    const/4 v0, 0x5

    const-string v1, "main"

    invoke-virtual {p3, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p3, v0, v2}, Lg/hat;->i(IZ)V

    const/4 v0, 0x6

    const/16 v1, 0x3e7

    invoke-virtual {p3, v0, v1}, Lg/hat;->o(II)V

    const/16 v0, 0xa

    const/16 v1, 0x19cf

    invoke-virtual {p3, v0, v1}, Lg/hat;->o(II)V

    const/16 v0, 0xb

    const-string v1, "6.6.0.7"

    invoke-virtual {p3, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v0, 0xc

    const-string v1, "com.byted.pangle"

    invoke-virtual {p3, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v0, 0xe

    invoke-virtual {p3, v0, v2}, Lg/hat;->i(IZ)V

    const/16 v0, 0x10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/ox/ox;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p3, v3, v1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1, v0}, Lg/hat;->o(II)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/dq$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/api/dq$p;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq;Lcom/bytedance/sdk/openadsdk/api/dq$1;)V

    const/16 v1, 0xf

    invoke-virtual {p3, v1, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/bridge/init/MediationInitCLassLoader;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/init/MediationInitCLassLoader;-><init>()V

    const/16 v1, 0x206d

    invoke-virtual {p3, v1, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/AdConfig;->isDebug()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/mediation/MediationApiLog;->setDebug(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/api/dq;->dq(Landroid/content/Context;Lg/hat;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq()Lcom/bytedance/sdk/openadsdk/cd/dq;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/dq$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/api/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq;Landroid/content/Context;Lg/hat;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq;->d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Z)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    const-string v0, "_tt_ad_sdk_"

    const-string v1, "update manager"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq;->d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Lcom/bykv/vk/openvk/api/proto/Manager;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq;->d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/ox/ox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    return-void
.end method

.method public abstract dq()Z
.end method

.method public abstract dq(Landroid/content/Context;Lg/hat;)Z
.end method

.method public abstract ox()Lcom/bytedance/sdk/openadsdk/ox/d;
.end method
