.class Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
