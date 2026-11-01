.class public Lcom/bytedance/sdk/gromore/init/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Initializer;


# instance fields
.field private d:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field private dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

.field private ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field private p:Lcom/bytedance/sdk/gromore/init/ox;

.field private s:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/bykv/vk/openvk/api/proto/Initializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/q;->s:Landroid/os/Bundle;

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/iw;->dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/init/q;->s:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "call_init_time"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    sput-wide p1, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/init/q;)Lcom/bykv/vk/openvk/api/proto/EventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/init/q;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-object p0
.end method

.method private d(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/EventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/init/s;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/init/s;-><init>(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    iput-object v1, p0, Lcom/bytedance/sdk/gromore/init/q;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    new-instance v0, Lcom/bytedance/sdk/gromore/init/q$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/gromore/init/q$1;-><init>(Lcom/bytedance/sdk/gromore/init/q;Lcom/bykv/vk/openvk/api/proto/ValueSet;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/gromore/init/s;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object p2

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/q;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-virtual {p2, v0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/q;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/init/q;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lg/cpq;->e:Z

    const v1, 0x13880

    iput v1, p2, Lg/cpq;->d:I

    const-string v1, "init error Initializer is null"

    iput-object v1, p2, Lg/cpq;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Lg/cpq;->h()Lg/gok;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/q;)Lcom/bytedance/sdk/gromore/dq/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    return-object p0
.end method

.method private dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/gromore/init/iw;->d:J

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Initializer;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    :cond_0
    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/gromore/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/gromore/init/iw;->p:J

    new-instance v2, Lcom/bytedance/sdk/gromore/init/ox;

    invoke-direct {v2}, Lcom/bytedance/sdk/gromore/init/ox;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/gromore/init/q;->p:Lcom/bytedance/sdk/gromore/init/ox;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/gromore/init/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/gromore/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/q;Landroid/content/Context;Lcom/bytedance/sdk/gromore/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/gromore/init/q;->dq(Landroid/content/Context;Lcom/bytedance/sdk/gromore/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V

    return-void
.end method


# virtual methods
.method public getManager()Lcom/bykv/vk/openvk/api/proto/Manager;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    const-string v0, "TMe"

    const-string v1, "getManager mediation"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/init/mp;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/init/mp;-><init>(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 2

    invoke-static {p2}, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/gromore/dq/d/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->ig()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq()V

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dk()Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/q;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mp/dq;->d()V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/mp/dq;->dq(Z)V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/q;->d(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method public isInitSuccess()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->dq:Lcom/bytedance/sdk/gromore/dq/d/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/q;->p:Lcom/bytedance/sdk/gromore/init/ox;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->p:Lcom/bytedance/sdk/gromore/init/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/init/ox;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/q;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method
