.class public final Lg/fwd;
.super Lg/cgo;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic h:Lg/cms;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lg/cms;II)V
    .locals 0

    iput p3, p0, Lg/fwd;->i:I

    iput-object p1, p0, Lg/fwd;->h:Lg/cms;

    iput p2, p0, Lg/fwd;->d:I

    invoke-direct {p0}, Lg/cgo;-><init>()V

    return-void
.end method


# virtual methods
.method public final _r(I)I
    .locals 3

    iget v0, p0, Lg/fwd;->i:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fwd;->h:Lg/cms;

    check-cast v0, Lg/elf;

    iget-object v0, v0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v0

    instance-of v1, v0, Lg/bzj;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast v0, Lg/bzj;

    invoke-virtual {v0, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v1, Lg/byz;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Lg/edn;

    if-eqz v1, :cond_1

    :goto_0
    iget v2, p0, Lg/fwd;->d:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lg/dbv;->f(I)Lg/cng;

    :cond_2
    :goto_1
    return v2

    :pswitch_0
    iget-object v0, p0, Lg/fwd;->h:Lg/cms;

    check-cast v0, Lg/efx;

    iget-object v0, v0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v0

    instance-of v1, v0, Lg/dfi;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    check-cast v0, Lg/dfi;

    invoke-virtual {v0, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v1, v1, Lg/ajr;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p1, p1, Lg/edn;

    if-eqz p1, :cond_4

    :goto_2
    iget v2, p0, Lg/fwd;->d:I

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
