.class public Lcom/bytedance/sdk/component/iw/p/o;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/iw/cd;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    :cond_2
    return-object v1
.end method

.method private ox(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "memory_cache"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mp()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->le()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/d;->iw()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/p/o;->ox(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/p/o;->d(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/ig;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/ig;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/iw/p/mp;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v2, v3}, Lcom/bytedance/sdk/component/iw/p/mp;-><init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method
