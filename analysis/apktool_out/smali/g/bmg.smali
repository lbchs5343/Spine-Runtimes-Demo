.class public final Lg/bmg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:[B

.field public static final c:[B


# instance fields
.field public final d:Lg/eie;

.field public final e:Ljava/nio/file/Path;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/bmg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/bmg;->a:Lg/dba;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lg/bmg;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lg/bmg;->c:[B

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x46t
        -0x42t
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lg/eie;Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lg/bmg;->f:I

    iput-object p1, p0, Lg/bmg;->d:Lg/eie;

    iput-object p2, p0, Lg/bmg;->e:Ljava/nio/file/Path;

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h([B[B)Z
    .locals 5

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final i(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    sget-object v2, Lg/bmg;->b:[B

    invoke-static {v1, v2}, Lg/bmg;->h([B[B)Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2000

    const/4 v5, 0x0

    if-nez v2, :cond_7

    const-string v2, ".class"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    sget-object v0, Lg/bmg;->c:[B

    invoke-static {v1, v0}, Lg/bmg;->h([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lg/exb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0, p3, p2}, Lg/bmg;->k(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p3, Lg/exb;->a:Lg/dba;

    new-array p3, v5, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p3}, Lg/cch;->f([Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p3

    :try_start_0
    new-array v0, v5, [Ljava/nio/file/OpenOption;

    invoke-static {p3, v0}, Lg/cch;->t(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-array v1, v4, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p3}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    invoke-static {p4, p2}, Lg/bmg;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lg/bmg;->k(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    sget-object p4, Lg/exb;->a:Lg/dba;

    const-string v0, "Failed to delete file: {}"

    invoke-interface {p4, p1, v0, p3}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_5
    :try_start_4
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Failed to save temp file"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    :goto_4
    sget-object p3, Lg/exb;->a:Lg/dba;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p3

    add-int/2addr p3, v0

    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-array p3, v4, [B

    :goto_5
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    invoke-static {p4, p2}, Lg/bmg;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lg/bpt;

    iget p4, p0, Lg/bmg;->f:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lg/bmg;->f:I

    invoke-direct {p3, p2, p4, p1}, Lg/bpt;-><init>(Ljava/lang/String;I[B)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_8
    :try_start_a
    invoke-virtual {v0, p3, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :goto_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Failed to read input stream to bytes array"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j(Ljava/lang/String;[BLjava/lang/String;)Ljava/util/List;
    .locals 4

    sget-object v0, Lg/bmg;->b:[B

    invoke-static {p2, v0}, Lg/bmg;->h([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lg/bmg;->c:[B

    invoke-static {p2, v0}, Lg/bmg;->h([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lg/exb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/bmg;->e:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Lg/bnl;->c(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v2, Lg/bqu;->c:Lg/dba;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lg/cnf;->t(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lg/cnf;->y(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {}, Lg/cnf;->x()Ljava/nio/file/StandardOpenOption;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Lg/cnf;->h()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    invoke-static {}, Lg/cnf;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, p2, v2}, Lg/cnf;->o(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V

    invoke-static {v0}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p2

    invoke-static {p3, p1}, Lg/bmg;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg/bmg;->k(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p3, Lg/exb;->a:Lg/dba;

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    sget-object v0, Lg/exb;->a:Lg/dba;

    const-string v1, "Failed to delete file: {}"

    invoke-interface {v0, p2, v1, p3}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_1
    invoke-static {p3, p1}, Lg/bmg;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lg/bpt;

    iget v0, p0, Lg/bmg;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/bmg;->f:I

    invoke-direct {p3, p1, v0, p2}, Lg/bpt;-><init>(Ljava/lang/String;I[B)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    sget-object v0, Lg/bmg;->a:Lg/dba;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lg/bmg;->d:Lg/eie;

    invoke-virtual {v2, p1}, Lg/eie;->k(Ljava/io/File;)Lg/eqm;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p1, Lg/eqm;->d:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ffs;

    invoke-interface {v3}, Lg/ffs;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/versions/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v3}, Lg/ffs;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lg/ffs;->e()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5, p2}, Lg/bmg;->j(Ljava/lang/String;[BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lg/ffs;->g()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v6, p2}, Lg/bmg;->i(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_3
    const-string v5, "Failed to read zip entry: {}"

    invoke-interface {v0, v3, v5, v4}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lg/eqm;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_5

    :goto_3
    if-eqz p1, :cond_4

    :try_start_5
    invoke-virtual {p1}, Lg/eqm;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    const-string v2, "Failed to process zip file: {}"

    invoke-interface {v0, p2, v2, p1}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-object v1
.end method
