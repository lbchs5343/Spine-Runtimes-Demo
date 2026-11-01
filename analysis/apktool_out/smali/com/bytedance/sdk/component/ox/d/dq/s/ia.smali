.class final Lcom/bytedance/sdk/component/ox/d/dq/s/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;,
        Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;
    }
.end annotation


# static fields
.field static final dq:Ljava/util/logging/Logger;


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;

.field private final ox:Lcom/bytedance/sdk/component/ox/dq/s;

.field private final p:Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;

.field private final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/ox/d/dq/s/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/s;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->s:Z

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;-><init>(Lcom/bytedance/sdk/component/ox/dq/s;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;-><init>(ILcom/bytedance/sdk/component/ox/dq/gh;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_2

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(IBS)I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ZILcom/bytedance/sdk/component/ox/dq/s;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    return-void

    :cond_2
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public static dq(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/dq/s;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private dq(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;

    iput p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;->p:I

    iput p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;->dq:I

    iput-short p2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;->s:S

    iput-byte p3, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;->d:B

    iput p4, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$dq;->ox:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;->dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/p$dq;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ZIILjava/util/List;)V

    return-void

    :cond_3
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private ia(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p4}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result p4

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v2

    sub-int/2addr p2, v1

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object p3, Lcom/bytedance/sdk/component/ox/dq/iw;->d:Lcom/bytedance/sdk/component/ox/dq/iw;

    if-lez p2, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    int-to-long v2, p2

    invoke-interface {p3, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/s;->ox(J)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p3

    :cond_0
    invoke-interface {p1, p4, v1, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/dq/iw;)V

    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private iw(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(IILjava/util/List;)V

    return-void

    :cond_1
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private kk(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result p2

    int-to-long p2, p2

    const-wide/32 v2, 0x7fffffff

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    invoke-interface {p1, p4, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(IJ)V

    return-void

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private mn(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result p2

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p4}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1, p2, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ZII)V

    return-void

    :cond_1
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "TYPE_PING length != 8: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private ox(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;I)V

    return-void

    :cond_0
    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private p(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p4, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private s(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_b

    new-instance p3, Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-direct {p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_a

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ox/dq/s;->kk()S

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_3

    const v4, 0xffffff

    if-gt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    if-ltz v3, :cond_5

    const/4 v2, 0x7

    goto :goto_1

    :cond_5
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    if-ne v3, p4, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(II)Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_a
    invoke-interface {p1, v0, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;->dq(ZLcom/bytedance/sdk/component/ox/d/dq/s/q;)V

    return-void

    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->close()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->s:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(ZLcom/bytedance/sdk/component/ox/d/dq/s/ia$d;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Required SETTINGS preface not received"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/s;->ox(J)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p1

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->s()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public dq(ZLcom/bytedance/sdk/component/ox/d/dq/s/ia$d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(Lcom/bytedance/sdk/component/ox/dq/s;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_3

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Expected a SETTINGS frame but was %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/s;->ia()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->o()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    sget-object v4, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v0, v1, v3, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->dq(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v3, :pswitch_data_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->kk(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ia(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->mn(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->iw(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->s(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->p(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->ox(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->d(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;IBI)V

    :goto_1
    return v2

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "FRAME_SIZE_ERROR: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/s;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
