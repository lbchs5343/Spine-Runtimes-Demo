.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:J

.field final synthetic ox:Lcom/bykv/vk/openvk/component/video/api/dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;JJLcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->dq:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->d:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->ox:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->u(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->dq:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->d:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;->dq(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->dq:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;JJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->d:J

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->dq:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->ox:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;->p:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(Z)V

    :cond_1
    return-void
.end method
