.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

.field private dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private ox:Lcom/bytedance/msdk/ox/p/kk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/kk;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->ox:Lcom/bytedance/msdk/ox/p/kk;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->d:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)Lcom/bytedance/msdk/ox/p/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->ox:Lcom/bytedance/msdk/ox/p/kk;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;->ox:Lcom/bytedance/msdk/ox/p/kk;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/s;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/mn/s;)V

    return-void
.end method
