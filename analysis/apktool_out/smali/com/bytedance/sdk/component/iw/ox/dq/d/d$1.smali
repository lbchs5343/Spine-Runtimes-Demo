.class Lcom/bytedance/sdk/component/iw/ox/dq/d/d$1;
.super Lcom/bytedance/sdk/component/iw/ox/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/iw/ox/dq/d/d;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/iw/ox/dq/ox<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/iw/ox/dq/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/dq/d/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/d$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/d/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/ox;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/d/d$1;->dq(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/iw/ox/dq/d/d;->dq(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
