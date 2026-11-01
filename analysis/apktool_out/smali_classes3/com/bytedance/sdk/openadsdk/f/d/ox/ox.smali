.class public Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;
    }
.end annotation


# instance fields
.field public final dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg/hat;->b:Lg/cpo;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public d()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ff72

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public dq()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ff71

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v0

    return-wide v0
.end method
