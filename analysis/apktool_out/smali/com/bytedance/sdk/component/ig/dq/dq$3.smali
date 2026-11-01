.class Lcom/bytedance/sdk/component/ig/dq/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/dq/dq;->dq(ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/component/ig/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/dq/dq;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->dq:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->dq:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->ox(Lcom/bytedance/sdk/component/ig/dq/dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->d:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$3;->ox:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
