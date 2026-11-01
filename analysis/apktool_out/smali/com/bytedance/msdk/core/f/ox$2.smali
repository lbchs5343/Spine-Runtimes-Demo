.class Lcom/bytedance/msdk/core/f/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/iw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic ox:Lorg/json/JSONObject;

.field final synthetic p:Z

.field final synthetic s:Lcom/bytedance/msdk/core/f/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/ox;ZJLorg/json/JSONObject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    iput-boolean p2, p0, Lcom/bytedance/msdk/core/f/ox$2;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/msdk/core/f/ox$2;->d:J

    iput-object p5, p0, Lcom/bytedance/msdk/core/f/ox$2;->ox:Lorg/json/JSONObject;

    iput-boolean p6, p0, Lcom/bytedance/msdk/core/f/ox$2;->p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDK init finish.........hasConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/f/ox$2;->dq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_SDK_Init"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox$2;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/ox;->n(Lcom/bytedance/msdk/core/f/ox;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/ox;->op(Lcom/bytedance/msdk/core/f/ox;)Lcom/bytedance/msdk/core/iw/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/ox;->op(Lcom/bytedance/msdk/core/f/ox;)Lcom/bytedance/msdk/core/iw/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/core/iw/d;->dq()V

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/f/ox$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/f/ox$2$1;-><init>(Lcom/bytedance/msdk/core/f/ox$2;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
