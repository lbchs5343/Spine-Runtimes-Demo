.class public Lcom/bytedance/sdk/component/kk/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/kk/dq$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/kk/ox/iw;

.field private dq:Lcom/bytedance/sdk/component/d/dq/ig;

.field private ox:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/kk/dq$dq;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->dq:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->ox:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->p:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/kk/ox/iw;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/kk/ox/iw;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->d:Lcom/bytedance/sdk/component/kk/ox/iw;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    :cond_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->s:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p1, Lcom/bytedance/sdk/component/kk/dq$dq;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/d/dq/kk;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Lcom/bytedance/sdk/component/kk/dq$dq;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Lcom/bytedance/sdk/component/kk/dq$dq;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Landroid/os/Bundle;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;->d(Lcom/bytedance/sdk/component/kk/dq$dq;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/kk/dq$dq;Lcom/bytedance/sdk/component/kk/dq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/dq;-><init>(Lcom/bytedance/sdk/component/kk/dq$dq;)V

    return-void
.end method

.method public static dq()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/kk/p/ox$dq;->dq:Lcom/bytedance/sdk/component/kk/p/ox$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/kk/p/ox;->dq(Lcom/bytedance/sdk/component/kk/p/ox$dq;)V

    return-void
.end method

.method private static dq(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ":push"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":pushservice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/kk/d/s;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/kk/d/s;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-object v0
.end method

.method public dq(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/component/kk/ox/dq;->d(Z)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/kk/dq;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(ILandroid/content/Context;)Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->p()V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(ILandroid/content/Context;)Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq()V

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(ILandroid/content/Context;)Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/ox/dq;->p()V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(ILandroid/content/Context;)Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq()V

    return-void
.end method

.method public dq(Landroid/content/Context;ZLcom/bytedance/sdk/component/kk/ox/d;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/bytedance/sdk/component/kk/ox/d;->dq()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->d:Lcom/bytedance/sdk/component/kk/ox/iw;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/kk/ox/iw;->dq(I)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Lcom/bytedance/sdk/component/kk/ox/d;)V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object p2

    iget p3, p0, Lcom/bytedance/sdk/component/kk/dq;->ox:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Landroid/content/Context;Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet ITTAdNetDepend is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iw()Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/kk/d/ox;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/d/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/kk/d/ox;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/kk/d/d;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/kk/d/d;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/kk/d/dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/dq;->dq:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/kk/d/dq;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-object v0
.end method
