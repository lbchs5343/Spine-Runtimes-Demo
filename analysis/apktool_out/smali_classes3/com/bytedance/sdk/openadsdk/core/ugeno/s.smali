.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/s;
.super Ljava/lang/Object;


# direct methods
.method public static dq()V
    .locals 6

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;-><init>()V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;-><init>()V

    iput-object v1, v0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object v2, v0, Lg/fzn;->e:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg/fzn;->h:Ljava/lang/Object;

    iget-object v2, v0, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v2, Lg/gfz;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lg/gfz;->dq()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, v0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Lg/cco;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gap;

    if-eqz v1, :cond_2

    sget-object v2, Lg/cco;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Lg/gap;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$2;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lg/apb;

    const-string v4, "slide"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lg/apb;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/apb;

    const-string v4, "tap"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lg/apb;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/apb;

    const-string v4, "timer"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lg/apb;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Lg/bv;->dq()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lg/re;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/btr;

    if-eqz v1, :cond_5

    sget-object v2, Lg/re;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Lg/btr;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    new-instance v1, Lg/gpu;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lg/gpu;-><init>(I)V

    iput-object v1, v0, Lg/fzn;->f:Ljava/lang/Object;

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$3;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$3;-><init>()V

    iput-object v1, v0, Lg/fzn;->i:Ljava/lang/Object;

    return-void
.end method
