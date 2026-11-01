.class public Lc/b/d;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Lg/dea;
    .locals 11

    const-string v0, "doWork getUpdate failure, code is "

    const-string v1, "doWork found count is "

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "doWork begin"

    invoke-static {v2, v3}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "op_accessed_time"

    invoke-static {v2, v5, v3, v4}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v5, v3, v4}, Lg/byh;->an(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v9, v3, v7

    if-gtz v9, :cond_0

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "doWork ignore1, lastAccessedTime is "

    const-string v2, ", diff is: "

    invoke-static {v5, v6, v1, v2}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/aif;

    invoke-direct {v0}, Lg/aif;-><init>()V

    return-object v0

    :cond_0
    invoke-static {v2}, Lg/hca;->e(Landroid/content/Context;)Lg/gez;

    move-result-object v3

    const/4 v10, 0x0

    if-nez v3, :cond_1

    new-instance v3, Lg/gez;

    invoke-direct {v3, v10}, Lg/gez;-><init>(Z)V

    :cond_1
    invoke-static {v2}, Lg/dtw;->c(Landroid/content/Context;)Lg/daw;

    move-result-object v4

    const-class v7, Lg/gbp;

    invoke-virtual {v4, v7}, Lg/daw;->r(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gbp;

    invoke-static {v2}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lg/gez;->e:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_2
    const-string v8, ","

    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-static {v2}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lg/gbp;->a(JLjava/lang/String;Ljava/lang/String;I)Lg/czh;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lg/czh;->c()Lg/anx;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lg/anx;->b:Ljava/lang/Object;

    check-cast v3, Lg/cbf;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lg/cbf;->getCode()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lg/cbf;->getData()Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lg/bn;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "c"

    invoke-virtual {v4}, Lg/bn;->getCount()I

    move-result v3

    invoke-static {v2, v3, v0}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/bn;->getCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "op_checked_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const/4 v10, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lg/cbf;->getCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg is"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lg/cbf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lg/bhr;

    invoke-direct {v0}, Lg/bhr;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doWork getUpdate exception, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "doWork sendBroadcast"

    invoke-static {v0, v1}, Lg/ffb;->bn(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "c.t.d.o.p.u"

    invoke-static {v2, v0}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    new-instance v0, Lg/aif;

    invoke-direct {v0}, Lg/aif;-><init>()V

    goto :goto_5

    :cond_7
    new-instance v0, Lg/bhr;

    invoke-direct {v0}, Lg/bhr;-><init>()V

    :goto_5
    return-object v0
.end method
