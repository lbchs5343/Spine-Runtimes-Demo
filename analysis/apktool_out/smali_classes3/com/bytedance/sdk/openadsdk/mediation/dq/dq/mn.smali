.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/dq/d;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    const/16 v1, 0x206e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;->getInstance()Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/s;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;)V

    const p1, 0x7e09bc

    invoke-virtual {v0, p1, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public loadDrawToken(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/IMediationDrawAdTokenCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/dq;

    invoke-direct {p1, p3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/IMediationDrawAdTokenCallback;)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;->getInstance()Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const v0, 0x41ec6

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public loadNativeToken(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;

    invoke-direct {p1, p3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/ox;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/IMediationNativeAdTokenCallback;)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;->getInstance()Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const v0, 0x41ec5

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public preload(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/IMediationPreloadRequestInfo;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/mediation/IMediationPreloadRequestInfo;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/ia;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/IMediationPreloadRequestInfo;)V

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v1, p2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v1, p1, p3}, Lg/hat;->o(II)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1, p4}, Lg/hat;->o(II)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;->getInstance()Lcom/bytedance/sdk/openadsdk/mediation/bridge/MediationAdClassLoader;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const p4, 0x41ebd

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setUserInfoForSegment(Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfigUserInfoForSegment;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfigUserInfoForSegment;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x41ebe

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updatePrivacyConfig(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x41ec0

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
