.class Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;->dq:Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;->dq:Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->isExpress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;->dq()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
