.class Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic ox:Ljava/lang/Throwable;

.field final synthetic p:Lcom/bytedance/sdk/component/iw/ox/ox$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/ox$dq;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->p:Lcom/bytedance/sdk/component/iw/ox/ox$dq;

    iput p2, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->ox:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->p:Lcom/bytedance/sdk/component/iw/ox/ox$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq(Lcom/bytedance/sdk/component/iw/ox/ox$dq;)Lcom/bytedance/sdk/component/iw/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->p:Lcom/bytedance/sdk/component/iw/ox/ox$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq(Lcom/bytedance/sdk/component/iw/ox/ox$dq;)Lcom/bytedance/sdk/component/iw/f;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;->ox:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/iw/f;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
