.class Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq$7;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

.field final synthetic dq:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq$7;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->dq:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- ServerSide verify http error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->dq:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->ox:Lcom/bytedance/msdk/core/admanager/reward/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->dq:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;->d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    iget-boolean v2, v2, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->dq:Z

    const/4 v3, -0x2

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;ILjava/lang/String;Z)V

    return-void
.end method
