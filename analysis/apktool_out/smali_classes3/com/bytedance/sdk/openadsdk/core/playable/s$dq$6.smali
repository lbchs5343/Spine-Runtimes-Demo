.class Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;
.super Lcom/bytedance/sdk/openadsdk/core/cd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cd/p;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox(Z)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const-string v1, "embeded_ad"

    const-string v2, "playable_track"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
