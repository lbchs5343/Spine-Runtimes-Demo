.class public abstract Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "iw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;,
        Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    }
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;

.field private iw:J

.field private ox:J

.field private p:J

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->d:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->ox:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->p:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->s:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw:J

    return-void
.end method

.method public static s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)I
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->mp:I

    and-int/lit8 v1, v0, 0xe

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->cd()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    return v3

    :cond_0
    and-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->kk()I

    move-result p0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v0, p0, :cond_1

    or-int/lit16 p0, v1, 0x800

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public abstract d()Z
.end method

.method public abstract d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->o()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;ILjava/util/List;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->o()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    return-object p1
.end method

.method public abstract dq()V
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw:J

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;

    return-void
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z

    move-result p1

    return p1
.end method

.method public ia()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->iw:J

    return-wide v0
.end method

.method public iw()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->ox:J

    return-wide v0
.end method

.method public final iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    :cond_0
    return-void
.end method

.method public final kk()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public mn()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->p:J

    return-wide v0
.end method

.method public mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public o()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;-><init>()V

    return-object v0
.end method

.method public abstract ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)Z
.end method

.method public abstract p()V
.end method

.method public abstract p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw;->s:J

    return-wide v0
.end method
