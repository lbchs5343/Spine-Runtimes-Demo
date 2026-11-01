.class Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/pangle/ZeusPluginInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginInstall(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const/4 p3, 0x7

    if-ne p2, p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;)Lcom/bykv/vk/openvk/api/proto/EventListener;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "com.byted.pangle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$4;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;)Lcom/bykv/vk/openvk/api/proto/EventListener;

    move-result-object p1

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p2, Lg/cpq;->e:Z

    invoke-virtual {p2}, Lg/cpq;->h()Lg/gok;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void

    :cond_1
    const-string p1, "TTPluginManager"

    const-string p2, "no main pl"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
