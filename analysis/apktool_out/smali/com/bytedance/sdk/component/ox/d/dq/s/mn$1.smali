.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

.field final synthetic p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->dq:I

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
