.class final Lcom/bytedance/sdk/component/widget/recycler/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/widget/recycler/p$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;

    check-cast p2, Lcom/bytedance/sdk/component/widget/recycler/p$d;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/p$1;->dq(Lcom/bytedance/sdk/component/widget/recycler/p$d;Lcom/bytedance/sdk/component/widget/recycler/p$d;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/p$d;Lcom/bytedance/sdk/component/widget/recycler/p$d;)I
    .locals 6

    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p2, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v5

    :cond_3
    iget-boolean v0, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq:Z

    iget-boolean v3, p2, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq:Z

    if-eq v0, v3, :cond_5

    if-eqz v0, :cond_4

    return v5

    :cond_4
    return v2

    :cond_5
    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/p$d;->d:I

    iget v2, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->d:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/p$d;->ox:I

    iget p2, p2, Lcom/bytedance/sdk/component/widget/recycler/p$d;->ox:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method
