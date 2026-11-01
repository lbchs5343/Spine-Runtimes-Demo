.class public Lcom/bytedance/msdk/ox/iw/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/iw/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Landroid/os/Handler;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/iw/d/d;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/iw/d/d;->run()V

    :cond_0
    return-void
.end method
