.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;->d:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    const-string v1, "has_pre_req"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method
