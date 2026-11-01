.class public final Lg/vt;
.super Lg/ctp;


# instance fields
.field public final synthetic a:Lg/eid;


# direct methods
.method public constructor <init>(Lg/eid;Lg/cit;)V
    .locals 0

    iput-object p1, p0, Lg/vt;->a:Lg/eid;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ctp;->c:Z

    iput-object p2, p0, Lg/ctp;->d:Lg/cit;

    return-void
.end method


# virtual methods
.method public final b(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lg/vt;->a:Lg/eid;

    iget-object v1, v0, Lg/eid;->g:Lg/gco;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, v0, Lg/eid;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, v0, Lg/eid;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/co;

    iget-object v0, v0, Lg/eid;->g:Lg/gco;

    invoke-interface {v0, p1, p2, v1}, Lg/gco;->dq(ILandroid/view/View;Lg/co;)V

    :cond_0
    return-void
.end method
