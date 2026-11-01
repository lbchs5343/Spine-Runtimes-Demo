.class final Lcom/bytedance/sdk/openadsdk/core/o/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/o;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic p:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/dq;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->ox()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jy/d;->dq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->p:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;JLcom/bytedance/sdk/openadsdk/core/ir/dq;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->ox()V

    :cond_2
    return-void
.end method
