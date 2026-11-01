.class Lcom/bytedance/sdk/gromore/init/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/kk/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/init/mn;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field final synthetic ox:Lcom/bytedance/sdk/gromore/dq/dq;

.field final synthetic p:Lcom/bytedance/sdk/gromore/init/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/init/mn;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->p:Lcom/bytedance/sdk/gromore/init/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->ox:Lcom/bytedance/sdk/gromore/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/s;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->p:Lcom/bytedance/sdk/gromore/init/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bytedance/sdk/gromore/init/mn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/init/mn$1;->ox:Lcom/bytedance/sdk/gromore/dq/dq;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V

    return-void
.end method
