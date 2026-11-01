.class Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;->dq:Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "requestVideoDelay"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
