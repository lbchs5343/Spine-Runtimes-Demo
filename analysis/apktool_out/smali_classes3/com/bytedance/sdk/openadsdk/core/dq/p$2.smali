.class Lcom/bytedance/sdk/openadsdk/core/dq/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dq/p;->dq(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dq/p;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dq/p;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/dq/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/p$2;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/p$2;->dq:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/dq/p;Ljava/util/List;)V

    return-void
.end method
