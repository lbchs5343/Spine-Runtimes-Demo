.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/dq;

.field private ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

.field private p:Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/dq;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/dq;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->dq:Lcom/bytedance/msdk/ox/p/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;)Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->p:Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;)Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->p:Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/s;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;)Lcom/bytedance/msdk/ox/p/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->dq:Lcom/bytedance/msdk/ox/p/dq;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;->dq:Lcom/bytedance/msdk/ox/p/dq;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/mn;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/ox/p/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/iw/d;)V

    return-void
.end method
