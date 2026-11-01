.class public Lcom/bytedance/msdk/core/no/ox;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I

.field private ia:Ljava/lang/String;

.field private iw:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private ox:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->dq:I

    return v0
.end method

.method public d(I)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ox;->dq:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ox;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->d:I

    return v0
.end method

.method public dq(I)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ox;->d:I

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ox;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    return v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ox;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public iw()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->p:I

    return v0
.end method

.method public mn()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ox;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/ox;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->s:I

    return v0
.end method

.method public ox(I)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/ox;->ia:Ljava/lang/String;

    return-object p0
.end method

.method public ox()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ox;->p:I

    return-object p0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s(I)Lcom/bytedance/msdk/core/no/ox;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/ox;->s:I

    return-object p0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/ox;->ox:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
