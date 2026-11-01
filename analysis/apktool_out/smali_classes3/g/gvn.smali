.class public final Lg/gvn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lg/day;

.field public final c:Lg/dsy;

.field public final d:Lg/ebo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/aby;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg/gvn;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lg/deb;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gvn;->c:Lg/dsy;

    new-instance v0, Lg/ebo;

    invoke-direct {v0, p1}, Lg/ebo;-><init>(Lg/dsy;)V

    iput-object v0, p0, Lg/gvn;->d:Lg/ebo;

    new-instance p1, Lg/day;

    invoke-direct {p1, v0}, Lg/day;-><init>(Lg/ebo;)V

    iput-object p1, p0, Lg/gvn;->b:Lg/day;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final e(Lg/dvj;III)V
    .locals 9

    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v0}, Lg/dsy;->readByte()B

    move-result v0

    sget-object v1, Lg/erq;->c:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v1}, Lg/dsy;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lg/fso;->z(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lg/gvn;->g(IIII)Ljava/util/List;

    move-result-object v7

    iget-object v5, p1, Lg/dvj;->b:Lg/ug;

    monitor-enter v5

    :try_start_0
    iget-object p1, v5, Lg/ug;->f:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/amc;->PROTOCOL_ERROR:Lg/amc;

    invoke-virtual {v5, v6, p1}, Lg/ug;->ai(ILg/amc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p1, v5, Lg/ug;->f:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    iget-object p1, v5, Lg/ug;->t:Lg/gfw;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v5, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x5b

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] onRequest"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lg/bge;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lg/bge;-><init>(Ljava/lang/String;Lg/ug;ILjava/lang/Object;I)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v3, p2, p3}, Lg/gfw;->l(Lg/fyg;J)V

    return-void

    :goto_1
    monitor-exit v5

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lg/dvj;II)V
    .locals 7

    const/16 v0, 0x8

    if-lt p2, v0, :cond_7

    if-nez p3, :cond_6

    iget-object p3, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {p3}, Lg/dsy;->readInt()I

    move-result p3

    iget-object v1, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v1}, Lg/dsy;->readInt()I

    move-result v1

    sub-int/2addr p2, v0

    sget-object v0, Lg/amc;->Companion:Lg/yy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/amc;->values()[Lg/amc;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lg/amc;->b()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    sget-object v0, Lg/gei;->n:Lg/gei;

    if-lez p2, :cond_2

    iget-object v0, p0, Lg/gvn;->c:Lg/dsy;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lg/dsy;->t(J)Lg/gei;

    move-result-object v0

    :cond_2
    const-string p2, "debugData"

    invoke-static {v0, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/gei;->d()I

    iget-object p2, p1, Lg/dvj;->b:Lg/ug;

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v3, [Lg/btb;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p2, Lg/ug;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast v0, [Lg/btb;

    array-length p2, v0

    :goto_2
    if-ge v3, p2, :cond_4

    aget-object v1, v0, v3

    iget v2, v1, Lg/btb;->g:I

    if-le v2, p3, :cond_3

    invoke-virtual {v1}, Lg/btb;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lg/amc;->REFUSED_STREAM:Lg/amc;

    invoke-virtual {v1, v2}, Lg/btb;->p(Lg/amc;)V

    iget-object v2, p1, Lg/dvj;->b:Lg/ug;

    iget v1, v1, Lg/btb;->g:I

    invoke-virtual {v2, v1}, Lg/ug;->ad(I)Lg/btb;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v1, p2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p3, "TYPE_GOAWAY length < 8: "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(IIII)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/gvn;->d:Lg/ebo;

    iput p1, v0, Lg/ebo;->d:I

    iput p1, v0, Lg/ebo;->g:I

    iput p2, v0, Lg/ebo;->h:I

    iput p3, v0, Lg/ebo;->a:I

    iput p4, v0, Lg/ebo;->b:I

    iget-object p1, p0, Lg/gvn;->b:Lg/day;

    iget-object p2, p1, Lg/day;->f:Lg/deb;

    iget-object p3, p1, Lg/day;->e:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lg/deb;->i()Z

    move-result p4

    if-nez p4, :cond_c

    invoke-virtual {p2}, Lg/deb;->readByte()B

    move-result p4

    sget-object v0, Lg/erq;->c:[B

    and-int/lit16 v0, p4, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_b

    and-int/lit16 v2, p4, 0x80

    if-ne v2, v1, :cond_3

    const/16 p4, 0x7f

    invoke-virtual {p1, v0, p4}, Lg/day;->i(II)I

    move-result p4

    add-int/lit8 v0, p4, -0x1

    if-ltz v0, :cond_1

    sget-object v1, Lg/bhe;->a:[Lg/heb;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    aget-object p4, v1, v0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lg/bhe;->a:[Lg/heb;

    array-length v1, v1

    sub-int/2addr v0, v1

    iget v1, p1, Lg/day;->b:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    iget-object v0, p1, Lg/day;->a:[Lg/heb;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object p4, v0, v1

    invoke-static {p4}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header index too large "

    invoke-static {p4, p2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    sget-object p4, Lg/bhe;->a:[Lg/heb;

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object p4

    invoke-static {p4}, Lg/bhe;->c(Lg/gei;)V

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object v0

    new-instance v1, Lg/heb;

    invoke-direct {v1, p4, v0}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    invoke-virtual {p1, v1}, Lg/day;->l(Lg/heb;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p4, 0x40

    if-ne v2, v1, :cond_5

    const/16 p4, 0x3f

    invoke-virtual {p1, v0, p4}, Lg/day;->i(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Lg/day;->k(I)Lg/gei;

    move-result-object p4

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object v0

    new-instance v1, Lg/heb;

    invoke-direct {v1, p4, v0}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    invoke-virtual {p1, v1}, Lg/day;->l(Lg/heb;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p4, p4, 0x20

    const/16 v1, 0x20

    if-ne p4, v1, :cond_8

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p4}, Lg/day;->i(II)I

    move-result p4

    iput p4, p1, Lg/day;->c:I

    if-ltz p4, :cond_7

    const/16 v0, 0x1000

    if-gt p4, v0, :cond_7

    iget v0, p1, Lg/day;->g:I

    if-ge p4, v0, :cond_0

    if-nez p4, :cond_6

    iget-object p4, p1, Lg/day;->a:[Lg/heb;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lg/fuv;->e([Ljava/lang/Object;Lg/hy;)V

    iget-object p4, p1, Lg/day;->a:[Lg/heb;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    iput p4, p1, Lg/day;->b:I

    const/4 p4, 0x0

    iput p4, p1, Lg/day;->d:I

    iput p4, p1, Lg/day;->g:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr v0, p4

    invoke-virtual {p1, v0}, Lg/day;->j(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lg/day;->c:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const/16 p4, 0x10

    if-eq v0, p4, :cond_a

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 p4, 0xf

    invoke-virtual {p1, v0, p4}, Lg/day;->i(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Lg/day;->k(I)Lg/gei;

    move-result-object p4

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object v0

    new-instance v1, Lg/heb;

    invoke-direct {v1, p4, v0}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p4, Lg/bhe;->a:[Lg/heb;

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object p4

    invoke-static {p4}, Lg/bhe;->c(Lg/gei;)V

    invoke-virtual {p1}, Lg/day;->h()Lg/gei;

    move-result-object v0

    new-instance v1, Lg/heb;

    invoke-direct {v1, p4, v0}, Lg/heb;-><init>(Lg/gei;Lg/gei;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p3}, Lg/gsv;->bf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final h(Lg/dvj;III)V
    .locals 9

    if-eqz p4, :cond_8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v0}, Lg/dsy;->readByte()B

    move-result v0

    sget-object v1, Lg/erq;->c:[B

    and-int/lit16 v1, v0, 0xff

    :cond_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v0}, Lg/dsy;->readInt()I

    invoke-interface {v0}, Lg/dsy;->readByte()B

    sget-object v0, Lg/erq;->c:[B

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v1}, Lg/fso;->z(III)I

    move-result p2

    invoke-virtual {p0, p2, v1, p3, p4}, Lg/gvn;->g(IIII)Ljava/util/List;

    move-result-object p2

    iget-object v5, p1, Lg/dvj;->b:Lg/ug;

    const-wide/16 v0, 0x0

    const/16 p1, 0x5b

    if-eqz p4, :cond_3

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, v5, Lg/ug;->t:Lg/gfw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onHeaders"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lg/bge;

    move v6, p4

    move v8, v7

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lg/bge;-><init>(Ljava/lang/String;Lg/ug;ILjava/util/List;Z)V

    invoke-virtual {p3, v3, v0, v1}, Lg/gfw;->l(Lg/fyg;J)V

    return-void

    :cond_3
    move v4, p4

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5, v4}, Lg/ug;->ab(I)Lg/btb;

    move-result-object p3

    if-nez p3, :cond_7

    iget-boolean p3, v5, Lg/ug;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    monitor-exit v5

    return-void

    :cond_4
    :try_start_1
    iget p3, v5, Lg/ug;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v4, p3, :cond_5

    monitor-exit v5

    return-void

    :cond_5
    :try_start_2
    rem-int/lit8 p4, v4, 0x2

    iget p3, v5, Lg/ug;->p:I

    rem-int/lit8 p3, p3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p4, p3, :cond_6

    monitor-exit v5

    return-void

    :cond_6
    :try_start_3
    invoke-static {p2}, Lg/erq;->q(Ljava/util/List;)Lg/dvq;

    move-result-object v8

    new-instance v3, Lg/btb;

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lg/btb;-><init>(ILg/ug;ZZLg/dvq;)V

    iput v4, v5, Lg/ug;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, v5, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v5, Lg/ug;->e:Lg/amr;

    invoke-virtual {p2}, Lg/amr;->l()Lg/gfw;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, v5, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onStream"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lg/fyc;

    invoke-direct {p3, v2, v5, v3, p1}, Lg/fyc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0, v1}, Lg/gfw;->l(Lg/fyg;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_7
    monitor-exit v5

    invoke-static {p2}, Lg/erq;->q(Ljava/util/List;)Lg/dvq;

    move-result-object p1

    invoke-virtual {p3, p1, v7}, Lg/btb;->w(Lg/dvq;Z)V

    return-void

    :goto_1
    monitor-exit v5

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(ZLg/dvj;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Lg/gvn;->c:Lg/dsy;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lg/dsy;->v(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v1, Lg/gvn;->c:Lg/dsy;

    invoke-static {v3}, Lg/erq;->u(Lg/dsy;)I

    move-result v3

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_20

    iget-object v5, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v5}, Lg/dsy;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v6}, Lg/dsy;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0xff

    iget-object v8, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v8}, Lg/dsy;->readInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int/2addr v9, v8

    sget-object v10, Lg/gvn;->a:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    invoke-static {v9, v3, v5, v7, v12}, Lg/aby;->e(IIIIZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v10, 0x4

    if-eqz p1, :cond_3

    if-ne v5, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected a SETTINGS frame but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lg/aby;->c:[Ljava/lang/String;

    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v2, v4, v5

    goto :goto_0

    :cond_2
    const-string v4, "0x%02x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v2

    invoke-static {v4, v6}, Lg/erq;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v11, 0x5

    const-wide/16 v13, 0x0

    packed-switch v5, :pswitch_data_0

    iget-object v0, v1, Lg/gvn;->c:Lg/dsy;

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Lg/dsy;->skip(J)V

    return v12

    :pswitch_0
    if-ne v3, v10, :cond_7

    iget-object v2, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v2}, Lg/dsy;->readInt()I

    move-result v2

    const-wide/32 v3, 0x7fffffff

    int-to-long v5, v2

    and-long/2addr v3, v5

    cmp-long v2, v3, v13

    if-eqz v2, :cond_6

    if-nez v9, :cond_4

    iget-object v2, v0, Lg/dvj;->b:Lg/ug;

    monitor-enter v2

    :try_start_1
    iget-wide v5, v2, Lg/ug;->m:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lg/ug;->m:J

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v12

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    iget-object v0, v0, Lg/dvj;->b:Lg/ug;

    invoke-virtual {v0, v9}, Lg/ug;->ab(I)Lg/btb;

    move-result-object v5

    if-eqz v5, :cond_1a

    monitor-enter v5

    :try_start_2
    iget-wide v6, v5, Lg/btb;->h:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lg/btb;->h:J

    if-lez v2, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit v5

    return v12

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v3, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v1, v0, v3, v9}, Lg/gvn;->f(Lg/dvj;II)V

    return v12

    :pswitch_2
    invoke-virtual {v1, v0, v3, v7, v9}, Lg/gvn;->k(Lg/dvj;III)V

    return v12

    :pswitch_3
    invoke-virtual {v1, v0, v3, v7, v9}, Lg/gvn;->e(Lg/dvj;III)V

    return v12

    :pswitch_4
    iget-object v5, v1, Lg/gvn;->c:Lg/dsy;

    if-nez v9, :cond_16

    and-int/2addr v6, v12

    if-eqz v6, :cond_9

    if-nez v3, :cond_8

    goto/16 :goto_6

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    rem-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_15

    new-instance v6, Lg/che;

    invoke-direct {v6}, Lg/che;-><init>()V

    invoke-static {v2, v3}, Lg/afo;->ah(II)Lg/gex;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lg/afo;->ap(Lg/gex;I)Lg/fqr;

    move-result-object v2

    iget v3, v2, Lg/fqr;->b:I

    iget v7, v2, Lg/fqr;->c:I

    iget v2, v2, Lg/fqr;->a:I

    const/4 v8, 0x2

    if-lez v2, :cond_a

    if-le v3, v7, :cond_b

    :cond_a
    if-gez v2, :cond_14

    if-gt v7, v3, :cond_14

    :cond_b
    :goto_2
    invoke-interface {v5}, Lg/dsy;->readShort()S

    move-result v9

    sget-object v15, Lg/erq;->c:[B

    const v15, 0xffff

    and-int/2addr v9, v15

    invoke-interface {v5}, Lg/dsy;->readInt()I

    move-result v15

    if-eq v9, v8, :cond_11

    const/4 v13, 0x3

    if-eq v9, v13, :cond_10

    if-eq v9, v10, :cond_e

    if-eq v9, v11, :cond_c

    goto :goto_3

    :cond_c
    if-lt v15, v4, :cond_d

    const v13, 0xffffff

    if-gt v15, v13, :cond_d

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v15, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-ltz v15, :cond_f

    const/4 v9, 0x7

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v9, 0x4

    goto :goto_3

    :cond_11
    if-eqz v15, :cond_13

    if-ne v15, v12, :cond_12

    goto :goto_3

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_3
    invoke-virtual {v6, v9, v15}, Lg/che;->e(II)V

    if-eq v3, v7, :cond_14

    add-int/2addr v3, v2

    const-wide/16 v13, 0x0

    goto :goto_2

    :cond_14
    iget-object v2, v0, Lg/dvj;->b:Lg/ug;

    iget-object v3, v2, Lg/ug;->b:Lg/gfw;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lg/ug;->j:Ljava/lang/String;

    const-string v5, " applyAndAckSettings"

    invoke-static {v4, v2, v5}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lg/fyc;

    invoke-direct {v4, v8, v0, v6, v2}, Lg/fyc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lg/gfw;->l(Lg/fyg;J)V

    return v12

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v3, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v3, v10, :cond_1d

    if-eqz v9, :cond_1c

    iget-object v3, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v3}, Lg/dsy;->readInt()I

    move-result v3

    sget-object v4, Lg/amc;->Companion:Lg/yy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/amc;->values()[Lg/amc;

    move-result-object v4

    array-length v5, v4

    :goto_4
    if-ge v2, v5, :cond_18

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lg/amc;->b()I

    move-result v7

    if-ne v7, v3, :cond_17

    goto :goto_5

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_1b

    iget-object v0, v0, Lg/dvj;->b:Lg/ug;

    if-eqz v9, :cond_19

    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_19

    iget-object v2, v0, Lg/ug;->t:Lg/gfw;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] onReset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/etb;

    invoke-direct {v4, v3, v0, v9, v6}, Lg/etb;-><init>(Ljava/lang/String;Lg/ug;ILg/amc;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lg/gfw;->l(Lg/fyg;J)V

    return v12

    :cond_19
    invoke-virtual {v0, v9}, Lg/ug;->ad(I)Lg/btb;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v6}, Lg/btb;->p(Lg/amc;)V

    :cond_1a
    :goto_6
    return v12

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v3, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v3, v2, v4}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-ne v3, v11, :cond_1f

    if-eqz v9, :cond_1e

    iget-object v0, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v0}, Lg/dsy;->readInt()I

    invoke-interface {v0}, Lg/dsy;->readByte()B

    return v12

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v3, v2, v4}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {v1, v0, v3, v7, v9}, Lg/gvn;->h(Lg/dvj;III)V

    return v12

    :pswitch_8
    invoke-virtual {v1, v0, v3, v7, v9}, Lg/gvn;->j(Lg/dvj;III)V

    return v12

    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v3, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lg/dvj;III)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v5, p4

    if-eqz v5, :cond_e

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_d

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v1, Lg/gvn;->c:Lg/dsy;

    invoke-interface {v3}, Lg/dsy;->readByte()B

    move-result v3

    sget-object v7, Lg/erq;->c:[B

    and-int/lit16 v3, v3, 0xff

    move v9, v3

    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :goto_2
    invoke-static {v3, v2, v9}, Lg/fso;->z(III)I

    move-result v7

    iget-object v2, v1, Lg/gvn;->c:Lg/dsy;

    const-string v3, "source"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, v0, Lg/dvj;->b:Lg/ug;

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    and-int/lit8 v12, v5, 0x1

    if-nez v12, :cond_2

    new-instance v6, Lg/clq;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    int-to-long v12, v7

    invoke-interface {v2, v12, v13}, Lg/dsy;->v(J)V

    invoke-interface {v2, v6, v12, v13}, Lg/cpv;->c(Lg/clq;J)J

    iget-object v0, v4, Lg/ug;->t:Lg/gfw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lg/dxq;

    invoke-direct/range {v2 .. v8}, Lg/dxq;-><init>(Ljava/lang/String;Lg/ug;ILg/clq;IZ)V

    invoke-virtual {v0, v2, v10, v11}, Lg/gfw;->l(Lg/fyg;J)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v4, v5}, Lg/ug;->ab(I)Lg/btb;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, v0, Lg/dvj;->b:Lg/ug;

    sget-object v4, Lg/amc;->PROTOCOL_ERROR:Lg/amc;

    invoke-virtual {v3, v5, v4}, Lg/ug;->ai(ILg/amc;)V

    iget-object v0, v0, Lg/dvj;->b:Lg/ug;

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, Lg/ug;->aa(J)V

    invoke-interface {v2, v3, v4}, Lg/dsy;->skip(J)V

    goto/16 :goto_9

    :cond_3
    sget-object v0, Lg/erq;->c:[B

    iget-object v0, v4, Lg/btb;->j:Lg/eoi;

    int-to-long v12, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v14, v12

    :goto_3
    cmp-long v5, v14, v10

    if-lez v5, :cond_b

    iget-object v5, v0, Lg/eoi;->h:Lg/btb;

    monitor-enter v5

    :try_start_0
    iget-boolean v7, v0, Lg/eoi;->g:Z

    iget-object v3, v0, Lg/eoi;->b:Lg/clq;

    move-wide/from16 v16, v10

    iget-wide v10, v3, Lg/clq;->b:J

    add-long/2addr v10, v14

    move/from16 p1, v7

    iget-wide v6, v0, Lg/eoi;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v18, v10, v6

    if-lez v18, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    monitor-exit v5

    if-eqz v6, :cond_5

    invoke-interface {v2, v14, v15}, Lg/dsy;->skip(J)V

    iget-object v0, v0, Lg/eoi;->h:Lg/btb;

    sget-object v2, Lg/amc;->FLOW_CONTROL_ERROR:Lg/amc;

    invoke-virtual {v0, v2}, Lg/btb;->r(Lg/amc;)V

    goto :goto_8

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {v2, v14, v15}, Lg/dsy;->skip(J)V

    goto :goto_8

    :cond_6
    iget-object v5, v0, Lg/eoi;->a:Lg/clq;

    invoke-interface {v2, v5, v14, v15}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v5

    const-wide/16 v10, -0x1

    cmp-long v7, v5, v10

    if-eqz v7, :cond_a

    sub-long/2addr v14, v5

    iget-object v5, v0, Lg/eoi;->h:Lg/btb;

    monitor-enter v5

    :try_start_1
    iget-boolean v6, v0, Lg/eoi;->d:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lg/eoi;->a:Lg/clq;

    invoke-virtual {v6}, Lg/clq;->aa()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v6, v0, Lg/eoi;->b:Lg/clq;

    iget-wide v10, v6, Lg/clq;->b:J

    cmp-long v7, v10, v16

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    iget-object v10, v0, Lg/eoi;->a:Lg/clq;

    invoke-virtual {v6, v10}, Lg/clq;->ae(Lg/cpv;)V

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_6
    monitor-exit v5

    move-wide/from16 v10, v16

    const/4 v3, 0x0

    goto :goto_3

    :goto_7
    monitor-exit v5

    throw v0

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_b
    invoke-virtual {v0, v12, v13}, Lg/eoi;->i(J)V

    :goto_8
    if-eqz v8, :cond_c

    sget-object v0, Lg/erq;->e:Lg/dvq;

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Lg/btb;->w(Lg/dvq;Z)V

    :cond_c
    :goto_9
    iget-object v0, v1, Lg/gvn;->c:Lg/dsy;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lg/dsy;->skip(J)V

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lg/dvj;III)V
    .locals 3

    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    if-nez p4, :cond_5

    iget-object p2, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {p2}, Lg/dsy;->readInt()I

    move-result p2

    iget-object p4, p0, Lg/gvn;->c:Lg/dsy;

    invoke-interface {p4}, Lg/dsy;->readInt()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    iget-object p1, p1, Lg/dvj;->b:Lg/ug;

    monitor-enter p1

    const-wide/16 p3, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_2
    iget-wide v0, p1, Lg/ug;->v:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lg/ug;->v:J

    goto :goto_1

    :cond_3
    iget-wide v0, p1, Lg/ug;->k:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lg/ug;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p2

    :cond_4
    iget-object p3, p1, Lg/dvj;->b:Lg/ug;

    iget-object p3, p3, Lg/ug;->b:Lg/gfw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lg/dvj;->b:Lg/ug;

    iget-object v1, v1, Lg/ug;->j:Ljava/lang/String;

    const-string v2, " ping"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lg/dvj;->b:Lg/ug;

    new-instance v1, Lg/ghv;

    invoke-direct {v1, v0, p1, p2, p4}, Lg/ghv;-><init>(Ljava/lang/String;Lg/ug;II)V

    const-wide/16 p1, 0x0

    invoke-virtual {p3, v1, p1, p2}, Lg/gfw;->l(Lg/fyg;J)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p3, "TYPE_PING length != 8: "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
