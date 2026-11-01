.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/kk;

.field private ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/kk;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->dq:Lcom/bytedance/msdk/ox/p/kk;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;)Lcom/bytedance/msdk/ox/p/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->dq:Lcom/bytedance/msdk/ox/p/kk;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 3

    const-string v0, "TTMediationSDK"

    const-string v1, "-------CSJMV2NativeLoader.load()------"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;->dq:Lcom/bytedance/msdk/ox/p/kk;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/iw;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/mn/s;)V

    return-void
.end method
