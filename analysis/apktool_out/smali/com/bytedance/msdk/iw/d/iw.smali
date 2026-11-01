.class public Lcom/bytedance/msdk/iw/d/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/iw;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 6

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/iw/d/iw;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->dq()D

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/16 v1, 0x2121

    invoke-virtual {v0, v1, v4, v5}, Lg/hat;->j(ID)V

    iget-object v1, p0, Lcom/bytedance/msdk/iw/d/iw;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->d()D

    move-result-wide v2

    :cond_1
    const/16 v1, 0x2122

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->j(ID)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
