.class public final Lg/cqv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static final b:Lg/dba;


# instance fields
.field public final c:Lg/gez;

.field public d:Lg/eie;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cqv;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cqv;->b:Lg/dba;

    const/4 v0, 0x1

    sput v0, Lg/cqv;->a:I

    return-void
.end method

.method public constructor <init>(Lg/gez;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eie;

    new-instance v1, Lg/fdy;

    new-instance v2, Lg/ahh;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-class v3, Lg/evu;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v4, v3}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cqv;->d:Lg/eie;

    iput-object p1, p0, Lg/cqv;->c:Lg/gez;

    return-void
.end method

.method public static e([B[B)Z
    .locals 5

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final f(Ljava/lang/String;[B)Ljava/util/List;
    .locals 5

    const/16 v0, 0x24

    invoke-static {v0, p2}, Lg/acw;->ac(I[B)I

    move-result v0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-static {v0, p2}, Lg/acw;->ac(I[B)I

    move-result v0

    const/16 v1, 0x70

    invoke-static {v1, p2}, Lg/acw;->ac(I[B)I

    move-result v1

    const/16 v2, 0x74

    invoke-static {v2, p2}, Lg/acw;->ac(I[B)I

    new-instance v2, Lg/aot;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lg/aot;-><init>(III)V

    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, v0, Lg/aot;->b:I

    iget v0, v0, Lg/aot;->c:I

    array-length v3, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v2, v0, :cond_1

    invoke-static {v3}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/oe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lg/oe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    add-int/lit8 v1, v2, 0x20

    invoke-static {v1, p2}, Lg/acw;->ac(I[B)I

    move-result v1

    add-int/2addr v1, v2

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lg/cqv;->g(Ljava/lang/String;I[B)Lg/eyc;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;I[B)Lg/eyc;
    .locals 5

    iget-object v0, p0, Lg/cqv;->c:Lg/gez;

    iget-boolean v0, v0, Lg/gez;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x20

    add-int/lit8 v2, p2, 0x24

    array-length v3, p3

    if-gt v2, v3, :cond_2

    invoke-static {v0, p3}, Lg/acw;->ac(I[B)I

    move-result v0

    add-int v2, p2, v0

    array-length v3, p3

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x8

    invoke-static {v2, p3}, Lg/acw;->ac(I[B)I

    move-result v2

    new-instance v3, Ljava/util/zip/Adler32;

    invoke-direct {v3}, Ljava/util/zip/Adler32;-><init>()V

    add-int/lit8 v4, p2, 0xc

    add-int/lit8 v0, v0, -0xc

    invoke-virtual {v3, p3, v4, v0}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v3

    long-to-int v0, v3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/beo;

    const-string p3, "Bad dex file checksum: 0x%08x, expected: 0x%08x, file: %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Lg/beo;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Dex file truncated, length in header: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Lg/beo;

    const-string p3, "Dex file truncated, can\'t read file length, file: "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    new-instance v0, Lg/eyc;

    const-class v2, Lg/cqv;

    monitor-enter v2

    :try_start_0
    sget v3, Lg/cqv;->a:I

    add-int/2addr v3, v1

    sput v3, Lg/cqv;->a:I

    const v4, 0xffff

    if-lt v3, v4, :cond_4

    sput v1, Lg/cqv;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    sget v1, Lg/cqv;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-direct {v0, p1, p3, v1, p2}, Lg/eyc;-><init>(Ljava/lang/String;[BII)V

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 8

    sget-object v0, Lg/cqv;->b:Lg/dba;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lg/cqv;->d:Lg/eie;

    invoke-virtual {v2, p1}, Lg/eie;->k(Ljava/io/File;)Lg/eqm;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, v2, Lg/eqm;->d:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ffs;

    invoke-interface {v4}, Lg/ffs;->isDirectory()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v4}, Lg/ffs;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lg/ffs;->e()[B

    move-result-object v5

    invoke-interface {v4}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lg/cux;->s:[B

    invoke-static {v5, v7}, Lg/cqv;->e([B[B)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v6, v5}, Lg/cqv;->f(Ljava/lang/String;[B)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    :cond_4
    invoke-interface {v4}, Lg/ffs;->g()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {v4}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5, v6}, Lg/cqv;->i(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_3
    :try_start_3
    const-string v6, "Failed to read zip entry: {}"

    invoke-interface {v0, v4, v6, v5}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lg/eqm;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v2

    goto :goto_6

    :goto_4
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Lg/eqm;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    const-string v3, "Failed to process zip file: {}"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3, v2}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    return-object v1
.end method

.method public final i(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    :goto_0
    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    sget-object v0, Lg/cux;->s:[B

    invoke-static {v1, v0}, Lg/cqv;->e([B[B)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lg/cqv;->f(Ljava/lang/String;[B)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_2
    :try_start_2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    const-string v0, ".dex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lg/bqu;->h([B)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v4, Lg/cqv;->b:Lg/dba;

    const-string v5, "Invalid DEX magic: 0x{}(\"{}\") in file: {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    invoke-interface {v4, v5, v6}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_6

    sget-object v0, Lg/cux;->u:[B

    invoke-static {v1, v0}, Lg/cqv;->e([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Lg/exb;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lg/cqv;->h(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_6
    :try_start_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1

    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method
