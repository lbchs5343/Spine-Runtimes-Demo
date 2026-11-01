.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$6;->dq:Ljava/util/Map;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method
