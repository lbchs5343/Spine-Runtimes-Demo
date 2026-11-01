.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
