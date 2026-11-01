.class Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->iw()Lcom/bykv/vk/openvk/api/proto/ValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/mp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->p()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;->dq()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
