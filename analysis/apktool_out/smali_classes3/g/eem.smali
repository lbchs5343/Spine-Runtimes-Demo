.class public final Lg/eem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dxs;

.field public static final b:Lg/btd;

.field public static final c:Lg/dxs;


# instance fields
.field public final d:Lg/ant;

.field public final e:Lg/qd;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/ThreadLocal;

.field public final h:Z

.field public final i:Lj$/util/concurrent/ConcurrentHashMap;

.field public final j:Lg/ja;

.field public final k:Lg/btd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/btd;->a:Lg/btd;

    sput-object v0, Lg/eem;->b:Lg/btd;

    sget-object v0, Lg/dxs;->DOUBLE:Lg/dxs;

    sput-object v0, Lg/eem;->c:Lg/dxs;

    sget-object v0, Lg/dxs;->LAZILY_PARSED_NUMBER:Lg/dxs;

    sput-object v0, Lg/eem;->a:Lg/dxs;

    return-void
.end method

.method public constructor <init>(Lg/ehe;Lg/fvw;Ljava/util/HashMap;ZLg/btd;Lg/ant;ZLg/dng;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lg/dxs;Lg/dxs;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/lang/ThreadLocal;

    invoke-direct {p9}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p9, p0, Lg/eem;->g:Ljava/lang/ThreadLocal;

    new-instance p9, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p9}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p9, p0, Lg/eem;->i:Lj$/util/concurrent/ConcurrentHashMap;

    move-object p9, p3

    move-object p3, p2

    new-instance p2, Lg/ja;

    invoke-direct {p2, p9, p7, p14}, Lg/ja;-><init>(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    iput-object p2, p0, Lg/eem;->j:Lg/ja;

    iput-boolean p4, p0, Lg/eem;->h:Z

    iput-object p5, p0, Lg/eem;->k:Lg/btd;

    iput-object p6, p0, Lg/eem;->d:Lg/ant;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lg/foc;->a:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/dxs;->DOUBLE:Lg/dxs;

    if-ne p12, p4, :cond_0

    sget-object p4, Lg/cvg;->b:Lg/rt;

    goto :goto_0

    :cond_0
    sget-object p4, Lg/cvg;->b:Lg/rt;

    new-instance p4, Lg/rt;

    invoke-direct {p4, p12}, Lg/rt;-><init>(Lg/dxs;)V

    :goto_0
    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lg/foc;->p:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->z:Lg/dap;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->g:Lg/dap;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->i:Lg/dap;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->n:Lg/dap;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/dng;->DEFAULT:Lg/dng;

    if-ne p8, p4, :cond_1

    sget-object p4, Lg/foc;->c:Lg/fjm;

    goto :goto_1

    :cond_1
    new-instance p4, Lg/qn;

    invoke-direct {p4}, Lg/qn;-><init>()V

    :goto_1
    new-instance p5, Lg/dap;

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Long;

    invoke-direct {p5, p6, p8, p4}, Lg/dap;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg/bke;)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lg/atb;

    const/4 p6, 0x1

    invoke-direct {p5, p6}, Lg/atb;-><init>(I)V

    new-instance p8, Lg/dap;

    sget-object p9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p10, Ljava/lang/Double;

    invoke-direct {p8, p9, p10, p5}, Lg/dap;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg/bke;)V

    invoke-virtual {p7, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lg/atb;

    const/4 p8, 0x2

    invoke-direct {p5, p8}, Lg/atb;-><init>(I)V

    new-instance p9, Lg/dap;

    sget-object p10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p11, Ljava/lang/Float;

    invoke-direct {p9, p10, p11, p5}, Lg/dap;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg/bke;)V

    invoke-virtual {p7, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lg/dxs;->LAZILY_PARSED_NUMBER:Lg/dxs;

    const/4 p9, 0x0

    if-ne p13, p5, :cond_2

    sget-object p5, Lg/atb;->b:Lg/bqd;

    goto :goto_2

    :cond_2
    new-instance p5, Lg/atb;

    invoke-direct {p5, p9}, Lg/atb;-><init>(I)V

    new-instance p10, Lg/bqd;

    invoke-direct {p10, p5, p9}, Lg/bqd;-><init>(Lg/bke;I)V

    move-object p5, p10

    :goto_2
    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lg/foc;->b:Lg/eam;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lg/foc;->r:Lg/eam;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lg/agf;

    invoke-direct {p5, p4, p9}, Lg/agf;-><init>(Lg/bke;I)V

    new-instance p10, Lg/agf;

    invoke-direct {p10, p5, p8}, Lg/agf;-><init>(Lg/bke;I)V

    new-instance p5, Lg/eam;

    const-class p11, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, p11, p10, p9}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lg/agf;

    invoke-direct {p5, p4, p6}, Lg/agf;-><init>(Lg/bke;I)V

    new-instance p4, Lg/agf;

    invoke-direct {p4, p5, p8}, Lg/agf;-><init>(Lg/bke;I)V

    new-instance p5, Lg/eam;

    const-class p8, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p5, p8, p4, p9}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->t:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->h:Lg/dap;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->u:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->aa:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->q:Lg/avg;

    new-instance p5, Lg/eam;

    const-class p8, Ljava/math/BigDecimal;

    invoke-direct {p5, p8, p4, p9}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->f:Lg/cqn;

    new-instance p5, Lg/eam;

    const-class p8, Ljava/math/BigInteger;

    invoke-direct {p5, p8, p4, p9}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->d:Lg/dca;

    new-instance p5, Lg/eam;

    const-class p8, Lg/adf;

    invoke-direct {p5, p8, p4, p9}, Lg/eam;-><init>(Ljava/lang/Class;Lg/bke;I)V

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->o:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->w:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->l:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->m:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->e:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->k:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->s:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/fcf;->b:Lg/bzc;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->y:Lg/bqd;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p4, Lg/ehv;->c:Z

    if-eqz p4, :cond_3

    sget-object p4, Lg/ehv;->b:Lg/dfg$a;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/ehv;->a:Lg/gir$a;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/ehv;->d:Lg/gep;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p4, Lg/cql;->b:Lg/gxq;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->j:Lg/eam;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lg/bkj;

    invoke-direct {p4, p2, p9}, Lg/bkj;-><init>(Lg/ja;I)V

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lg/bkj;

    invoke-direct {p4, p2, p6}, Lg/bkj;-><init>(Lg/ja;I)V

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lg/qd;

    invoke-direct {p5, p2}, Lg/qd;-><init>(Lg/ja;)V

    iput-object p5, p0, Lg/eem;->e:Lg/qd;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lg/foc;->v:Lg/bzd;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, p1

    new-instance p1, Lg/s;

    move-object p6, p14

    invoke-direct/range {p1 .. p6}, Lg/s;-><init>(Lg/ja;Lg/fvw;Lg/ehe;Lg/qd;Ljava/util/ArrayList;)V

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/eem;->f:Ljava/util/List;

    return-void
.end method

.method public static l(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ljava/lang/Class;Lg/fwg;)V
    .locals 5

    const-string v0, "AssertionError (GSON 2.11.0): "

    new-instance v1, Lg/ri;

    invoke-direct {v1, p2}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object p2

    iget-object v1, p3, Lg/fwg;->d:Lg/ant;

    iget-object v2, p0, Lg/eem;->d:Lg/ant;

    if-eqz v2, :cond_0

    iput-object v2, p3, Lg/fwg;->d:Lg/ant;

    goto :goto_0

    :cond_0
    sget-object v2, Lg/ant;->LEGACY_STRICT:Lg/ant;

    if-ne v1, v2, :cond_1

    sget-object v2, Lg/ant;->LENIENT:Lg/ant;

    invoke-virtual {p3, v2}, Lg/fwg;->r(Lg/ant;)V

    :cond_1
    :goto_0
    iget-boolean v2, p3, Lg/fwg;->l:Z

    iget-boolean v3, p3, Lg/fwg;->h:Z

    iget-boolean v4, p0, Lg/eem;->h:Z

    iput-boolean v4, p3, Lg/fwg;->l:Z

    const/4 v4, 0x0

    iput-boolean v4, p3, Lg/fwg;->h:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lg/fwg;->r(Lg/ant;)V

    iput-boolean v2, p3, Lg/fwg;->l:Z

    iput-boolean v3, p3, Lg/fwg;->h:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lg/gyr;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p3, v1}, Lg/fwg;->r(Lg/ant;)V

    iput-boolean v2, p3, Lg/fwg;->l:Z

    iput-boolean v3, p3, Lg/fwg;->h:Z

    throw p1
.end method

.method public final n(Lg/ri;)Lg/bke;
    .locals 8

    iget-object v0, p0, Lg/eem;->i:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bke;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lg/eem;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bke;

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lg/cez;

    invoke-direct {v4}, Lg/cez;-><init>()V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lg/eem;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dsb;

    invoke-interface {v6, p0, p1}, Lg/dsb;->j(Lg/eem;Lg/ri;)Lg/bke;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v5, v4, Lg/cez;->c:Lg/bke;

    if-nez v5, :cond_4

    iput-object v6, v4, Lg/cez;->c:Lg/bke;

    invoke-interface {v2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Delegate is already set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v6

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON (2.11.0) cannot handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_9
    throw p1
.end method

.method public final o(Ljava/io/Writer;)Lg/fwg;
    .locals 1

    new-instance v0, Lg/fwg;

    invoke-direct {v0, p1}, Lg/fwg;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lg/eem;->k:Lg/btd;

    invoke-virtual {v0, p1}, Lg/fwg;->v(Lg/btd;)V

    iget-boolean p1, p0, Lg/eem;->h:Z

    iput-boolean p1, v0, Lg/fwg;->l:Z

    iget-object p1, p0, Lg/eem;->d:Lg/ant;

    if-nez p1, :cond_0

    sget-object p1, Lg/ant;->LEGACY_STRICT:Lg/ant;

    :cond_0
    invoke-virtual {v0, p1}, Lg/fwg;->r(Lg/ant;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/fwg;->h:Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:false,factories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eem;->j:Lg/ja;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
