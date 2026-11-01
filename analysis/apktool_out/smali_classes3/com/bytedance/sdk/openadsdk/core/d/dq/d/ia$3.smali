.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->dq()V

    return-void
.end method
