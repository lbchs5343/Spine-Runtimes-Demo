.class public final Lg/dpm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:[Lg/cwx;

.field public static final c:[Lg/cwx;


# instance fields
.field public final d:Lg/dwg;

.field public e:I

.field public f:[Lg/aht;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/dpm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/dpm;->a:Lg/dba;

    const/4 v0, 0x0

    new-array v1, v0, [Lg/cwx;

    sput-object v1, Lg/dpm;->b:[Lg/cwx;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/cwx;

    sget-object v2, Lg/cwx;->t:Lg/aog;

    aput-object v2, v1, v0

    sput-object v1, Lg/dpm;->c:[Lg/cwx;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpm;->d:Lg/dwg;

    return-void
.end method

.method public static g(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    :goto_0
    if-eq v2, v0, :cond_1

    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "String read error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    const-string v0, "US-ASCII"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final h(Ljava/io/DataInputStream;Lg/ve;)Ljava/util/ArrayList;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static/range {p1 .. p1}, Lg/dpm;->g(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object v5

    invoke-virtual/range {p0 .. p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v10, v6

    goto :goto_2

    :cond_1
    :goto_1
    move-object v10, v4

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object v6

    invoke-static {v6, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v11, v5

    goto :goto_3

    :cond_2
    move-object v11, v6

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v6, p0

    iget-object v7, v6, Lg/dpm;->d:Lg/dwg;

    move-object/from16 v15, p2

    invoke-static {v7, v15, v3, v4, v5}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object v9

    new-instance v8, Lg/fhm;

    invoke-direct/range {v8 .. v14}, Lg/fhm;-><init>(Lg/ayu;Ljava/util/List;Lg/cwx;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v6, p0

    return-object v1
.end method

.method public final i(Ljava/io/InputStream;)V
    .locals 9

    const-string v0, ", expect: 5"

    const-string v1, "Wrong jadx class set version, got: "

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    :try_start_0
    new-array v3, p1, [B

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    if-ne v4, p1, :cond_9

    const-string p1, "jadx-cst"

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_8

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lg/dpm;->e:I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Lg/aht;

    iput-object v0, p0, Lg/dpm;->f:[Lg/aht;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {}, Lg/dom;->values()[Lg/dom;

    move-result-object v5

    if-ltz v4, :cond_0

    array-length v6, v5

    if-gt v4, v6, :cond_0

    aget-object v4, v5, v4

    invoke-static {v2}, Lg/dpm;->g(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/dpm;->f:[Lg/aht;

    new-instance v6, Lg/aht;

    invoke-static {v4}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lg/aht;-><init>(ILg/cwx;)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Lg/heq;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong jadx source identifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_7

    iget-object v3, p0, Lg/dpm;->f:[Lg/aht;

    aget-object v3, v3, v1

    iget-object v4, p0, Lg/dpm;->d:Lg/dwg;

    iget-object v5, v3, Lg/aht;->c:Lg/cwx;

    invoke-static {v4, v5}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_2

    new-array v6, v5, [Lg/cwx;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_5

    invoke-virtual {p0, v2}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    sget-object v6, Lg/dpm;->b:[Lg/cwx;

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    sget-object v6, Lg/dpm;->c:[Lg/cwx;

    :cond_5
    :goto_3
    iput-object v6, v3, Lg/aht;->e:[Lg/cwx;

    invoke-virtual {p0, v2}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Lg/aht;->b:Ljava/util/List;

    invoke-virtual {p0, v2, v4}, Lg/dpm;->h(Ljava/io/DataInputStream;Lg/ve;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fhm;

    iget-object v7, v6, Lg/fhm;->m:Lg/ayu;

    iget-object v7, v7, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iput-object v5, v3, Lg/aht;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :cond_8
    :try_start_1
    new-instance v3, Lg/heq;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    new-instance p1, Lg/heq;

    const-string v0, "Wrong jadx class set header"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method

.method public final j(Ljava/io/DataInputStream;)Lg/cwx;
    .locals 3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lg/gax;->a:[I

    invoke-static {}, Lg/ffc;->values()[Lg/ffc;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lg/gck;

    const-string v1, "Unsupported Arg Type: "

    invoke-static {v0, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Lg/cwx;->bb(C)Lg/cff;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/aoe;

    invoke-direct {v0, p1}, Lg/aoe;-><init>(Lg/cwx;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/dpm;->f:[Lg/aht;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lg/aht;->c:Lg/cwx;

    return-object p1

    :pswitch_3
    invoke-static {p1}, Lg/dpm;->g(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lg/btl;

    invoke-direct {v1, v0, p1}, Lg/btl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lg/dpm;->f:[Lg/aht;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lg/aht;->c:Lg/cwx;

    invoke-virtual {p0, p1}, Lg/dpm;->k(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lg/cwx;->bd(Lg/cwx;Ljava/util/List;)Lg/aaw;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object v0

    invoke-virtual {p0, p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object p1

    new-instance v1, Lg/gvo;

    check-cast v0, Lg/aog;

    check-cast p1, Lg/aog;

    invoke-direct {v1, v0, p1}, Lg/gvo;-><init>(Lg/aog;Lg/aog;)V

    return-object v1

    :pswitch_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/be;->UNBOUND:Lg/be;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lg/be;->EXTENDS:Lg/be;

    goto :goto_0

    :cond_2
    sget-object v0, Lg/be;->SUPER:Lg/be;

    :goto_0
    sget-object v1, Lg/be;->UNBOUND:Lg/be;

    if-ne v0, v1, :cond_3

    sget-object p1, Lg/cwx;->ar:Lg/gzg;

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object p1

    new-instance v1, Lg/gzg;

    invoke-direct {v1, p1, v0}, Lg/gzg;-><init>(Lg/cwx;Lg/be;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, p1}, Lg/dpm;->j(Ljava/io/DataInputStream;)Lg/cwx;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
