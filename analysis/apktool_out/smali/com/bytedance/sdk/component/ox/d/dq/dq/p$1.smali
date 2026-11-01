.class Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;
.super Lcom/bytedance/sdk/component/ox/d/dq/dq/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn()Lcom/bytedance/sdk/component/ox/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic dq:Z = true


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/io/IOException;)V
    .locals 1

    sget-boolean p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;->dq:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ia:Z

    return-void
.end method
