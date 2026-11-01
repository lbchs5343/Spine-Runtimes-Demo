.class Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Load p_init: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_tt_ad_sdk_"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Manager;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Initializer;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Manager;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->s(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Result;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
