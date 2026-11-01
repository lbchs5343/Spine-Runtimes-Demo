.class Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/ox;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->setProgress(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/ox;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)V

    return-void
.end method
