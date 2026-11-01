.class final Lcom/bytedance/msdk/iw/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/iw/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/iw/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/iw/dq;->ox()Lcom/bytedance/msdk/api/p/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->d(Lcom/bytedance/msdk/api/p/f;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/iw/dq;->ox()Lcom/bytedance/msdk/api/p/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/f/ox;->d(Lcom/bytedance/msdk/api/p/f;)V

    throw v0
.end method
