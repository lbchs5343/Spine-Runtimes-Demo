.class Lcom/bytedance/sdk/component/d/dq/dq/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->p()Lcom/bytedance/sdk/component/d/dq/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/dq/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/kk$dq;)Lcom/bytedance/sdk/component/d/dq/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    return-object p1
.end method
