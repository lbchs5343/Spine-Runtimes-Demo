.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Z

.field final synthetic iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

.field final synthetic ox:I

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/component/ox/d/dq/s/ig;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->dq:Z

    iput p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->ox:I

    iput p6, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->p:I

    iput-object p7, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/ig;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->dq:Z

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->ox:I

    iget v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->p:I

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/ig;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
