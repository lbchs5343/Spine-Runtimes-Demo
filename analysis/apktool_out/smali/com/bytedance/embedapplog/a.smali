.class public Lcom/bytedance/embedapplog/a;
.super Lcom/bytedance/embedapplog/hf$dq;


# instance fields
.field private volatile dq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/embedapplog/hf$dq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a;->dq:Z

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a;->dq:Z

    return v0
.end method

.method public dq(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(ILandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "oa_id_limit_state"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/a;->dq:Z

    :cond_0
    return-void
.end method
