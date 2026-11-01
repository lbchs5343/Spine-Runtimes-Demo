.class Lcom/bytedance/sdk/openadsdk/f/d/d/q$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/api/proto/ValueSet$ValueGetter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/q;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/q$15;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/q$15;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q$15;->dq()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
