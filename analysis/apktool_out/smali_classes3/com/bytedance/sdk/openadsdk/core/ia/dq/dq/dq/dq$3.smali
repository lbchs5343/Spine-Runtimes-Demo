.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$3;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method
