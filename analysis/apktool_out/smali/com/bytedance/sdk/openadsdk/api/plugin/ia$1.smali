.class Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ox/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    return-object p1
.end method
