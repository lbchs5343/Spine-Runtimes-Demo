.class Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

.field final synthetic dq:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$5;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$5;->dq:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$5;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$5;->dq:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;ILjava/util/Map;)V

    return-void
.end method
