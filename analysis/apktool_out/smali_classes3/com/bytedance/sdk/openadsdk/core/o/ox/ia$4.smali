.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->kk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

.field final synthetic dq:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->dq:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->dq:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->dq:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->wp:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lg/hat;->g(I)Lg/hat;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v4, "hid"

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hashCode"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x3

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$4;->dq:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
