.class public Lcom/bytedance/sdk/component/kk/p/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/kk/p/ox$ox;,
        Lcom/bytedance/sdk/component/kk/p/ox$d;,
        Lcom/bytedance/sdk/component/kk/p/ox$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/kk/p/ox$d;

.field private dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/kk/p/ox$dq;->p:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/p/ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    new-instance v0, Lcom/bytedance/sdk/component/kk/p/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/kk/p/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/p/ox;->d:Lcom/bytedance/sdk/component/kk/p/ox$d;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/kk/p/ox$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/p/ox;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/p/ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    sget-object v1, Lcom/bytedance/sdk/component/kk/p/ox$dq;->d:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/p/ox;->d:Lcom/bytedance/sdk/component/kk/p/ox$d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/kk/p/ox$d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/kk/p/ox$dq;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/component/kk/p/ox;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object v1

    iput-object p0, v1, Lcom/bytedance/sdk/component/kk/p/ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/p/ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    sget-object v1, Lcom/bytedance/sdk/component/kk/p/ox$dq;->ox:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/p/ox;->d:Lcom/bytedance/sdk/component/kk/p/ox$d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/kk/p/ox$d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    move-result-object p0

    iget-object p0, p0, Lcom/bytedance/sdk/component/kk/p/ox;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    sget-object p1, Lcom/bytedance/sdk/component/kk/p/ox$dq;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gtz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/p/ox$ox;->dq()Lcom/bytedance/sdk/component/kk/p/ox;

    :cond_0
    return-void
.end method
