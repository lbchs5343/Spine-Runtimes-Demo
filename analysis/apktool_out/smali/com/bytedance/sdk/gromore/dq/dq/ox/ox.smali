.class public Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bytedance/msdk/core/admanager/mn;

.field private ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

.field private p:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/admanager/mn;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/mn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq:Lcom/bytedance/msdk/core/admanager/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->p:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->p:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/msdk/core/admanager/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq:Lcom/bytedance/msdk/core/admanager/mn;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq:Lcom/bytedance/msdk/core/admanager/mn;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/mn;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/p/d;)V

    return-void
.end method
