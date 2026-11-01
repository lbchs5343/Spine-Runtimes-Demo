.class public Lcom/bytedance/msdk/core/s/d/iw;
.super Lcom/bytedance/msdk/core/s/d/s;


# instance fields
.field private d:I

.field private dq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/s/d/s;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/iw;->dq:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/iw;->d:I

    return-void
.end method

.method private dq(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/s/d/iw;->d:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/iw;->d:I

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->fw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/core/s/d/iw;->dq:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/iw;->dq:I

    :cond_0
    return-void
.end method


# virtual methods
.method public B_()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/s/d/iw;->dq:I

    return v0
.end method

.method public dq(IZ)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/s/d/iw;->dq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(IZ)V

    return-void
.end method
