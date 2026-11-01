.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;->d(Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;Lcom/bytedance/sdk/openadsdk/core/ir/op;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/p;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->fw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fn()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->o()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->d(II)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    const-string p2, "itemClickListener"

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->wp:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    iget-object v0, p2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 v0, 0x11

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
