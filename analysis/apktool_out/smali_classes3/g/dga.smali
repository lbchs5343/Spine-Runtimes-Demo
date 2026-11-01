.class public final Lg/dga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/axn;


# static fields
.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/List;


# instance fields
.field public volatile k:Lg/btb;

.field public final l:Lg/aqt;

.field public final m:Lg/gba;

.field public volatile n:Z

.field public final o:Lg/dpe;

.field public final p:Lg/ug;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/erq;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/dga;->j:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/erq;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/dga;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lg/fys;Lg/gba;Lg/dpe;Lg/ug;)V
    .locals 1

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dga;->m:Lg/gba;

    iput-object p3, p0, Lg/dga;->o:Lg/dpe;

    iput-object p4, p0, Lg/dga;->p:Lg/ug;

    iget-object p1, p1, Lg/fys;->o:Ljava/util/List;

    sget-object p2, Lg/aqt;->H2_PRIOR_KNOWLEDGE:Lg/aqt;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lg/aqt;->HTTP_2:Lg/aqt;

    :goto_0
    iput-object p2, p0, Lg/dga;->l:Lg/aqt;

    return-void
.end method


# virtual methods
.method public final a(Lg/enb;)Lg/cpv;
    .locals 0

    iget-object p1, p0, Lg/dga;->k:Lg/btb;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Lg/btb;->j:Lg/eoi;

    return-object p1
.end method

.method public final b()Lg/gba;
    .locals 1

    iget-object v0, p0, Lg/dga;->m:Lg/gba;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lg/dga;->p:Lg/ug;

    invoke-virtual {v0}, Lg/ug;->flush()V

    return-void
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dga;->n:Z

    iget-object v0, p0, Lg/dga;->k:Lg/btb;

    if-eqz v0, :cond_0

    sget-object v1, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {v0, v1}, Lg/btb;->r(Lg/amc;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lg/dga;->k:Lg/btb;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/btb;->y()Lg/kx;

    move-result-object v0

    invoke-virtual {v0}, Lg/kx;->close()V

    return-void
.end method

.method public final e(Lg/daw;)V
    .locals 14

    iget-object v0, p0, Lg/dga;->k:Lg/btb;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lg/daw;->b:Ljava/lang/Object;

    check-cast v0, Lg/sz;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lg/daw;->a:Ljava/lang/Object;

    check-cast v3, Lg/dvq;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lg/dvq;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lg/heb;

    sget-object v6, Lg/heb;->d:Lg/gei;

    iget-object v7, p1, Lg/daw;->f:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lg/heb;-><init>(Lg/gei;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lg/heb;

    sget-object v6, Lg/heb;->f:Lg/gei;

    iget-object v7, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast v7, Lg/eyn;

    const-string v8, "url"

    invoke-static {v7, v8}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lg/eyn;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lg/eyn;->m()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-direct {v5, v6, v8}, Lg/heb;-><init>(Lg/gei;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    iget-object p1, p1, Lg/daw;->a:Ljava/lang/Object;

    check-cast p1, Lg/dvq;

    invoke-virtual {p1, v5}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v5, Lg/heb;

    sget-object v6, Lg/heb;->e:Lg/gei;

    invoke-direct {v5, v6, p1}, Lg/heb;-><init>(Lg/gei;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lg/heb;

    sget-object v5, Lg/heb;->a:Lg/gei;

    iget-object v6, v7, Lg/eyn;->e:Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lg/heb;-><init>(Lg/gei;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lg/dvq;->size()I

    move-result p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_6

    invoke-virtual {v3, v5}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "US"

    invoke-static {v7, v8}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lg/dga;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lg/heb;

    invoke-virtual {v3, v5}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lg/heb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lg/dga;->p:Lg/ug;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v9, v0, 0x1

    iget-object p1, v8, Lg/ug;->w:Lg/djf;

    monitor-enter p1

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v8, Lg/ug;->p:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v3, v5, :cond_7

    sget-object v3, Lg/amc;->REFUSED_STREAM:Lg/amc;

    invoke-virtual {v8, v3}, Lg/ug;->aj(Lg/amc;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-boolean v3, v8, Lg/ug;->z:Z

    if-nez v3, :cond_d

    iget v7, v8, Lg/ug;->p:I

    add-int/lit8 v3, v7, 0x2

    iput v3, v8, Lg/ug;->p:I

    new-instance v6, Lg/btb;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lg/btb;-><init>(ILg/ug;ZZLg/dvq;)V

    if-eqz v0, :cond_8

    iget-wide v10, v8, Lg/ug;->d:J

    iget-wide v12, v8, Lg/ug;->m:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_8

    iget-wide v10, v6, Lg/btb;->f:J

    iget-wide v12, v6, Lg/btb;->h:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v6}, Lg/btb;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    monitor-exit v8

    iget-object v0, v8, Lg/ug;->w:Lg/djf;

    invoke-virtual {v0, v9, v7, v4}, Lg/djf;->j(ZILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    if-eqz v1, :cond_b

    iget-object p1, v8, Lg/ug;->w:Lg/djf;

    invoke-virtual {p1}, Lg/djf;->flush()V

    :cond_b
    iput-object v6, p0, Lg/dga;->k:Lg/btb;

    iget-boolean p1, p0, Lg/dga;->n:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lg/dga;->k:Lg/btb;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Lg/btb;->b:Lg/vz;

    iget-object v0, p0, Lg/dga;->o:Lg/dpe;

    iget v0, v0, Lg/dpe;->i:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lg/dme;->_av(J)Lg/dme;

    iget-object p1, p0, Lg/dga;->k:Lg/btb;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Lg/btb;->e:Lg/vz;

    iget-object v0, p0, Lg/dga;->o:Lg/dpe;

    iget v0, v0, Lg/dpe;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/dme;->_av(J)Lg/dme;

    return-void

    :cond_c
    iget-object p1, p0, Lg/dga;->k:Lg/btb;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    sget-object v0, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {p1, v0}, Lg/btb;->r(Lg/amc;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_d
    :try_start_3
    new-instance v0, Lg/fhb;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v8

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit p1

    throw v0
.end method

.method public final f(Lg/enb;)J
    .locals 2

    invoke-static {p1}, Lg/fyd;->a(Lg/enb;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lg/erq;->z(Lg/enb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Z)Lg/hdt;
    .locals 11

    iget-object v0, p0, Lg/dga;->k:Lg/btb;

    if-eqz v0, :cond_8

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lg/btb;->b:Lg/vz;

    invoke-virtual {v1}, Lg/boo;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v1, v0, Lg/btb;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/btb;->i:Lg/amc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :try_start_4
    iget-object v1, v0, Lg/btb;->b:Lg/vz;

    invoke-virtual {v1}, Lg/vz;->b()V

    iget-object v1, v0, Lg/btb;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lg/btb;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "headersQueue.removeFirst()"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lg/dvq;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lg/dga;->l:Lg/aqt;

    const-string v2, "protocol"

    invoke-static {v0, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lg/dvq;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v1, v6}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    invoke-static {v8, v10}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HTTP/1.1 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lg/awt;->x(Ljava/lang/String;)Lg/dsg;

    move-result-object v7

    goto :goto_2

    :cond_1
    sget-object v10, Lg/dga;->i:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "name"

    invoke-static {v8, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_5

    new-instance v1, Lg/hdt;

    invoke-direct {v1}, Lg/hdt;-><init>()V

    iput-object v0, v1, Lg/hdt;->j:Lg/aqt;

    iget v0, v7, Lg/dsg;->d:I

    iput v0, v1, Lg/hdt;->l:I

    iget-object v0, v7, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lg/hdt;->c:Ljava/lang/String;

    new-instance v0, Lg/dvq;

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v0, v2}, Lg/dvq;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lg/hdt;->p(Lg/dvq;)V

    if-eqz p1, :cond_4

    iget p1, v1, Lg/hdt;->l:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    return-object v4

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_6
    :try_start_5
    iget-object p1, v0, Lg/btb;->c:Ljava/io/IOException;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lg/gts;

    iget-object v1, v0, Lg/btb;->i:Lg/amc;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lg/gts;-><init>(Lg/amc;)V

    :goto_3
    throw p1

    :goto_4
    iget-object v1, v0, Lg/btb;->b:Lg/vz;

    invoke-virtual {v1}, Lg/vz;->b()V

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream wasn\'t created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lg/daw;J)Lg/evq;
    .locals 0

    iget-object p1, p0, Lg/dga;->k:Lg/btb;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg/btb;->y()Lg/kx;

    move-result-object p1

    return-object p1
.end method
