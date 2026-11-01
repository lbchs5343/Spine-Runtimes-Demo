.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;->d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0
.end method
