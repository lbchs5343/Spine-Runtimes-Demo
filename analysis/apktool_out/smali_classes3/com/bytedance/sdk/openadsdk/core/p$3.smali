.class Lcom/bytedance/sdk/openadsdk/core/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p;

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/EventListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/cpq;->e:Z

    invoke-virtual {v1}, Lg/cpq;->h()Lg/gok;

    move-result-object v1

    const/16 v2, 0x1f41

    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_0
    return-void
.end method
