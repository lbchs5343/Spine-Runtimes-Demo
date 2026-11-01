.class Lcom/bytedance/sdk/openadsdk/live/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/android/live/base/api/ILiveInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/ox;->ox(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/live/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/live/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveInitFailed(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onLiveInitFailed! "

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v2, "TTLiveSDkBridge"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->d(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bytedance/sdk/openadsdk/live/ox$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->d(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bytedance/sdk/openadsdk/live/ox$d;

    move-result-object v0

    const/4 v2, -0x3

    invoke-static {v0, v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq(Lcom/bytedance/sdk/openadsdk/live/ox$d;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onLiveInitFinish()V
    .locals 4

    const-string v0, "TTLiveSDkBridge"

    const-string v1, "onLiveInitFinish!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/live/d;->dq()Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->d(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bytedance/sdk/openadsdk/live/ox$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->d(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bytedance/sdk/openadsdk/live/ox$d;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq(Lcom/bytedance/sdk/openadsdk/live/ox$d;ILjava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
