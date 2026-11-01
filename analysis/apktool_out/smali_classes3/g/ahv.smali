.class public final Lg/ahv;
.super Lg/doi;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/c;

.field public final synthetic b:Lg/ebb;


# direct methods
.method public constructor <init>(Lg/ebb;Lcom/google/android/material/datepicker/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ahv;->b:Lg/ebb;

    iput-object p2, p0, Lg/ahv;->a:Lcom/google/android/material/datepicker/c;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p1, p0, Lg/ahv;->a:Lcom/google/android/material/datepicker/c;

    iget-object p1, p1, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    iget-object p3, p0, Lg/ahv;->b:Lg/ebb;

    if-gez p2, :cond_0

    iget-object p2, p3, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->bv()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p3, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->by()I

    move-result p2

    :goto_0
    invoke-virtual {p1}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object v0

    iput-object v0, p3, Lg/ebb;->n:Lg/edj;

    iget-object v1, p3, Lg/ebb;->q:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lg/fin;->getStart()Lg/edj;

    move-result-object v2

    invoke-virtual {v2, p2}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object p2

    invoke-virtual {p2}, Lg/edj;->getLongName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lg/fin;->getStart()Lg/edj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result p1

    invoke-virtual {p3, p1}, Lg/ebb;->t(I)V

    return-void
.end method
