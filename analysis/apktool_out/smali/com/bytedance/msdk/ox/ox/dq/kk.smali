.class public Lcom/bytedance/msdk/ox/ox/dq/kk;
.super Lcom/bytedance/msdk/ox/ox/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/core/no/no;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/core/no/no;I)Z

    move-result p1

    return p1
.end method
