.class Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d(Landroid/content/Context;Lg/hat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

.field final synthetic dq:Lg/hat;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lg/hat;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->dq:Lg/hat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result p1

    const-string p2, "_tt_ad_sdk_"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "from event"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    move-result-object p1

    const-string p2, "wait_pl_install"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->dq:Lg/hat;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V

    goto :goto_0

    :cond_0
    const-string p1, "failed event"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->dq:Lg/hat;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->d:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    const-string p2, "duration"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;->dq:Lg/hat;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lg/hat;->h(IJ)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
