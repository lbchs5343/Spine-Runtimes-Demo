.class public Lcom/bytedance/sdk/gromore/init/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# instance fields
.field private d:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field private dq:Lcom/bykv/vk/openvk/api/proto/EventListener;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/s;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/s;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method

.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1f41

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/s;->d:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/s;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_2
    return-object v0
.end method
