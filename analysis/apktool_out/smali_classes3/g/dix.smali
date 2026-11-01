.class public final Lg/dix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/gfm;Lg/dix;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dix;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dix;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/dix;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lg/dme;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dix;->b:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dix;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/dix;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 4

    iget p2, p0, Lg/dix;->b:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lg/dix;->a:Ljava/lang/Object;

    check-cast p2, Lg/dme;

    invoke-virtual {p2}, Lg/dme;->_au()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lg/clq;->ak(I)Lg/ghg;

    move-result-object p2

    iget p3, p2, Lg/ghg;->f:I

    rsub-int p3, p3, 0x2000

    int-to-long v0, p3

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object v0, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, p2, Lg/ghg;->c:[B

    iget v2, p2, Lg/ghg;->f:I

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    iget p3, p2, Lg/ghg;->e:I

    iget v0, p2, Lg/ghg;->f:I

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Lg/ghg;->i()Lg/ghg;

    move-result-object p3

    iput-object p3, p1, Lg/clq;->a:Lg/ghg;

    invoke-static {p2}, Lg/ip;->d(Lg/ghg;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_1
    iget v0, p2, Lg/ghg;->f:I

    add-int/2addr v0, p3

    iput v0, p2, Lg/ghg;->f:I

    iget-wide v0, p1, Lg/clq;->b:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p1, Lg/clq;->b:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-wide p1, p2

    :goto_1
    return-wide p1

    :goto_2
    invoke-static {p1}, Lg/baf;->ah(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    throw p1

    :pswitch_0
    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast p2, Lg/gfm;

    iget-object p3, p0, Lg/dix;->a:Ljava/lang/Object;

    check-cast p3, Lg/dix;

    invoke-virtual {p2}, Lg/boo;->l()V

    const-wide/16 v0, 0x2000

    :try_start_1
    invoke-virtual {p3, p1, v0, v1}, Lg/dix;->c(Lg/clq;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lg/boo;->m()Z

    move-result p1

    if-nez p1, :cond_3

    return-wide v0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lg/gfm;->w(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p2}, Lg/boo;->m()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Lg/gfm;->w(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {p2}, Lg/boo;->m()Z

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    iget v0, p0, Lg/dix;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast v0, Lg/gfm;

    iget-object v1, p0, Lg/dix;->a:Ljava/lang/Object;

    check-cast v1, Lg/dix;

    invoke-virtual {v0}, Lg/boo;->l()V

    :try_start_0
    invoke-virtual {v1}, Lg/dix;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/boo;->m()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gfm;->w(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lg/boo;->m()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lg/gfm;->w(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lg/boo;->m()Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lg/dme;
    .locals 1

    iget v0, p0, Lg/dix;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dix;->a:Ljava/lang/Object;

    check-cast v0, Lg/dme;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast v0, Lg/gfm;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/dix;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dix;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dix;->a:Ljava/lang/Object;

    check-cast v1, Lg/dix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
