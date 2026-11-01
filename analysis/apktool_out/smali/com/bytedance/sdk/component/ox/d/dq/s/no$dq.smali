.class final Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field final d:I

.field final dq:[Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;

.field final ox:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->dq:[Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->d:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->ox:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->dq:[Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->d:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/no$dq;->ox:I

    return-void
.end method
