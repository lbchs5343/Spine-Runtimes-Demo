.class public final Lg/fwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/blx;


# static fields
.field public static final b:Lg/dba;


# instance fields
.field public c:Ljava/nio/channels/FileChannel;

.field public d:Ljava/io/RandomAccessFile;

.field public e:I

.field public final f:Lg/ctk;

.field public g:Lg/eqm;

.field public final h:Ljava/util/Set;

.field public final i:Z

.field public final j:Ljava/io/File;

.field public k:Ljava/nio/ByteBuffer;

.field public final l:Lg/fdy;

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fwt;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fwt;->b:Lg/dba;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lg/fdy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lg/fwt;->e:I

    iput-object p1, p0, Lg/fwt;->j:Ljava/io/File;

    iput-object p2, p0, Lg/fwt;->l:Lg/fdy;

    iget-object p1, p2, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lg/ctk;

    iput-object p1, p0, Lg/fwt;->f:Lg/ctk;

    iget-object p2, p2, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lg/fwt;->h:Ljava/util/Set;

    sget-object v0, Lg/evu;->REPORT_TAMPERING:Lg/evu;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lg/fwt;->i:Z

    invoke-interface {p1}, Lg/ctk;->bw()Z

    move-result p1

    iput-boolean p1, p0, Lg/fwt;->m:Z

    return-void
.end method

.method public static n(Lg/cht;)V
    .locals 6

    iget v0, p0, Lg/cht;->k:I

    iget-wide v1, p0, Lg/cht;->l:J

    sget-object v3, Lg/fwt;->b:Lg/dba;

    if-nez v0, :cond_0

    iget-wide v4, p0, Lg/cht;->i:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string p0, "Not equal sizes for STORE method: compressed: {}, uncompressed: {}, entry: {}"

    invoke-interface {v3, p0, v2}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const-string v1, "Unknown compress method: {} in entry: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v1, p0}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lg/eqm;
    .locals 5

    iget-object v0, p0, Lg/fwt;->h:Ljava/util/Set;

    invoke-virtual {p0}, Lg/fwt;->p()V

    :try_start_0
    iget-object v1, p0, Lg/fwt;->f:Lg/ctk;

    invoke-interface {v1}, Lg/ctk;->bx()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7fffffff

    :cond_0
    sget-object v2, Lg/evu;->IGNORE_CENTRAL_DIR_ENTRIES:Lg/evu;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lg/fwt;->o(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lg/fwt;->r(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    new-instance v2, Lg/eqm;

    invoke-direct {v2, p0, v1}, Lg/eqm;-><init>(Lg/blx;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    sget-object v2, Lg/evu;->DONT_USE_FALLBACK:Lg/evu;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lg/fwt;->j:Ljava/io/File;

    if-nez v0, :cond_2

    sget-object v0, Lg/fwt;->b:Lg/dba;

    const-string v3, "Zip open failed, switching to fallback parser, zip: {}"

    invoke-interface {v0, v2, v3, v1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg/fwt;->u()Lg/eqm;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open zip: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg/fwt;->c:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    iget-object v2, p0, Lg/fwt;->g:Lg/eqm;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/eqm;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-object v1, p0, Lg/fwt;->c:Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iput v0, p0, Lg/fwt;->e:I

    iput-object v1, p0, Lg/fwt;->g:Lg/eqm;

    return-void

    :goto_1
    iput-object v1, p0, Lg/fwt;->c:Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iput v0, p0, Lg/fwt;->e:I

    iput-object v1, p0, Lg/fwt;->g:Lg/eqm;

    throw v2
.end method

.method public final o(I)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    const/4 v5, -0x1

    if-le v3, v4, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0x4034b50

    if-ne v3, v4, :cond_1

    :goto_1
    if-ne v2, v5, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0, v2}, Lg/fwt;->q(I)Lg/cht;

    move-result-object v1

    iget-object v2, p0, Lg/fwt;->f:Lg/ctk;

    invoke-interface {v2, v1}, Lg/ctk;->bv(Lg/ffs;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v3, Lg/fwt;->b:Lg/dba;

    const-string v4, "Zip entry \'{}\' is invalid and excluded from processing"

    invoke-interface {v3, v1, v4}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Max entries count limit exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()V
    .locals 7

    iget-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lg/fwt;->j:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    long-to-int v1, v0

    const/high16 v0, 0x6400000

    if-ge v1, v0, :cond_1

    new-array v0, v1, [B

    iget-object v1, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fwt;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lg/fwt;->c:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Zip file is too big"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(I)Lg/cht;
    .locals 13

    iget-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int v8, v1, v2

    add-int/lit8 v1, p1, 0x12

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    and-int/2addr v2, v5

    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v6, v5

    new-instance v5, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    add-int/lit8 v6, p1, 0x1e

    add-int/2addr v6, v4

    add-int v7, v6, v2

    add-int v2, v7, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v3

    new-instance v3, Lg/cht;

    int-to-long v9, v1

    int-to-long v11, v0

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v12}, Lg/cht;-><init>(Lg/fwt;Ljava/lang/String;IIIJJ)V

    return-object v3
.end method

.method public final r(I)Ljava/util/ArrayList;
    .locals 23

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lg/fwt;->v()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v2, v1, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0xa

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const v10, 0xffff

    and-int v11, v3, v10

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move/from16 v3, p1

    if-gt v11, v3, :cond_a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_9

    iget-object v15, v1, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v0, v3, 0x1c

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v10

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int/2addr v2, v10

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v10

    add-int/lit8 v5, v3, 0x2a

    invoke-virtual {v15, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v6, v3, 0x2e

    add-int/2addr v6, v0

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    invoke-virtual {v1, v5}, Lg/fwt;->q(I)Lg/cht;

    move-result-object v0

    iget-wide v4, v0, Lg/cht;->i:J

    iget-wide v7, v0, Lg/cht;->l:J

    iget v2, v0, Lg/cht;->k:I

    iget-boolean v9, v1, Lg/fwt;->i:Z

    const v16, 0xffff

    sget-object v10, Lg/fwt;->b:Lg/dba;

    if-eqz v9, :cond_2

    add-int/lit8 v9, v3, 0xa

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    and-int v9, v9, v16

    const/16 v17, 0x2

    const/16 p1, 0x0

    const/4 v13, 0x3

    const/16 v18, 0x1

    if-eq v9, v2, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v2

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, p1

    aput-object v19, v2, v18

    aput-object v0, v2, v17

    const-string v9, "Compression method differ in CD {} and LFH {} for {}"

    invoke-interface {v10, v9, v2}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v3, 0x14

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    move/from16 v19, v14

    int-to-long v13, v2

    cmp-long v20, v13, v4

    if-eqz v20, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v20, v2

    const/4 v14, 0x3

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v20, v2, p1

    aput-object v13, v2, v18

    aput-object v0, v2, v17

    const-string v13, "Compressed size differ in CD {} and LFH {} for {}"

    invoke-interface {v10, v13, v2}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    int-to-long v13, v9

    cmp-long v2, v13, v7

    if-eqz v2, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x3

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v2, v13, p1

    aput-object v9, v13, v18

    aput-object v0, v13, v17

    const-string v2, "Uncompressed size differ in CD {} and LFH {} for {}"

    invoke-interface {v10, v2, v13}, Lg/dba;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move/from16 v19, v14

    const/16 p1, 0x0

    :cond_3
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v2, v4, v13

    if-gtz v2, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v2, v7, v13

    if-gtz v2, :cond_5

    goto :goto_2

    :cond_5
    cmp-long v2, v4, v7

    if-gtz v2, :cond_6

    move v13, v6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v2, v1, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0xa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int v5, v4, v16

    add-int/lit8 v4, v3, 0x14

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v7, Lg/cht;

    iget-object v8, v0, Lg/cht;->j:Ljava/lang/String;

    iget v0, v0, Lg/cht;->b:I

    int-to-long v13, v4

    move v4, v0

    int-to-long v0, v2

    move-object v2, v8

    move-wide v8, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-wide/from16 v21, v13

    move v13, v6

    move-wide/from16 v6, v21

    invoke-direct/range {v0 .. v9}, Lg/cht;-><init>(Lg/fwt;Ljava/lang/String;IIIJJ)V

    :goto_3
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lg/fwt;->f:Lg/ctk;

    invoke-interface {v2, v0}, Lg/ctk;->bv(Lg/ffs;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v3, "Zip entry \'{}\' is invalid and excluded from processing"

    invoke-interface {v10, v0, v3}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v14, v19, 0x1

    const v10, 0xffff

    goto/16 :goto_0

    :cond_9
    return-object v12

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Max entries count limit exceeded: "

    invoke-static {v11, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "End of central directory not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Lg/cht;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iget v1, p1, Lg/cht;->a:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fwt;->h:Ljava/util/Set;

    sget-object v1, Lg/evu;->DONT_USE_FALLBACK:Lg/evu;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lg/fwt;->b:Lg/dba;

    const-string v1, "Entry \'{}\' parse failed, switching to fallback parser"

    invoke-interface {v0, p1, v1, p2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decompress zip entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry is encrypted, failed to decompress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final t(Lg/cht;)Lg/ffs;
    .locals 3

    sget-object v0, Lg/fwt;->b:Lg/dba;

    const-string v1, "useFallbackParser used for {}"

    invoke-interface {v0, p1, v1}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fwt;->u()Lg/eqm;

    move-result-object v0

    iget-object v1, p1, Lg/cht;->j:Ljava/lang/String;

    iget-object v0, v0, Lg/eqm;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ffs;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fallback parser can\'t find entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JadxZipParser{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fwt;->j:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lg/eqm;
    .locals 5

    iget-object v0, p0, Lg/fwt;->j:Ljava/io/File;

    iget-object v1, p0, Lg/fwt;->g:Lg/eqm;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lg/fzz;

    iget-object v2, p0, Lg/fwt;->l:Lg/fdy;

    invoke-direct {v1, v0, v2}, Lg/fzz;-><init>(Ljava/io/File;Lg/fdy;)V

    invoke-virtual {v1}, Lg/fzz;->a()Lg/eqm;

    move-result-object v1

    iput-object v1, p0, Lg/fwt;->g:Lg/eqm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fallback parser failed to open file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/fwt;->g:Lg/eqm;

    return-object v0
.end method

.method public final v()I
    .locals 5

    iget v0, p0, Lg/fwt;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    add-int/lit8 v2, v1, -0x16

    const v3, 0x10015

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0x6054b50

    if-ne v3, v4, :cond_1

    iput v2, p0, Lg/fwt;->e:I

    return v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of central directory record not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
