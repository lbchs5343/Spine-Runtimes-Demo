.class public Lcom/bytedance/sdk/openadsdk/core/wp/ia;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bykv/vk/openvk/api/proto/Result;

.field private dq:I


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Result;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->dq:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->d:Lcom/bykv/vk/openvk/api/proto/Result;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->dq:I

    return v0
.end method

.method public ox()Lcom/bykv/vk/openvk/api/proto/Result;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->d:Lcom/bykv/vk/openvk/api/proto/Result;

    return-object v0
.end method

.method public setResult(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->d:Lcom/bykv/vk/openvk/api/proto/Result;

    return-void
.end method
