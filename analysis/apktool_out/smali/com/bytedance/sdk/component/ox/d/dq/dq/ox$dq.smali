.class public Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/kx;

.field final dq:J

.field private ia:Ljava/util/Date;

.field private ig:I

.field private iw:Ljava/util/Date;

.field private kk:J

.field private mn:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private o:J

.field final ox:Lcom/bytedance/sdk/component/ox/d/bl;

.field private p:Ljava/util/Date;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ig:I

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->dq:J

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/bl;->mp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->kk:J

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/bl;->q()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->o:J

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_5

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/p;->dq(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p:Ljava/util/Date;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->s:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/p;->dq(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ia:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/p;->dq(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->iw:Ljava/util/Date;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->mn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->no:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ig:I

    :cond_4
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private d()Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;
    .locals 13

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->ia()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->iw()Lcom/bytedance/sdk/component/ox/d/fw;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/d/bl;Lcom/bytedance/sdk/component/ox/d/kx;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->mn()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->dq()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/bl;->ig()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/p;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ox()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ox()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ia()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ia()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_6
    move-wide v11, v9

    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/p;->iw()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->mn()I

    move-result v7

    if-eq v7, v8, :cond_7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->mn()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/p;->dq()Z

    move-result v0

    if-nez v0, :cond_a

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->kk()Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_8

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v2, v5}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    :cond_8
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_9

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->s()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    :cond_9
    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v2

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->no:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, "If-None-Match"

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->iw:Ljava/util/Date;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->mn:Ljava/lang/String;

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p:Ljava/util/Date;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->s:Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/kx;->ox()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/cd;->d()Lcom/bytedance/sdk/component/ox/d/cd$dq;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {v3, v2, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd$dq;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->iw()Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v1

    :cond_d
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0

    :cond_e
    :goto_3
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0
.end method

.method private static dq(Lcom/bytedance/sdk/component/ox/d/kx;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private ox()J
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ig()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ox()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ox()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ia:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->o:J

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ia:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    return-wide v5

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->iw:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->kk:J

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->iw:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long/2addr v3, v0

    return-wide v3

    :cond_5
    return-wide v1
.end method

.method private p()J
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->p:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->o:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ig:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->o:J

    iget-wide v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->kk:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->dq:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ox:Lcom/bytedance/sdk/component/ox/d/bl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/bl;->ig()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p;->ox()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->ia:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d()Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    move-result-object v0

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/d/kx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox$dq;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/kx;->mn()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/p;->kk()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/bl;)V

    :cond_0
    return-object v0
.end method
