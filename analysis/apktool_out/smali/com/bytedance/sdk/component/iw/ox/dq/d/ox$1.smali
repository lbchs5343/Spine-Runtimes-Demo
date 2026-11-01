.class Lcom/bytedance/sdk/component/iw/ox/dq/d/ox$1;
.super Lcom/bytedance/sdk/component/iw/ox/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/iw/ox/dq/d/ox;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/iw/ox/dq/ox<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/iw/ox/dq/d/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/dq/d/ox;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/d/ox$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/d/ox;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/ox;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/d/ox$1;->dq(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;[B)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    array-length p1, p2

    return p1
.end method
