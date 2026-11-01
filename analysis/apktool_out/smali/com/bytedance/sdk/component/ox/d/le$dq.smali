.class public final Lcom/bytedance/sdk/component/ox/d/le$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/ox/d/i;

.field private final dq:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/le$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/le$dq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/le;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->d:Lcom/bytedance/sdk/component/ox/d/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->ox:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/i;)Lcom/bytedance/sdk/component/ox/d/le$dq;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/i;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->d:Lcom/bytedance/sdk/component/ox/d/i;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "multipart != "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/le$d;)Lcom/bytedance/sdk/component/ox/d/le$dq;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->ox:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$dq;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/le$d;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq(Lcom/bytedance/sdk/component/ox/d/le$d;)Lcom/bytedance/sdk/component/ox/d/le$dq;

    move-result-object p1

    return-object p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/le;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/le;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->d:Lcom/bytedance/sdk/component/ox/d/i;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/le$dq;->ox:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/le;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Lcom/bytedance/sdk/component/ox/d/i;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
