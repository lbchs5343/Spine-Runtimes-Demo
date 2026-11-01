.class public abstract Lcom/bytedance/msdk/api/p/dq/d/d/ox;
.super Lcom/bytedance/msdk/api/p/dq/d/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/p/dq/d/d/ox;->dq(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public abstract dq(Landroid/app/Activity;)V
.end method
