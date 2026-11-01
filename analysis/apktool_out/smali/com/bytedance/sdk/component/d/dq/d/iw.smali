.class final Lcom/bytedance/sdk/component/d/dq/d/iw;
.super Ljava/lang/Object;


# instance fields
.field d:I

.field final dq:[B

.field iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

.field mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

.field ox:I

.field p:Z

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->p:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iput p2, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iput p3, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->p:Z

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->s:Z

    return-void
.end method


# virtual methods
.method public final d()Lcom/bytedance/sdk/component/d/dq/d/iw;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-eqz v3, :cond_1

    iput-object v0, v3, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-eqz v0, :cond_2

    iput-object v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    :cond_2
    iput-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    return-object v2
.end method

.method public final dq()Lcom/bytedance/sdk/component/d/dq/d/iw;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->p:Z

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v3, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget v4, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/d/dq/d/iw;-><init>([BIIZZ)V

    return-object v1
.end method

.method public final dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)Lcom/bytedance/sdk/component/d/dq/d/iw;
    .locals 1

    iput-object p0, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object v0, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object p1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    return-object p1
.end method
