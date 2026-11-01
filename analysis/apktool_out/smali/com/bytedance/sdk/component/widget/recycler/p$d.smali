.class Lcom/bytedance/sdk/component/widget/recycler/p$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public d:I

.field public dq:Z

.field public ox:I

.field public p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$d;->dq:Z

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$d;->d:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$d;->ox:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$d;->p:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$d;->s:I

    return-void
.end method
