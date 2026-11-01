.class public Lcom/bytedance/sdk/gromore/dq/dq/iw/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/iw/iw;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bytedance/msdk/core/admanager/no;

.field private ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CSJMSplashLoader \u6784\u9020\u51fd\u6570\u521b\u5efa mAdSlotValueSet = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mAdSlotValueSet.getCodeId() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/admanager/no;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/no;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq:Lcom/bytedance/msdk/core/admanager/no;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/msdk/core/admanager/no;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq:Lcom/bytedance/msdk/core/admanager/no;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(I)V

    return-void
.end method

.method public dq(I)V
    .locals 3

    const-string v0, "CSJMSplashLoader load timeout = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->d()V

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/dq/d;->ia(I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->mp()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq:Lcom/bytedance/msdk/core/admanager/no;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/admanager/no;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/api/p/dq/kk/ox;)V

    return-void
.end method
