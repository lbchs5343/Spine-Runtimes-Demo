.class Lcom/bytedance/sdk/openadsdk/core/wp/s$2;
.super Lcom/bytedance/sdk/openadsdk/core/wp/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/wp/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/wp/s;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->ox:Lcom/bytedance/sdk/openadsdk/core/wp/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->d:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILcom/bytedance/sdk/openadsdk/core/wp/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->ox:Lcom/bytedance/sdk/openadsdk/core/wp/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq(Lcom/bytedance/sdk/openadsdk/core/wp/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/wp/p;->dq()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/wp/p;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/wp/p;->d()Lcom/bytedance/sdk/openadsdk/core/wp/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pit error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/wp/p;->d()Lcom/bytedance/sdk/openadsdk/core/wp/iw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/wp/iw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pitaya_ext_plugin"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->ox:Lcom/bytedance/sdk/openadsdk/core/wp/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->d(Lcom/bytedance/sdk/openadsdk/core/wp/s;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->ox:Lcom/bytedance/sdk/openadsdk/core/wp/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/wp/s$2;->d:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/s;->dq(Lcom/bytedance/sdk/openadsdk/core/wp/s;JLcom/bytedance/sdk/openadsdk/core/wp/p;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(ILcom/bytedance/sdk/openadsdk/core/wp/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1
.end method
