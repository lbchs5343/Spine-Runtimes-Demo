.class public final Lg/dam;
.super Lg/gsp;
.source "SourceFile"


# instance fields
.field public final a:Lg/evf;

.field public final b:Lg/yk;


# direct methods
.method public constructor <init>(Lg/evf;Lg/yk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dam;->a:Lg/evf;

    iput-object p2, p0, Lg/dam;->b:Lg/yk;

    return-void
.end method


# virtual methods
.method public final c(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lg/fpu;)Z
    .locals 1

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lg/fpu;I)Lg/fkn;
    .locals 18

    move-object/from16 v0, p0

    if-eqz p2, :cond_3

    sget-object v1, Lg/sy;->OFFLINE:Lg/sy;

    iget v1, v1, Lg/sy;->index:I

    and-int v1, p2, v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/bjl;->a:Lg/bjl;

    goto :goto_2

    :cond_0
    sget-object v1, Lg/sy;->NO_CACHE:Lg/sy;

    iget v1, v1, Lg/sy;->index:I

    and-int v1, p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    sget-object v1, Lg/sy;->NO_STORE:Lg/sy;

    iget v1, v1, Lg/sy;->index:I

    and-int v1, p2, v1

    if-nez v1, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    new-instance v4, Lg/bjl;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v17}, Lg/bjl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Lg/fzn;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lg/fzn;-><init>(I)V

    move-object/from16 v3, p1

    iget-object v3, v3, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/fzn;->z(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lg/bjl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Cache-Control"

    if-nez v3, :cond_4

    iget-object v1, v2, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v1, Lg/ais;

    invoke-virtual {v1, v4}, Lg/ais;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v4, v1}, Lg/fzn;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {v2}, Lg/fzn;->x()Lg/daw;

    move-result-object v1

    iget-object v2, v0, Lg/dam;->a:Lg/evf;

    iget-object v2, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Lg/fys;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg/ib;

    invoke-direct {v3, v2, v1}, Lg/ib;-><init>(Lg/fys;Lg/daw;)V

    invoke-virtual {v3}, Lg/ib;->t()Lg/enb;

    move-result-object v1

    iget-object v2, v1, Lg/enb;->b:Lg/ehi;

    invoke-virtual {v1}, Lg/enb;->p()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, v1, Lg/enb;->j:Lg/enb;

    if-nez v1, :cond_6

    sget-object v1, Lg/gye;->NETWORK:Lg/gye;

    goto :goto_4

    :cond_6
    sget-object v1, Lg/gye;->DISK:Lg/gye;

    :goto_4
    sget-object v3, Lg/gye;->DISK:Lg/gye;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_8

    invoke-virtual {v2}, Lg/ehi;->d()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lg/ehi;->close()V

    new-instance v1, Lg/clp;

    const-string v2, "Received response with 0 content-length header."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    sget-object v3, Lg/gye;->NETWORK:Lg/gye;

    if-ne v1, v3, :cond_9

    invoke-virtual {v2}, Lg/ehi;->d()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_9

    invoke-virtual {v2}, Lg/ehi;->d()J

    move-result-wide v3

    iget-object v5, v0, Lg/dam;->b:Lg/yk;

    iget-object v5, v5, Lg/yk;->j:Lg/eqi;

    const/4 v6, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    new-instance v3, Lg/fkn;

    invoke-virtual {v2}, Lg/ehi;->c()Lg/dsy;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lg/fkn;-><init>(Lg/cpv;Lg/gye;)V

    return-object v3

    :cond_a
    invoke-virtual {v2}, Lg/ehi;->close()V

    new-instance v2, Lg/atg;

    iget v1, v1, Lg/enb;->g:I

    invoke-direct {v2, v1}, Lg/atg;-><init>(I)V

    throw v2
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
