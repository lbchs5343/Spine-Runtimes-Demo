.class abstract Lcom/bytedance/pangle/g/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/g/g$b;,
        Lcom/bytedance/pangle/g/g$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/bytedance/pangle/g/g;->a:[B

    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/g/m;Lcom/bytedance/pangle/g/i;)Lcom/bytedance/pangle/g/g$a;
    .locals 21

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/bytedance/pangle/g/m;->c:J

    iget-wide v3, v0, Lcom/bytedance/pangle/g/m;->b:J

    sub-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/bytedance/pangle/g/g;->a(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    add-int/lit16 v2, v1, 0x1000

    move-object/from16 v4, p2

    invoke-interface {v4, v2}, Lcom/bytedance/pangle/g/i;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-static {v4, v6, v1}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v8, v1, 0x40

    invoke-static {v4, v1, v8}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v4, v8, v2}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v9, 0x20

    new-array v9, v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v11, v0, Lcom/bytedance/pangle/g/m;->b:J

    const-wide/16 v13, 0x1000

    rem-long v15, v11, v13

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_5

    move-wide v15, v13

    iget-wide v13, v0, Lcom/bytedance/pangle/g/m;->c:J

    sub-long v19, v13, v11

    rem-long v19, v19, v15

    cmp-long v15, v19, v17

    if-nez v15, :cond_4

    sub-long/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Lcom/bytedance/pangle/g/g;->a(J)[I

    move-result-object v11

    if-eqz v7, :cond_0

    sget-object v12, Lcom/bytedance/pangle/g/g;->a:[B

    move-object/from16 v15, p0

    invoke-static {v15, v0, v12, v11, v7}, Lcom/bytedance/pangle/g/g;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/g/m;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    sget-object v12, Lcom/bytedance/pangle/g/g;->a:[B

    array-length v15, v12

    const/16 v7, 0x8

    if-ne v15, v7, :cond_1

    const-string v7, "TrueBrew"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v6, 0x16

    invoke-static {v1, v6}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt is not 8 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v5, v0, Lcom/bytedance/pangle/g/m;->b:J

    iget-wide v0, v0, Lcom/bytedance/pangle/g/m;->d:J

    const/16 v7, 0x18

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    invoke-static {v2, v7}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-static {v2, v7}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;I)V

    const-wide/16 v10, 0x10

    add-long/2addr v0, v10

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-static {v5, v6}, Lcom/bytedance/pangle/g/g;->c(J)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x44

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/bytedance/pangle/g/g$a;

    invoke-direct {v0, v4, v9}, Lcom/bytedance/pangle/g/g$a;-><init>(Ljava/nio/ByteBuffer;[B)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/bytedance/pangle/g/m;->c:J

    iget-wide v5, v0, Lcom/bytedance/pangle/g/m;->b:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APK Signing Block does not start at the page  boundary: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/bytedance/pangle/g/m;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/pangle/g/j;Lcom/bytedance/pangle/g/k;I)V
    .locals 8

    invoke-interface {p1}, Lcom/bytedance/pangle/g/k;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    int-to-long v6, p2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-interface {p1, p0, v4, v5, v7}, Lcom/bytedance/pangle/g/k;->a(Lcom/bytedance/pangle/g/j;JI)V

    int-to-long v6, v7

    add-long/2addr v4, v6

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/g/m;[B[ILjava/nio/ByteBuffer;)[B
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget v4, v2, v4

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    invoke-static {v3, v4, v5}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Lcom/bytedance/pangle/g/g$b;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v6}, Lcom/bytedance/pangle/g/g$b;-><init>([BLjava/nio/ByteBuffer;B)V

    new-instance v7, Lcom/bytedance/pangle/g/l;

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/bytedance/pangle/g/m;->b:J

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/pangle/g/l;-><init>(Ljava/io/FileDescriptor;JJ)V

    const/high16 v4, 0x100000

    invoke-static {v5, v7, v4}, Lcom/bytedance/pangle/g/g;->a(Lcom/bytedance/pangle/g/j;Lcom/bytedance/pangle/g/k;I)V

    iget-wide v7, v0, Lcom/bytedance/pangle/g/m;->d:J

    const-wide/16 v9, 0x10

    add-long/2addr v9, v7

    new-instance v11, Lcom/bytedance/pangle/g/l;

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-wide v13, v0, Lcom/bytedance/pangle/g/m;->c:J

    sub-long v15, v9, v13

    invoke-direct/range {v11 .. v16}, Lcom/bytedance/pangle/g/l;-><init>(Ljava/io/FileDescriptor;JJ)V

    invoke-static {v5, v11, v4}, Lcom/bytedance/pangle/g/g;->a(Lcom/bytedance/pangle/g/j;Lcom/bytedance/pangle/g/k;I)V

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-wide v10, v0, Lcom/bytedance/pangle/g/m;->b:J

    invoke-static {v10, v11}, Lcom/bytedance/pangle/g/g;->c(J)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v5, v9}, Lcom/bytedance/pangle/g/g$b;->a(Ljava/nio/ByteBuffer;)V

    const-wide/16 v9, 0x14

    add-long v13, v7, v9

    new-instance v11, Lcom/bytedance/pangle/g/l;

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long v15, v7, v13

    invoke-direct/range {v11 .. v16}, Lcom/bytedance/pangle/g/l;-><init>(Ljava/io/FileDescriptor;JJ)V

    invoke-static {v5, v11, v4}, Lcom/bytedance/pangle/g/g;->a(Lcom/bytedance/pangle/g/j;Lcom/bytedance/pangle/g/k;I)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    rem-long/2addr v7, v9

    long-to-int v0, v7

    const/16 v4, 0x1000

    if-eqz v0, :cond_0

    rsub-int v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bytedance/pangle/g/g$b;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v5}, Lcom/bytedance/pangle/g/g$b;->a()V

    invoke-virtual {v5}, Lcom/bytedance/pangle/g/g$b;->b()V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget v7, v2, v5

    add-int/lit8 v8, v0, 0x2

    aget v8, v2, v8

    invoke-static {v3, v7, v8}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    aget v8, v2, v0

    aget v5, v2, v5

    invoke-static {v3, v8, v5}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    new-instance v8, Lcom/bytedance/pangle/g/h;

    invoke-direct {v8, v7}, Lcom/bytedance/pangle/g/h;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v7, Lcom/bytedance/pangle/g/g$b;

    invoke-direct {v7, v1, v5, v6}, Lcom/bytedance/pangle/g/g$b;-><init>([BLjava/nio/ByteBuffer;B)V

    invoke-static {v7, v8, v4}, Lcom/bytedance/pangle/g/g;->a(Lcom/bytedance/pangle/g/j;Lcom/bytedance/pangle/g/k;I)V

    invoke-virtual {v7}, Lcom/bytedance/pangle/g/g$b;->a()V

    invoke-virtual {v7}, Lcom/bytedance/pangle/g/g$b;->b()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v2, Lcom/bytedance/pangle/g/g$b;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v2, v1, v5, v6}, Lcom/bytedance/pangle/g/g$b;-><init>([BLjava/nio/ByteBuffer;B)V

    invoke-static {v3, v6, v4}, Lcom/bytedance/pangle/g/g;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/pangle/g/g$b;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/bytedance/pangle/g/g$b;->a()V

    return-object v0
.end method

.method private static a(J)[I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/bytedance/pangle/g/g;->b(J)J

    move-result-wide p0

    const-wide/16 v1, 0x20

    mul-long p0, p0, v1

    invoke-static {p0, p1}, Lcom/bytedance/pangle/g/g;->b(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v1, p0, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/bytedance/pangle/g/g;->c(J)I

    move-result p1

    add-int/2addr v2, p1

    aput v2, p0, v1

    move p1, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private static b(J)J
    .locals 2

    const-wide/16 v0, 0xfff

    add-long/2addr p0, v0

    const-wide/16 v0, 0x1000

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static c(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
