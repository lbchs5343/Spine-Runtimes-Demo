.class Lcom/bytedance/sdk/openadsdk/core/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/iw;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/iw;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/iw;->dq()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
