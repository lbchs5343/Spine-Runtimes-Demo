.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->ox:Z

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

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;->ox:Z

    if-eqz v1, :cond_0

    const-string v1, "reg_creative"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0

    :cond_0
    const-string v1, "no_reg_creative"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0
.end method
