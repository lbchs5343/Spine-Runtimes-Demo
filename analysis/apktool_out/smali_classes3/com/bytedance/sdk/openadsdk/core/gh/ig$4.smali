.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

.field final synthetic ox:J

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->ox:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/no/dq/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/no/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;->ox:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(J)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    return-object v0
.end method
