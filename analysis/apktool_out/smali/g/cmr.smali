.class public final Lg/cmr;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

# interfaces
.implements Lg/gqj;


# instance fields
.field public a:Lg/dlv;

.field public final synthetic b:Lg/dfp;


# direct methods
.method public constructor <init>(Lg/dfp;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg/cmr;->b:Lg/dfp;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lg/cmr;->b:Lg/dfp;

    iget-object v0, v0, Lg/dfp;->b:Lg/cal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/cmr;->a:Lg/dlv;

    invoke-interface {v0, v1}, Lg/cal;->dq(Lg/dlv;)V

    :cond_0
    return-void
.end method

.method public final dq()V
    .locals 2

    iget-object v0, p0, Lg/cmr;->b:Lg/dfp;

    iget-object v0, v0, Lg/dfp;->b:Lg/cal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/cmr;->a:Lg/dlv;

    invoke-interface {v0, v1}, Lg/cal;->d(Lg/dlv;)V

    :cond_0
    return-void
.end method

.method public final ox()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/cmr;->a:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
