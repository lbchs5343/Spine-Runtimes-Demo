.class Lcom/bytedance/sdk/component/widget/recycler/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/widget/recycler/ox;

.field final synthetic dq:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/ox;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->d:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->dq:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->d:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object v3, v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget v4, v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;->d:I

    iget v5, v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;->ox:I

    iget v6, v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;->p:I

    iget v7, v1, Lcom/bytedance/sdk/component/widget/recycler/ox$d;->s:I

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/component/widget/recycler/ox;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->d:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/ox;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$1;->dq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
