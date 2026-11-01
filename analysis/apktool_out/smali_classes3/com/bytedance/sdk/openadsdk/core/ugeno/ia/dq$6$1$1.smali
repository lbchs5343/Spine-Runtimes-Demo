.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq(ZLjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->dq:Lg/dlv;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lg/eid;

    if-eqz v1, :cond_3

    check-cast v0, Lg/eid;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1$1;->dq:Ljava/util/List;

    iget-object v2, v0, Lg/eid;->w:Lg/dfp;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/eid;->a:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/eid;->a:Ljava/util/List;

    :cond_1
    iget-object v2, v0, Lg/eid;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lg/eid;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lg/eid;->w:Lg/dfp;

    iget-object v4, v3, Lg/dfp;->e:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lg/dfp;->e:Ljava/util/ArrayList;

    :cond_2
    iget-object v3, v3, Lg/dfp;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lg/eid;->w:Lg/dfp;

    iget-object v0, v0, Lg/eid;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(II)V

    :cond_3
    :goto_0
    return-void
.end method
