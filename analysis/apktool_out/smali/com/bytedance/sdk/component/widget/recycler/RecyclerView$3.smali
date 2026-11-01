.class Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/recycler/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->k:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->e:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->jy()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->e:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$3;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->jy()V

    :cond_1
    return-void
.end method
