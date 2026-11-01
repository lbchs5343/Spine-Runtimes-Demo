.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/ig;

.field private ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

.field private p:Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/ig;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/ox/p/ig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->dq:Lcom/bytedance/msdk/ox/p/ig;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;)Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->p:Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;)Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->p:Lcom/bytedance/sdk/gromore/dq/dq/mn/s/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->ox:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;)Lcom/bytedance/msdk/ox/p/ig;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->dq:Lcom/bytedance/msdk/ox/p/ig;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gdt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;->dq:Lcom/bytedance/msdk/ox/p/ig;

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/s/ox;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/ox/p/ig;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ia/d;)V

    return-void
.end method
