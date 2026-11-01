.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->dq:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->dq:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->d:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;->dq(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->dq:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;JJ)V

    return-void
.end method
