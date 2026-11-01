.class Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/wp/kk;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/wp/kk;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/wp/kk;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;->dq:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;->dq:Lorg/json/JSONObject;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bykv/vk/openvk/api/proto/Result;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Result;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;->d:Lcom/bytedance/sdk/openadsdk/core/wp/kk;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/kk;->dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;)V

    const/4 p1, 0x0

    return-object p1
.end method
