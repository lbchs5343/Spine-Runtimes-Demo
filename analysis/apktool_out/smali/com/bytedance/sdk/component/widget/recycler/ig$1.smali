.class Lcom/bytedance/sdk/component/widget/recycler/ig$1;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/widget/recycler/ig;

.field dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->d:Lcom/bytedance/sdk/component/widget/recycler/ig;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->dq:Z

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$q;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->dq:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->dq:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->d:Lcom/bytedance/sdk/component/widget/recycler/ig;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$1;->dq:Z

    return-void
.end method
