.class abstract Lcom/bytedance/embedapplog/r;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field final dq:Lcom/bytedance/embedapplog/le;

.field private ox:Z

.field private volatile p:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/le;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/r;->d:I

    iput-object p1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    return-void
.end method


# virtual methods
.method public abstract d()[J
.end method

.method public abstract dq()J
.end method

.method public ia()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setImmediately, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/r;->p:Z

    return-void
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/r;->ox:Z

    return v0
.end method

.method public final mn()J
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->dq()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/bytedance/embedapplog/r;->p:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/bytedance/embedapplog/r;->p:Z

    const-wide/16 v0, 0x0

    :cond_0
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->ox()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput v5, p0, Lcom/bytedance/embedapplog/r;->d:I

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->dq()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->d()[J

    move-result-object v1

    iget v2, p0, Lcom/bytedance/embedapplog/r;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bytedance/embedapplog/r;->d:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    move-wide v1, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/r;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " worked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/jo;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v1

    :cond_2
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract ox()Z
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/r;->ox:Z

    return-void
.end method
