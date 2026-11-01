.class public final Lg/fys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lg/eyd;


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;


# instance fields
.field public final aa:Ljava/net/ProxySelector;

.field public final ab:Z

.field public final c:Z

.field public final d:Ljavax/net/ssl/SSLSocketFactory;

.field public final e:Lg/gvr;

.field public final f:Lg/bfy;

.field public final g:I

.field public final h:Lg/aky;

.field public final i:Ljavax/net/SocketFactory;

.field public final j:Lg/ao;

.field public final k:Ljava/util/List;

.field public final l:Lg/dfw;

.field public final m:Lg/fvd;

.field public final n:Lg/bws;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Lg/bco;

.field public final r:Ljava/util/List;

.field public final s:Lg/cop;

.field public final t:Lg/aoy;

.field public final u:I

.field public final v:Z

.field public final w:Lg/fc;

.field public final x:Lg/bfy;

.field public final y:I

.field public final z:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lg/aqt;

    sget-object v2, Lg/aqt;->HTTP_2:Lg/aqt;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/aqt;->HTTP_1_1:Lg/aqt;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lg/erq;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lg/fys;->b:Ljava/util/List;

    new-array v0, v0, [Lg/ezm;

    sget-object v1, Lg/ezm;->a:Lg/ezm;

    aput-object v1, v0, v3

    sget-object v1, Lg/ezm;->b:Lg/ezm;

    aput-object v1, v0, v4

    invoke-static {v0}, Lg/erq;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/fys;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lg/gjb;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/gjb;->h:Lg/cop;

    iput-object v0, p0, Lg/fys;->s:Lg/cop;

    iget-object v0, p1, Lg/gjb;->o:Lg/fc;

    iput-object v0, p0, Lg/fys;->w:Lg/fc;

    iget-object v0, p1, Lg/gjb;->s:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/erq;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/fys;->k:Ljava/util/List;

    iget-object v0, p1, Lg/gjb;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/erq;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/fys;->p:Ljava/util/List;

    iget-object v0, p1, Lg/gjb;->g:Lg/bco;

    iput-object v0, p0, Lg/fys;->q:Lg/bco;

    iget-boolean v0, p1, Lg/gjb;->j:Z

    iput-boolean v0, p0, Lg/fys;->ab:Z

    iget-object v0, p1, Lg/gjb;->t:Lg/bfy;

    iput-object v0, p0, Lg/fys;->f:Lg/bfy;

    iget-boolean v0, p1, Lg/gjb;->a:Z

    iput-boolean v0, p0, Lg/fys;->c:Z

    iget-boolean v0, p1, Lg/gjb;->n:Z

    iput-boolean v0, p0, Lg/fys;->v:Z

    iget-object v0, p1, Lg/gjb;->p:Lg/ao;

    iput-object v0, p0, Lg/fys;->j:Lg/ao;

    iget-object v0, p1, Lg/gjb;->b:Lg/fvd;

    iput-object v0, p0, Lg/fys;->m:Lg/fvd;

    iget-object v0, p1, Lg/gjb;->f:Lg/dfw;

    iput-object v0, p0, Lg/fys;->l:Lg/dfw;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lg/dwd;->a:Lg/dwd;

    :cond_0
    iput-object v0, p0, Lg/fys;->aa:Ljava/net/ProxySelector;

    iget-object v0, p1, Lg/gjb;->m:Lg/bfy;

    iput-object v0, p0, Lg/fys;->x:Lg/bfy;

    iget-object v0, p1, Lg/gjb;->d:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lg/fys;->i:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lg/gjb;->c:Ljava/util/List;

    iput-object v0, p0, Lg/fys;->r:Ljava/util/List;

    iget-object v1, p1, Lg/gjb;->l:Ljava/util/List;

    iput-object v1, p0, Lg/fys;->o:Ljava/util/List;

    iget-object v1, p1, Lg/gjb;->q:Lg/gvr;

    iput-object v1, p0, Lg/fys;->e:Lg/gvr;

    iget v1, p1, Lg/gjb;->k:I

    iput v1, p0, Lg/fys;->y:I

    iget v1, p1, Lg/gjb;->r:I

    iput v1, p0, Lg/fys;->u:I

    iget v1, p1, Lg/gjb;->i:I

    iput v1, p0, Lg/fys;->g:I

    new-instance v1, Lg/aoy;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lg/aoy;-><init>(I)V

    iput-object v1, p0, Lg/fys;->t:Lg/aoy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ezm;

    iget-boolean v2, v2, Lg/ezm;->d:Z

    if-eqz v2, :cond_2

    sget-object v0, Lg/bop;->h:Lg/bop;

    sget-object v0, Lg/bop;->h:Lg/bop;

    invoke-virtual {v0}, Lg/bop;->g()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lg/fys;->z:Ljavax/net/ssl/X509TrustManager;

    sget-object v2, Lg/bop;->h:Lg/bop;

    invoke-virtual {v2, v0}, Lg/bop;->e(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lg/fys;->d:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v2, Lg/bop;->h:Lg/bop;

    invoke-virtual {v2, v0}, Lg/bop;->n(Ljavax/net/ssl/X509TrustManager;)Lg/aky;

    move-result-object v0

    iput-object v0, p0, Lg/fys;->h:Lg/aky;

    iget-object p1, p1, Lg/gjb;->u:Lg/bws;

    iget-object v2, p1, Lg/bws;->c:Lg/aky;

    invoke-static {v2, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lg/bws;

    iget-object p1, p1, Lg/bws;->b:Ljava/util/Set;

    invoke-direct {v2, p1, v0}, Lg/bws;-><init>(Ljava/util/Set;Lg/aky;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lg/fys;->n:Lg/bws;

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v1, p0, Lg/fys;->d:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lg/fys;->h:Lg/aky;

    iput-object v1, p0, Lg/fys;->z:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lg/bws;->a:Lg/bws;

    iput-object p1, p0, Lg/fys;->n:Lg/bws;

    :goto_2
    iget-object p1, p0, Lg/fys;->z:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p0, Lg/fys;->h:Lg/aky;

    iget-object v2, p0, Lg/fys;->d:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lg/fys;->p:Ljava/util/List;

    iget-object v4, p0, Lg/fys;->k:Ljava/util/List;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {v4, v5}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v3, v5}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lg/fys;->r:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ezm;

    iget-boolean v3, v3, Lg/ezm;->d:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    const-string v1, "Check failed."

    if-nez v2, :cond_e

    if-nez v0, :cond_d

    if-nez p1, :cond_c

    iget-object p1, p0, Lg/fys;->n:Lg/bws;

    sget-object v0, Lg/bws;->a:Lg/bws;

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null network interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
