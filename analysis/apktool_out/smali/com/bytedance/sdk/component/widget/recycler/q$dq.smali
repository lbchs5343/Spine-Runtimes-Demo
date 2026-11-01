.class Lcom/bytedance/sdk/component/widget/recycler/q$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field static p:Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq<",
            "Lcom/bytedance/sdk/component/widget/recycler/q$dq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

.field dq:I

.field ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$d;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->p:Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()V
    .locals 1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->p:Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;->dq()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/widget/recycler/q$dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->p:Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;->dq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/widget/recycler/q$dq;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    sget-object v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->p:Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/p$dq;->dq(Ljava/lang/Object;)Z

    return-void
.end method
