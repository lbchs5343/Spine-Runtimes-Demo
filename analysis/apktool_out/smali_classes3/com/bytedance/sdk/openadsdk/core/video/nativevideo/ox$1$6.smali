.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->dq:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->ox:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->dq:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(II)V

    return-void
.end method
