.class public Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private final d:Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

.field private final dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private ox:Lcom/bytedance/msdk/core/admanager/kk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq/dq/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->d:Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/bytedance/msdk/core/admanager/kk;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/bytedance/msdk/core/admanager/kk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->ox:Lcom/bytedance/msdk/core/admanager/kk;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/msdk/core/admanager/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->ox:Lcom/bytedance/msdk/core/admanager/kk;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/sdk/gromore/dq/dq/dq/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->d:Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->o()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->ox:Lcom/bytedance/msdk/core/admanager/kk;

    new-instance v3, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;

    invoke-direct {v3, p0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->ox:Lcom/bytedance/msdk/core/admanager/kk;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V

    return-void
.end method
