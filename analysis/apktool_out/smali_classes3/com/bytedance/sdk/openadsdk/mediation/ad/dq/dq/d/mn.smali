.class public Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationShakeViewListener;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationShakeViewListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/mn;->d:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationShakeViewListener;

    sget-object p1, Lg/hat;->b:Lg/cpo;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/mn;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/mn;->d:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationShakeViewListener;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    const v0, 0x41ebc

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationShakeViewListener;->onDismissed()V

    :goto_0
    return-object p3
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/mn;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
