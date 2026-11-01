.class public Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private final dq:Lg/hat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;->dq:Lg/hat;

    return-void
.end method


# virtual methods
.method public d(D)Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;->dq:Lg/hat;

    const v1, 0x3ff72

    invoke-virtual {v0, v1, p1, p2}, Lg/hat;->j(ID)V

    return-object p0
.end method

.method public dq(D)Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;->dq:Lg/hat;

    const v1, 0x3ff71

    invoke-virtual {v0, v1, p1, p2}, Lg/hat;->j(ID)V

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox$dq;->dq:Lg/hat;

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method
