.class public Lcom/bytedance/sdk/component/iw/ox/dq/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/cd;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/iw/ox/dq/d;

.field private final dq:Lcom/bytedance/sdk/component/iw/cd;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/cd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;-><init>(Lcom/bytedance/sdk/component/iw/cd;Lcom/bytedance/sdk/component/iw/ox/dq/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/iw/cd;Lcom/bytedance/sdk/component/iw/ox/dq/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq:Lcom/bytedance/sdk/component/iw/cd;

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->d:Lcom/bytedance/sdk/component/iw/ox/dq/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq:Lcom/bytedance/sdk/component/iw/cd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/dq;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq:Lcom/bytedance/sdk/component/iw/cd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public dq(D)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq:Lcom/bytedance/sdk/component/iw/cd;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/iw/dq;->dq(D)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/p;->dq:Lcom/bytedance/sdk/component/iw/cd;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
