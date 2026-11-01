.class public abstract Lcom/bytedance/sdk/component/dq/p;
.super Lcom/bytedance/sdk/component/dq/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/p$dq;,
        Lcom/bytedance/sdk/component/dq/p$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/dq/d<",
        "TP;TR;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/dq/p$dq;

.field private dq:Z

.field private ox:Lcom/bytedance/sdk/component/dq/iw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/p;->dq:Z

    return-void
.end method

.method private mn()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/p;->dq:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jsb async call already finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hashcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/RuntimeException;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic dq()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/p;->mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/p;->d:Lcom/bytedance/sdk/component/dq/p$dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/dq/p$dq;->dq(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->s()V

    :cond_0
    return-void
.end method

.method public abstract dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/dq/iw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;Lcom/bytedance/sdk/component/dq/p$dq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/dq/iw;",
            "Lcom/bytedance/sdk/component/dq/p$dq;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/p;->ox:Lcom/bytedance/sdk/component/dq/iw;

    iput-object p3, p0, Lcom/bytedance/sdk/component/dq/p;->d:Lcom/bytedance/sdk/component/dq/p$dq;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/dq/p;->dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)V

    return-void
.end method

.method public final dq(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/p;->mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/p;->d:Lcom/bytedance/sdk/component/dq/p$dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/dq/p$dq;->dq(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->s()V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->p()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->s()V

    return-void
.end method

.method public final ox()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/dq/p;->dq(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract p()V
.end method

.method public s()V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/p;->dq:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/p;->ox:Lcom/bytedance/sdk/component/dq/iw;

    return-void
.end method
