.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$6;->d:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lorg/json/JSONObject;Z)V

    return-void
.end method
