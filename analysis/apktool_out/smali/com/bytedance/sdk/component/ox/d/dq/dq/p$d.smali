.class final Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final d:[J

.field final dq:Ljava/lang/String;

.field final synthetic ia:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

.field iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

.field mn:J

.field final ox:[Ljava/io/File;

.field final p:[Ljava/io/File;

.field s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ia:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ox:[Ljava/io/File;

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ox:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/dq/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ia:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    iget v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
