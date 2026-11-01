.class public Lcom/bytedance/sdk/gromore/init/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Manager;


# instance fields
.field private d:Lcom/bytedance/sdk/gromore/init/p;

.field private dq:Lcom/bykv/vk/openvk/api/proto/Manager;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Manager;

    new-instance p1, Lcom/bytedance/sdk/gromore/init/p;

    invoke-direct {p1}, Lcom/bytedance/sdk/gromore/init/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/mp;->d:Lcom/bytedance/sdk/gromore/init/p;

    return-void
.end method


# virtual methods
.method public createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Manager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/init/mn;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/gromore/init/mn;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/Loader;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBridge(I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 2

    const/16 v0, 0x206f

    if-ne p1, v0, :cond_0

    const-string p1, "TMe"

    const-string v0, "initRequestCondition getBridge"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/init/mp;->d:Lcom/bytedance/sdk/gromore/init/p;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Manager;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/bytedance/sdk/gromore/init/ia;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/api/proto/Manager;->getBridge(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/gromore/init/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Manager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Manager;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
