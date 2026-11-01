.class Lcom/bytedance/sdk/component/widget/recycler/ox$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

.field public dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

.field public iw:I

.field public ox:I

.field public p:I

.field public s:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;-><init>(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    iput p3, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->ox:I

    iput p4, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->p:I

    iput p5, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->s:I

    iput p6, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->iw:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeInfo{oldHolder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->iw:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
