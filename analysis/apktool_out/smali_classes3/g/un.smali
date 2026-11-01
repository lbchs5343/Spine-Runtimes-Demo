.class public final Lg/un;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Lg/czl;

.field public final d:Lg/aqt;

.field public final e:I

.field public final f:Lg/eyn;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:Lg/dvq;

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:Lg/dvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/bop;->h:Lg/bop;

    sget-object v0, Lg/bop;->h:Lg/bop;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Lg/un;->a:Ljava/lang/String;

    sget-object v0, Lg/bop;->h:Lg/bop;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lg/un;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/cpv;)V
    .locals 11

    const-string v0, "Cache corruption for "

    const-string v1, "rawSource"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lg/ke;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lg/ke;-><init>(I)V

    invoke-virtual {v6, v5, v4}, Lg/ke;->m(Lg/eyn;Ljava/lang/String;)V

    invoke-virtual {v6}, Lg/ke;->n()Lg/eyn;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    nop

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_7

    :try_start_2
    iput-object v6, p0, Lg/un;->f:Lg/eyn;

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/un;->k:Ljava/lang/String;

    new-instance v0, Lg/ais;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lg/ais;-><init>(I)V

    invoke-static {v1}, Lg/buj;->ad(Lg/deb;)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lg/ais;->g(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lg/ais;->d()Lg/dvq;

    move-result-object v0

    iput-object v0, p0, Lg/un;->i:Lg/dvq;

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/awt;->x(Ljava/lang/String;)Lg/dsg;

    move-result-object v0

    iget-object v6, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v6, Lg/aqt;

    iput-object v6, p0, Lg/un;->d:Lg/aqt;

    iget v6, v0, Lg/dsg;->d:I

    iput v6, p0, Lg/un;->e:I

    iget-object v0, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lg/un;->g:Ljava/lang/String;

    new-instance v0, Lg/ais;

    invoke-direct {v0, v4}, Lg/ais;-><init>(I)V

    invoke-static {v1}, Lg/buj;->ad(Lg/deb;)I

    move-result v6

    :goto_2
    if-ge v4, v6, :cond_1

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lg/ais;->g(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    sget-object v4, Lg/un;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lg/ais;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lg/un;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lg/ais;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Lg/ais;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lg/ais;->b(Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_3

    :cond_2
    move-wide v6, v9

    :goto_3
    iput-wide v6, p0, Lg/un;->h:J

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_3
    iput-wide v9, p0, Lg/un;->j:J

    invoke-virtual {v0}, Lg/ais;->d()Lg/dvq;

    move-result-object v0

    iput-object v0, p0, Lg/un;->l:Lg/dvq;

    iget-object v0, p0, Lg/un;->f:Lg/eyn;

    iget-object v0, v0, Lg/eyn;->e:Ljava/lang/String;

    const-string v4, "https"

    invoke-static {v0, v4}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lg/bos;->m:Lg/ao;

    invoke-virtual {v4, v0}, Lg/ao;->al(Ljava/lang/String;)Lg/bos;

    move-result-object v0

    invoke-static {v1}, Lg/un;->m(Lg/deb;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lg/un;->m(Lg/deb;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lg/deb;->i()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lg/gdk;->Companion:Lg/bap;

    invoke-virtual {v1, v2, v3}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg/bap;->a(Ljava/lang/String;)Lg/gdk;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget-object v1, Lg/gdk;->SSL_3_0:Lg/gdk;

    :goto_4
    const-string v2, "tlsVersion"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg/erq;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lg/czl;

    invoke-static {v5}, Lg/erq;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lg/acz;

    invoke-direct {v5, v2}, Lg/acz;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v1, v0, v4, v5}, Lg/czl;-><init>(Lg/gdk;Lg/bos;Ljava/util/List;Lg/cvw;)V

    iput-object v3, p0, Lg/un;->c:Lg/czl;

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iput-object v5, p0, Lg/un;->c:Lg/czl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void

    :cond_7
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lg/bop;->h:Lg/bop;

    sget-object v0, Lg/bop;->h:Lg/bop;

    const-string v2, "cache corruption"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    invoke-static {v0, v2, v1}, Lg/bop;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lg/enb;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/enb;->i:Lg/daw;

    iget-object v1, v0, Lg/daw;->e:Ljava/lang/Object;

    check-cast v1, Lg/eyn;

    iput-object v1, p0, Lg/un;->f:Lg/eyn;

    iget-object v1, p1, Lg/enb;->a:Lg/enb;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v1, v1, Lg/enb;->i:Lg/daw;

    iget-object v1, v1, Lg/daw;->a:Ljava/lang/Object;

    check-cast v1, Lg/dvq;

    iget-object v2, p1, Lg/enb;->n:Lg/dvq;

    invoke-static {v2}, Lg/buj;->o(Lg/dvq;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lg/erq;->e:Lg/dvq;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lg/dvq;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-virtual {v1, v7}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v1, v7}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v8, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lg/dyd;->bn(Ljava/lang/String;)V

    invoke-static {v9, v8}, Lg/dyd;->al(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lg/dvq;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lg/dvq;-><init>([Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lg/un;->i:Lg/dvq;

    iget-object v0, v0, Lg/daw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lg/un;->k:Ljava/lang/String;

    iget-object v0, p1, Lg/enb;->k:Lg/aqt;

    iput-object v0, p0, Lg/un;->d:Lg/aqt;

    iget v0, p1, Lg/enb;->g:I

    iput v0, p0, Lg/un;->e:I

    iget-object v0, p1, Lg/enb;->d:Ljava/lang/String;

    iput-object v0, p0, Lg/un;->g:Ljava/lang/String;

    iput-object v2, p0, Lg/un;->l:Lg/dvq;

    iget-object v0, p1, Lg/enb;->h:Lg/czl;

    iput-object v0, p0, Lg/un;->c:Lg/czl;

    iget-wide v0, p1, Lg/enb;->f:J

    iput-wide v0, p0, Lg/un;->h:J

    iget-wide v0, p1, Lg/enb;->e:J

    iput-wide v0, p0, Lg/un;->j:J

    return-void
.end method

.method public static m(Lg/deb;)Ljava/util/List;
    .locals 8

    invoke-static {p0}, Lg/buj;->ad(Lg/deb;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lg/fai;->a:Lg/fai;

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {p0, v5, v6}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lg/clq;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lg/gei;->n:Lg/gei;

    invoke-static {v5}, Lg/dwm;->ad(Ljava/lang/String;)Lg/gei;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Lg/clq;->o(Lg/gei;)V

    new-instance v5, Lg/wd;

    invoke-direct {v5, v6, v3}, Lg/wd;-><init>(Lg/dsy;I)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupt certificate in cache entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(Lg/ago;Ljava/util/List;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lg/ago;->l(J)Lg/cbs;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    sget-object v2, Lg/gei;->n:Lg/gei;

    const-string v2, "bytes"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lg/dwm;->ae([B)Lg/gei;

    move-result-object v1

    invoke-virtual {v1}, Lg/gei;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p0, v0}, Lg/ago;->writeByte(I)Lg/cbs;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final o(Lg/abv;)V
    .locals 11

    iget-object v0, p0, Lg/un;->f:Lg/eyn;

    iget-object v1, p0, Lg/un;->c:Lg/czl;

    iget-object v2, p0, Lg/un;->l:Lg/dvq;

    iget-object v3, p0, Lg/un;->i:Lg/dvq;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lg/abv;->e(I)Lg/evq;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object p1

    :try_start_0
    iget-object v5, v0, Lg/eyn;->g:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object v6, p0, Lg/un;->k:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v3}, Lg/dvq;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v6, v7}, Lg/ago;->l(J)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v3}, Lg/dvq;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_0
    const-string v8, ": "

    if-ge v7, v6, :cond_0

    :try_start_1
    invoke-virtual {v3, v7}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v8}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v3, v7}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    invoke-interface {p1, v5}, Lg/cbs;->writeByte(I)Lg/cbs;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lg/un;->d:Lg/aqt;

    iget v6, p0, Lg/un;->e:I

    iget-object v7, p0, Lg/un;->g:Ljava/lang/String;

    const-string v9, "protocol"

    invoke-static {v3, v9}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "message"

    invoke-static {v7, v9}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lg/aqt;->HTTP_1_0:Lg/aqt;

    if-ne v3, v10, :cond_1

    const-string v3, "HTTP/1.0"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "HTTP/1.1"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v2}, Lg/dvq;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-virtual {p1, v6, v7}, Lg/ago;->l(J)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v2}, Lg/dvq;->size()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v8}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v2, v4}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    invoke-interface {p1, v5}, Lg/cbs;->writeByte(I)Lg/cbs;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Lg/un;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v8}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    iget-wide v2, p0, Lg/un;->h:J

    invoke-interface {p1, v2, v3}, Lg/cbs;->l(J)Lg/cbs;

    invoke-interface {p1, v5}, Lg/cbs;->writeByte(I)Lg/cbs;

    sget-object v2, Lg/un;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v8}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    iget-wide v2, p0, Lg/un;->j:J

    invoke-interface {p1, v2, v3}, Lg/cbs;->l(J)Lg/cbs;

    invoke-interface {p1, v5}, Lg/cbs;->writeByte(I)Lg/cbs;

    iget-object v0, v0, Lg/eyn;->e:Ljava/lang/String;

    const-string v2, "https"

    invoke-static {v0, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v0, v1, Lg/czl;->c:Lg/bos;

    iget-object v0, v0, Lg/bos;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v1}, Lg/czl;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lg/un;->n(Lg/ago;Ljava/util/List;)V

    iget-object v0, v1, Lg/czl;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lg/un;->n(Lg/ago;Ljava/util/List;)V

    iget-object v0, v1, Lg/czl;->b:Lg/gdk;

    invoke-virtual {v0}, Lg/gdk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {p1}, Lg/ago;->close()V

    return-void

    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
