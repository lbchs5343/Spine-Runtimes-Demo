.class public final Lg/bhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/ebb;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/c;


# direct methods
.method public synthetic constructor <init>(Lg/ebb;Lcom/google/android/material/datepicker/c;I)V
    .locals 0

    iput p3, p0, Lg/bhp;->b:I

    iput-object p1, p0, Lg/bhp;->a:Lg/ebb;

    iput-object p2, p0, Lg/bhp;->c:Lcom/google/android/material/datepicker/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lg/bhp;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/bhp;->a:Lg/ebb;

    iget-object v0, p1, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bv()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lg/bhp;->c:Lcom/google/android/material/datepicker/c;

    iget-object v1, v1, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v1}, Lg/fin;->getStart()Lg/edj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebb;->u(Lg/edj;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bhp;->a:Lg/ebb;

    iget-object v0, p1, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->by()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lg/bhp;->c:Lcom/google/android/material/datepicker/c;

    iget-object v1, v1, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v1}, Lg/fin;->getStart()Lg/edj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebb;->u(Lg/edj;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
