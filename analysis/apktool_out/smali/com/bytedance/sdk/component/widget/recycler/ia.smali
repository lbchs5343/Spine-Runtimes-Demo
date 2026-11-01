.class public abstract Lcom/bytedance/sdk/component/widget/recycler/ia;
.super Ljava/lang/Object;


# instance fields
.field final d:Landroid/graphics/Rect;

.field protected final dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

.field private ox:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Lcom/bytedance/sdk/component/widget/recycler/ia$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;-><init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/ia$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/ia$2;-><init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/ia$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/ia$1;-><init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;I)Lcom/bytedance/sdk/component/widget/recycler/ia;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract dq(Landroid/view/View;)I
.end method

.method public dq()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox:I

    return-void
.end method

.method public abstract dq(I)V
.end method

.method public abstract ia()I
.end method

.method public abstract iw()I
.end method

.method public abstract iw(Landroid/view/View;)I
.end method

.method public abstract mn()I
.end method

.method public abstract ox()I
.end method

.method public abstract ox(Landroid/view/View;)I
.end method

.method public abstract p()I
.end method

.method public abstract p(Landroid/view/View;)I
.end method

.method public abstract s()I
.end method

.method public abstract s(Landroid/view/View;)I
.end method
