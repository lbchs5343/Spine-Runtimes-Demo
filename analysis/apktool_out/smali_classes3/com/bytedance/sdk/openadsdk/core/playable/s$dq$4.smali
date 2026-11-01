.class Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p4

    const-string p5, "embeded_ad"

    invoke-static {p2, p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p4

    invoke-interface {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(I)V

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    return-void
.end method
