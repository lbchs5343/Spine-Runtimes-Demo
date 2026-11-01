.class La/v/EndsRespondRecyclerView$1;
.super Lg/doi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/v/EndsRespondRecyclerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La/v/EndsRespondRecyclerView;


# direct methods
.method public constructor <init>(La/v/EndsRespondRecyclerView;)V
    .locals 0

    iput-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-static {p1}, La/v/EndsRespondRecyclerView;->b(La/v/EndsRespondRecyclerView;)La/v/EndsRespondRecyclerView$OnBottomListener;

    move-result-object p1

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-virtual {p1}, La/v/EndsRespondRecyclerView;->isMoreBottomData()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-static {p1}, La/v/EndsRespondRecyclerView;->a(La/v/EndsRespondRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    instance-of p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_4

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/b;->et()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->cq(IIZZ)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v1

    :goto_0
    sub-int/2addr p1, v0

    if-ne v1, p1, :cond_4

    :goto_1
    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-virtual {p1}, La/v/EndsRespondRecyclerView;->onBottomBegin()V

    iget-object p1, p0, La/v/EndsRespondRecyclerView$1;->this$0:La/v/EndsRespondRecyclerView;

    invoke-static {p1}, La/v/EndsRespondRecyclerView;->b(La/v/EndsRespondRecyclerView;)La/v/EndsRespondRecyclerView$OnBottomListener;

    move-result-object p1

    invoke-interface {p1}, La/v/EndsRespondRecyclerView$OnBottomListener;->onBottom()V

    :cond_4
    :goto_2
    return-void
.end method
