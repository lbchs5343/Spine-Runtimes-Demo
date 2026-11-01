.class Lcom/bytedance/msdk/core/mn/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->dq(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/mn/s;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$2;->d:Lcom/bytedance/msdk/core/mn/s;

    iput-boolean p2, p0, Lcom/bytedance/msdk/core/mn/s$2;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$2;->d:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v0, Lcom/bytedance/msdk/core/mn/s;->bu:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/mn/s$2;->dq:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_0
    return-void
.end method
