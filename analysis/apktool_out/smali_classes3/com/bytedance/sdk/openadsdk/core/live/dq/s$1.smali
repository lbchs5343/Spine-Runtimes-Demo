.class Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:J

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/live/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/s;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/live/dq/s;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->dq:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->ox:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/live/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;->ox:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/live/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void
.end method
