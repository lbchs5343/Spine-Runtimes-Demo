.class Lcom/bytedance/embedapplog/wp;
.super Lcom/bytedance/embedapplog/r;


# static fields
.field private static final d:[J


# instance fields
.field private ox:J

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/32 v1, 0xea60

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sput-object v0, Lcom/bytedance/embedapplog/wp;->d:[J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/le;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/r;-><init>(Lcom/bytedance/embedapplog/le;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/wp;->p:Z

    return-void
.end method

.method private dq(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->ox()Lcom/bytedance/embedapplog/vw;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/vw;->dq()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/embedapplog/fd;

    iget-object v7, v6, Lcom/bytedance/embedapplog/fd;->ig:[B

    if-eqz v7, :cond_6

    array-length v7, v7

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v7, p0, Lcom/bytedance/embedapplog/wp;->p:Z

    const/16 v8, 0xc8

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v7}, Lcom/bytedance/embedapplog/le;->d()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v10}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/bytedance/embedapplog/v;->dq(Lcom/bytedance/embedapplog/le;Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v7

    iget-object v9, v6, Lcom/bytedance/embedapplog/fd;->ig:[B

    invoke-static {v7, v9, v3}, Lcom/bytedance/embedapplog/yy;->dq([Ljava/lang/String;[BLcom/bytedance/embedapplog/u;)I

    move-result v7

    goto :goto_1

    :cond_3
    const/16 v7, 0xc8

    :goto_1
    invoke-static {v7}, Lcom/bytedance/embedapplog/yy;->dq(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v7, v6, Lcom/bytedance/embedapplog/fd;->q:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-ne v7, v8, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iput v7, v6, Lcom/bytedance/embedapplog/fd;->q:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    :cond_8
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/wp;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/jo;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public d()[J
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/wp;->d:[J

    return-object v0
.end method

.method public dq()J
    .locals 7

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->wp()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    move-wide v0, v2

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Lcom/bytedance/embedapplog/wp;->d:[J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    iget-wide v2, p0, Lcom/bytedance/embedapplog/wp;->ox:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/wp;->p:Z

    return-void
.end method

.method public ox()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/le;->mn()Lcom/bytedance/embedapplog/e;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/bytedance/embedapplog/e;->dq(JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "play_session"

    invoke-static {v1, v0, v3}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->ox()Lcom/bytedance/embedapplog/vw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->no()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/embedapplog/yo;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/wp;->dq(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/wp;->ox:J

    return v3

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_2
    return v4
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "s"

    return-object v0
.end method
