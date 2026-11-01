.class public final Lg/cvm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public b:Lg/bvx;

.field public final c:Lg/cqc;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cvm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cvm;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cqc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cvm;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/cvm;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/cvm;->c:Lg/cqc;

    new-instance p1, Lg/apx;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static f(Lg/awr;Lg/ery;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/awr;->a:Lg/ffs;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lg/ffs;->g()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lg/ffs;->c()J

    move-result-wide v2

    invoke-interface {p1, v2, v3, v1}, Lg/ery;->h(JLjava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lg/awr;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-interface {p1, v2, v3, v1}, Lg/ery;->h(JLjava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_2
    new-instance v0, Lg/uc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error decode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg/awr;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final g(Lg/awr;Ljava/io/InputStream;)Lg/aew;
    .locals 65

    move-object/from16 v0, p1

    iget-object v1, v0, Lg/awr;->e:Lg/ag;

    iget-object v2, v0, Lg/awr;->d:Ljava/lang/String;

    sget-object v3, Lg/ag;->ARSC:Lg/ag;

    if-ne v1, v3, :cond_52

    move-object/from16 v1, p0

    iget-object v3, v1, Lg/cvm;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/apx;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, ".arsc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    new-instance v6, Lg/aew;

    iget-object v5, v5, Lg/apx;->a:Lg/dwg;

    invoke-direct {v6, v5}, Lg/aew;-><init>(Lg/dwg;)V

    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_0

    :cond_2
    if-eqz v5, :cond_51

    iget-object v0, v0, Lg/awr;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    iput-object v2, v5, Lg/aew;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lg/gdu;

    new-instance v6, Ljava/io/BufferedInputStream;

    const v7, 0x8000

    move-object/from16 v8, p2

    invoke-direct {v6, v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v6}, Lg/gdu;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v5, Lg/bmc;->k:Lg/gdu;

    new-instance v0, Lg/gyo;

    iget-object v6, v5, Lg/aew;->d:Lg/dwg;

    iget-object v7, v6, Lg/dwg;->i:Lg/ur;

    iget-object v8, v7, Lg/ur;->am:Lg/cvp;

    invoke-direct {v0, v8}, Lg/gyo;-><init>(Lg/cvp;)V

    iput-object v0, v5, Lg/aew;->f:Lg/gyo;

    sget-object v0, Lg/aew;->b:Lg/dba;

    iget-object v8, v5, Lg/bmc;->k:Lg/gdu;

    const-string v9, "Not a table chunk"

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v9}, Lg/gdu;->k(ILjava/lang/String;)V

    iget-object v8, v5, Lg/bmc;->k:Lg/gdu;

    const-string v9, "Unexpected table header size"

    const/16 v11, 0xc

    invoke-virtual {v8, v11, v9}, Lg/gdu;->k(ILjava/lang/String;)V

    iget-object v8, v5, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v8}, Lg/gdu;->i()I

    move-result v8

    iget-object v9, v5, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v9}, Lg/gdu;->i()I

    move-result v9

    const/4 v13, 0x0

    :goto_1
    iget-object v14, v5, Lg/bmc;->k:Lg/gdu;

    move/from16 p2, v13

    const/16 p1, 0x0

    iget-wide v12, v14, Lg/gdu;->f:J

    const/4 v15, 0x2

    int-to-long v10, v8

    cmp-long v16, v12, v10

    if-gez v16, :cond_4e

    invoke-virtual {v14}, Lg/gdu;->h()I

    move-result v10

    iget-object v11, v5, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v11}, Lg/gdu;->h()I

    move-result v11

    iget-object v14, v5, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v14}, Lg/gdu;->i()I

    move-result v14

    move-object/from16 v17, v5

    const/16 v16, 0x0

    int-to-long v4, v14

    const-wide v18, 0xffffffffL

    and-long v4, v4, v18

    add-long/2addr v4, v12

    const/4 v14, 0x1

    if-eq v10, v14, :cond_4d

    const/16 v20, 0x2

    const/16 v15, 0x200

    if-eq v10, v15, :cond_4

    move-wide/from16 v27, v2

    move-object/from16 v63, v6

    move-object v15, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move-object/from16 v10, v17

    goto/16 :goto_32

    :cond_4
    const/16 v10, 0x11c

    if-lt v11, v10, :cond_4c

    move-object/from16 v10, v17

    iget-object v15, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v15}, Lg/gdu;->i()I

    move-result v15

    iget-object v14, v10, Lg/bmc;->k:Lg/gdu;

    const/16 v1, 0x80

    invoke-virtual {v14, v1}, Lg/gdu;->g(I)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v1}, Lg/gdu;->i()I

    move-result v1

    move-wide/from16 v27, v2

    int-to-long v1, v1

    add-long/2addr v1, v12

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    move/from16 v29, v8

    move/from16 v30, v9

    int-to-long v8, v3

    add-long/2addr v8, v12

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    const/16 v3, 0x120

    if-lt v11, v3, :cond_5

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    :cond_5
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    move-wide/from16 v31, v4

    int-to-long v4, v11

    add-long/2addr v12, v4

    const-string v4, "package header end"

    invoke-virtual {v3, v12, v13, v4}, Lg/gdu;->l(JLjava/lang/String;)V

    const-string v3, "String pool expected"

    const-wide/16 v4, 0x0

    cmp-long v11, v1, v4

    if-eqz v11, :cond_6

    iget-object v11, v10, Lg/bmc;->k:Lg/gdu;

    const-string v12, "Expected typeStrings string pool"

    invoke-virtual {v11, v1, v2, v12}, Lg/gdu;->l(JLjava/lang/String;)V

    iget-object v1, v10, Lg/bmc;->k:Lg/gdu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lg/gdu;->k(ILjava/lang/String;)V

    invoke-virtual {v10}, Lg/bmc;->l()Lg/bvi;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v1, v16

    :goto_2
    cmp-long v11, v8, v4

    if-eqz v11, :cond_7

    iget-object v4, v10, Lg/bmc;->k:Lg/gdu;

    const-string v5, "Expected keyStrings string pool"

    invoke-virtual {v4, v8, v9, v5}, Lg/gdu;->l(JLjava/lang/String;)V

    iget-object v4, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v4, v2, v3}, Lg/gdu;->k(ILjava/lang/String;)V

    invoke-virtual {v10}, Lg/bmc;->l()Lg/bvi;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object/from16 v2, v16

    :goto_3
    iget-object v3, v10, Lg/aew;->f:Lg/gyo;

    iget-object v4, v3, Lg/gyo;->e:Lg/axw;

    check-cast v4, Lg/cvp;

    iget-object v4, v4, Lg/cvp;->b:Ljava/util/Set;

    sget-object v5, Lg/nd;->VERIFY_APP_PACKAGE:Lg/nd;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lg/cbd;->a:Ljava/util/regex/Pattern;

    invoke-static {v14}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lg/cbd;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lg/cbd;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    sget-object v4, Lg/cvp;->a:Lg/dba;

    const-string v5, "App package \'{}\' has invalid format and will be ignored"

    invoke-interface {v4, v14, v5}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "INVALID_PACKAGE"

    goto :goto_5

    :cond_9
    :goto_4
    move-object v4, v14

    :goto_5
    iput-object v4, v3, Lg/gyo;->f:Ljava/lang/String;

    :goto_6
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    iget-wide v4, v3, Lg/gdu;->f:J

    cmp-long v8, v4, v31

    if-gez v8, :cond_4b

    invoke-virtual {v3}, Lg/gdu;->h()I

    move-result v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "res package chunk start at {} type {}"

    invoke-interface {v0, v8, v11, v9}, Lg/dba;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_4a

    const/16 v8, 0x10

    packed-switch v3, :pswitch_data_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Unknown chunk type {} encountered at offset {}"

    invoke-interface {v0, v3, v5, v4}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    move-object/from16 v40, v1

    move-object/from16 v42, v2

    move-object/from16 v63, v6

    move-object/from16 v24, v14

    move/from16 v35, v15

    const/16 v45, 0x1

    move-object v15, v7

    goto/16 :goto_31

    :pswitch_0
    const-string v3, "parsing staged alias chunk starting at offset {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Lg/dba;->e(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->h()I

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v3, :cond_a

    iget-object v9, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v9}, Lg/gdu;->i()I

    move-result v9

    iget-object v11, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v11}, Lg/gdu;->i()I

    move-result v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Staged alias: stagedResId {} finalizedResId {}"

    invoke-interface {v0, v9, v12, v11}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const-string v8, "staged alias chunk end"

    invoke-virtual {v3, v4, v5, v8}, Lg/gdu;->l(JLjava/lang/String;)V

    goto :goto_7

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    const-string v1, "Encountered unsupported chunk type RES_TABLE_TYPE_OVERLAY_POLICY at offset 0x%x "

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v3, "parsing overlay type chunk starting at offset {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Lg/dba;->e(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->h()I

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const/16 v8, 0x100

    invoke-virtual {v3, v8}, Lg/gdu;->g(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v9, v8}, Lg/gdu;->g(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Overlay header data: name={} actor={}"

    invoke-interface {v0, v3, v9, v8}, Lg/dba;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const-string v8, "overlay chunk end"

    invoke-virtual {v3, v4, v5, v8}, Lg/gdu;->l(JLjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_3
    const-string v3, "parsing library type chunk starting at offset {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Lg/dba;->e(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const-string v8, "Unexpected header size"

    const/16 v9, 0xc

    invoke-virtual {v3, v9, v8}, Lg/gdu;->k(ILjava/lang/String;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v8, v4

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v3, :cond_c

    iget-object v12, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v12}, Lg/gdu;->i()I

    move-result v12

    iget-object v13, v10, Lg/bmc;->k:Lg/gdu;

    move-wide/from16 v21, v8

    const/16 v8, 0x80

    invoke-virtual {v13, v8}, Lg/gdu;->g(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v9, v12}, Lg/dba;->w(Ljava/lang/Object;Ljava/lang/Integer;)V

    iget-object v9, v10, Lg/bmc;->k:Lg/gdu;

    iget-wide v12, v9, Lg/gdu;->f:J

    cmp-long v9, v12, v21

    if-gtz v9, :cond_b

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v8, v21

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading after chunk end"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-wide/from16 v21, v8

    const/16 v8, 0x80

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    iget-wide v11, v3, Lg/gdu;->f:J

    cmp-long v3, v11, v21

    if-nez v3, :cond_d

    :goto_a
    goto/16 :goto_7

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    const-string v1, "Error reading library chunk at offset 0x%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/16 v3, 0x10

    const/16 v8, 0x80

    iget-object v9, v10, Lg/bmc;->k:Lg/gdu;

    const-string v11, "Unexpected type spec header size"

    invoke-virtual {v9, v3, v11}, Lg/gdu;->k(ILjava/lang/String;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v11, v4

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->j()I

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const-wide/16 v8, 0x3

    invoke-virtual {v3, v8, v9}, Lg/gdu;->skip(J)J

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v3, :cond_e

    iget-object v9, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v9}, Lg/gdu;->i()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_e
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    iget-wide v8, v3, Lg/gdu;->f:J

    cmp-long v3, v8, v11

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    const-string v1, "Error reading type spec chunk at offset 0x%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/16 v3, 0x10

    iget-object v8, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v8}, Lg/gdu;->h()I

    iget-object v8, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v8}, Lg/gdu;->i()I

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v18

    add-long v11, v4, v8

    iget-object v13, v10, Lg/bmc;->k:Lg/gdu;

    long-to-int v9, v8

    invoke-virtual {v13, v9}, Lg/gdu;->mark(I)V

    iget-object v8, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v8}, Lg/gdu;->j()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v1, v9}, Lg/bvi;->f(I)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->j()I

    move-result v3

    and-int/lit8 v21, v3, 0x1

    if-eqz v21, :cond_10

    const/16 v33, 0x1

    goto :goto_c

    :cond_10
    const/16 v33, 0x0

    :goto_c
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    const/16 v21, 0x1

    goto :goto_d

    :cond_11
    const/16 v21, 0x0

    :goto_d
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->h()I

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    move-wide/from16 v22, v4

    iget-object v4, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v4}, Lg/gdu;->i()I

    move-result v4

    int-to-long v4, v4

    add-long v4, v22, v4

    move/from16 v34, v8

    iget-object v8, v10, Lg/bmc;->k:Lg/gdu;

    move-object/from16 v24, v14

    move/from16 v35, v15

    iget-wide v14, v8, Lg/gdu;->f:J

    invoke-virtual {v8}, Lg/gdu;->i()I

    move-result v8

    move-wide/from16 v22, v14

    const/4 v14, 0x4

    if-lt v8, v14, :cond_49

    add-int/lit8 v15, v8, -0x4

    const/16 v14, 0x34

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [B

    move-wide/from16 v61, v11

    iget-object v11, v10, Lg/bmc;->k:Lg/gdu;

    move-object/from16 v63, v6

    move-object/from16 v64, v7

    iget-wide v6, v11, Lg/gdu;->f:J

    move-wide/from16 v36, v6

    int-to-long v6, v15

    add-long v6, v36, v6

    iput-wide v6, v11, Lg/gdu;->f:J

    if-ltz v15, :cond_48

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v15, :cond_13

    iget-object v7, v11, Lg/gdu;->e:Ljava/io/InputStream;

    sub-int v12, v15, v6

    invoke-virtual {v7, v14, v6, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_12

    add-int/2addr v6, v7

    goto :goto_e

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    new-instance v6, Lg/gdu;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lg/gdu;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v11

    int-to-short v11, v11

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v14

    int-to-byte v14, v14

    const/16 v15, 0x61

    invoke-static {v12, v14, v15}, Lg/aew;->h(BBC)[C

    move-result-object v39

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v14

    int-to-byte v14, v14

    const/16 v15, 0x30

    invoke-static {v12, v14, v15}, Lg/aew;->h(BBC)[C

    move-result-object v40

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v12

    int-to-byte v12, v12

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v14

    int-to-byte v14, v14

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v43

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v15

    int-to-byte v15, v15

    move/from16 v37, v7

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v7

    int-to-byte v7, v7

    move/from16 v45, v7

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v7

    int-to-byte v7, v7

    move/from16 v46, v7

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v7

    int-to-byte v7, v7

    move/from16 v47, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    move/from16 v48, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    move/from16 v49, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move/from16 v50, v7

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v7

    int-to-byte v7, v7

    move/from16 v51, v7

    invoke-virtual {v6}, Lg/gdu;->j()I

    move-result v7

    int-to-byte v7, v7

    move/from16 v52, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    move/from16 v53, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    move/from16 v54, v7

    invoke-virtual {v6}, Lg/gdu;->h()I

    move-result v7

    int-to-short v7, v7

    move/from16 v55, v7

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lg/aew;->g(ILg/gdu;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move/from16 v38, v11

    const/16 v11, 0x8

    invoke-static {v11, v6}, Lg/aew;->g(ILg/gdu;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Lg/gdu;->j()I

    move-result v6

    int-to-byte v6, v6

    move/from16 v58, v6

    invoke-virtual/range {v26 .. v26}, Lg/gdu;->j()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual/range {v26 .. v26}, Lg/gdu;->h()I

    move/from16 v59, v6

    iget-object v6, v10, Lg/bmc;->k:Lg/gdu;

    move/from16 v42, v14

    move/from16 v44, v15

    int-to-long v14, v8

    add-long v14, v22, v14

    move/from16 v60, v8

    const-string v8, "Config skip trailing bytes"

    invoke-virtual {v6, v14, v15, v8}, Lg/gdu;->m(JLjava/lang/String;)V

    new-instance v36, Lg/pr;

    array-length v6, v7

    if-nez v6, :cond_14

    move-object/from16 v56, v16

    goto :goto_f

    :cond_14
    move-object/from16 v56, v7

    :goto_f
    array-length v6, v11

    if-nez v6, :cond_15

    move-object/from16 v57, v16

    :goto_10
    move/from16 v41, v12

    goto :goto_11

    :cond_15
    move-object/from16 v57, v11

    goto :goto_10

    :goto_11
    invoke-direct/range {v36 .. v60}, Lg/pr;-><init>(SS[C[CBBIBBBBSSSBBSSS[C[CBBI)V

    move-object/from16 v6, v36

    iget-boolean v7, v6, Lg/pr;->d:Z

    if-eqz v7, :cond_16

    const-string v7, "Invalid config flags detected: {}{}"

    iget-object v8, v6, Lg/pr;->f:Ljava/lang/String;

    invoke-interface {v0, v13, v7, v8}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v33, :cond_17

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v3, :cond_1a

    iget-object v11, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v11}, Lg/gdu;->h()I

    move-result v11

    iget-object v12, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v12}, Lg/gdu;->h()I

    move-result v12

    const/16 v25, 0x4

    mul-int/lit8 v12, v12, 0x4

    new-instance v14, Lg/gaq;

    invoke-direct {v14, v11, v12}, Lg/gaq;-><init>(II)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_17
    if-eqz v21, :cond_19

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_1a

    iget-object v11, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v11}, Lg/gdu;->h()I

    move-result v11

    const v12, 0xffff

    if-eq v11, v12, :cond_18

    new-instance v12, Lg/gaq;

    mul-int/lit8 v11, v11, 0x4

    invoke-direct {v12, v8, v11}, Lg/gaq;-><init>(II)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_19
    const/4 v8, 0x0

    :goto_14
    if-ge v8, v3, :cond_1a

    new-instance v11, Lg/gaq;

    iget-object v12, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v12}, Lg/gdu;->i()I

    move-result v12

    invoke-direct {v11, v8, v12}, Lg/gaq;-><init>(II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_1a
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    const-string v8, "Failed to skip to entries start"

    invoke-virtual {v3, v4, v5, v8}, Lg/gdu;->l(JLjava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gaq;

    iget v12, v11, Lg/gaq;->b:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_1b

    :goto_16
    move-object/from16 v40, v1

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move-wide/from16 v37, v4

    :goto_17
    move-object/from16 v44, v7

    move/from16 v46, v8

    move/from16 p1, v9

    move-object/from16 v15, v64

    const/16 v1, 0x10

    const/16 v45, 0x1

    goto/16 :goto_30

    :cond_1b
    iget v11, v11, Lg/gaq;->a:I

    if-eqz v33, :cond_1c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    goto :goto_16

    :cond_1c
    int-to-long v14, v12

    add-long/2addr v14, v4

    cmp-long v12, v14, v61

    if-ltz v12, :cond_1d

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_1d
    iget-object v12, v10, Lg/bmc;->k:Lg/gdu;

    move-wide/from16 v37, v4

    move-object v5, v3

    iget-wide v3, v12, Lg/gdu;->f:J

    cmp-long v21, v14, v3

    if-gez v21, :cond_1e

    invoke-virtual {v12}, Lg/gdu;->reset()V

    :cond_1e
    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "Expected start of entry "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v15, v4}, Lg/gdu;->l(JLjava/lang/String;)V

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->h()I

    move-result v3

    iget-object v4, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v4}, Lg/gdu;->h()I

    move-result v4

    and-int/lit8 v12, v4, 0x1

    if-eqz v12, :cond_1f

    const/4 v12, 0x1

    goto :goto_18

    :cond_1f
    const/4 v12, 0x0

    :goto_18
    and-int/lit8 v14, v4, 0x8

    if-eqz v14, :cond_20

    const/4 v14, 0x1

    goto :goto_19

    :cond_20
    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_21

    move v15, v3

    :goto_1a
    move/from16 v39, v4

    const/4 v4, -0x1

    goto :goto_1b

    :cond_21
    iget-object v15, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v15}, Lg/gdu;->i()I

    move-result v15

    goto :goto_1a

    :goto_1b
    if-ne v15, v4, :cond_22

    move-object/from16 v40, v1

    move-object/from16 v42, v2

    move-object/from16 v43, v5

    goto :goto_17

    :cond_22
    shl-int/lit8 v4, v35, 0x18

    shl-int/lit8 v21, v34, 0x10

    or-int v4, v4, v21

    or-int/2addr v4, v11

    invoke-virtual {v1, v9}, Lg/bvi;->f(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2, v15}, Lg/bvi;->f(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v40, v1

    move-object/from16 v15, v64

    iget-object v1, v15, Lg/ur;->am:Lg/cvp;

    iget-object v1, v1, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v1, v11}, Lg/ctk;->bt(Ljava/lang/String;)Z

    move-result v1

    move/from16 v21, v1

    if-nez v21, :cond_23

    sget-object v4, Lg/aew;->a:Lg/azy;

    move-object/from16 v42, v2

    move-object/from16 v43, v5

    move-object/from16 v44, v7

    move/from16 v46, v8

    move/from16 p1, v9

    const/16 v45, 0x1

    goto/16 :goto_2d

    :cond_23
    iget-object v1, v10, Lg/aew;->f:Lg/gyo;

    iget-object v1, v1, Lg/gyo;->c:Ljava/util/HashMap;

    move-object/from16 v42, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_24

    move-object/from16 v25, v1

    move-object/from16 v43, v5

    move-object/from16 v44, v7

    move/from16 v46, v8

    move/from16 p1, v9

    move-object/from16 v22, v24

    const/16 v45, 0x1

    move/from16 v24, v4

    goto/16 :goto_2b

    :cond_24
    move-object/from16 v1, v63

    iget-object v2, v1, Lg/dwg;->f:Lg/dxb;

    iget-object v2, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v2, Lg/bqm;

    iget-object v2, v2, Lg/bqm;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/chf;

    instance-of v2, v1, Lg/hcd;

    if-eqz v2, :cond_25

    check-cast v1, Lg/hcd;

    goto :goto_1c

    :cond_25
    move-object/from16 v1, v16

    :goto_1c
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lg/hcd;->f:Lg/cci;

    invoke-virtual {v2}, Lg/cci;->bd()Lg/cci;

    move-result-object v2

    move/from16 v21, v4

    sget-object v4, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_26

    :goto_1d
    move-object/from16 v43, v5

    move-object/from16 v44, v7

    goto/16 :goto_22

    :cond_26
    iget-object v2, v15, Lg/ur;->al:Lg/cax;

    iget-object v4, v1, Lg/hcd;->g:Lg/dsj;

    iget-object v4, v4, Lg/dsj;->e:Ljava/lang/String;

    sget-object v22, Lg/en;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v25

    move-object/from16 v43, v5

    aget v5, v22, v25

    move-object/from16 v44, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_28

    const/4 v7, 0x2

    if-eq v5, v7, :cond_30

    const/4 v7, 0x3

    if-ne v5, v7, :cond_27

    move-object/from16 v22, v4

    goto/16 :goto_1f

    :cond_27
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected ResourceNameSource value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    sget v2, Lg/aim;->a:I

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_21

    :cond_29
    invoke-static {v11}, Lg/foj;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v4}, Lg/foj;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    move-object/from16 v22, v4

    goto :goto_20

    :cond_2b
    new-instance v2, Lg/aot;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lg/aot;-><init>(I)V

    new-instance v7, Lg/cen;

    invoke-direct {v7, v2}, Lg/cen;-><init>(Lg/aot;)V

    invoke-static {v11, v7}, Lg/foj;->d(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v7, Lg/aot;

    invoke-direct {v7, v5}, Lg/aot;-><init>(I)V

    new-instance v5, Lg/cen;

    invoke-direct {v5, v7}, Lg/cen;-><init>(Lg/aot;)V

    invoke-static {v4, v5}, Lg/foj;->d(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    iget v5, v2, Lg/aot;->c:I

    move-object/from16 v22, v4

    if-nez v5, :cond_2c

    iget v4, v7, Lg/aot;->c:I

    if-eqz v4, :cond_2d

    :cond_2c
    int-to-float v4, v5

    iget v5, v2, Lg/aot;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v7, Lg/aot;->c:I

    int-to-float v5, v5

    move/from16 v25, v4

    iget v4, v7, Lg/aot;->b:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    sub-float v4, v5, v25

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v26, v5

    float-to-double v4, v4

    const-wide v45, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v47, v4, v45

    if-ltz v47, :cond_2d

    cmpg-float v2, v25, v26

    if-gtz v2, :cond_2e

    goto :goto_1e

    :cond_2d
    iget v2, v2, Lg/aot;->b:I

    iget v4, v7, Lg/aot;->b:I

    if-lt v2, v4, :cond_2e

    :goto_1e
    goto :goto_22

    :cond_2e
    :goto_1f
    move-object/from16 v4, v22

    goto :goto_23

    :goto_20
    invoke-static {v11}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :goto_21
    goto :goto_22

    :cond_2f
    move/from16 v21, v4

    goto/16 :goto_1d

    :cond_30
    :goto_22
    move-object v4, v11

    :goto_23
    iget-object v2, v15, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v5, Lg/ffl;->VALID:Lg/ffl;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, v15, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v7, Lg/ffl;->PRINTABLE:Lg/ffl;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v17, v2

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v45, 0x1

    aput-object v22, v2, v5

    const-string v5, "_res_0x%08x"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    move/from16 v46, v8

    move/from16 p1, v9

    goto/16 :goto_2a

    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v46, v8

    add-int/lit8 v8, v22, 0x1

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 p1, v9

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    if-eqz v17, :cond_33

    invoke-static {v9}, Lg/cbd;->d(I)Z

    move-result v17

    if-eqz v17, :cond_32

    goto :goto_24

    :cond_32
    const/16 v8, 0x5f

    goto :goto_26

    :cond_33
    :goto_24
    const/16 v8, 0x370

    if-ge v9, v8, :cond_34

    invoke-static {v9}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v8

    if-eqz v8, :cond_34

    const/16 v8, 0x5f

    goto :goto_25

    :cond_34
    const/16 v8, 0x5f

    if-ne v9, v8, :cond_35

    :goto_25
    sget-object v22, Lg/cbd;->a:Ljava/util/regex/Pattern;

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v22

    if-eqz v22, :cond_35

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    goto :goto_27

    :cond_35
    :goto_26
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v9, v7}, Lg/kj;->u(IZ)Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_36
    const/4 v8, 0x1

    :goto_27
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move/from16 v22, v8

    :goto_28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v9, v8, :cond_38

    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8, v7}, Lg/kj;->u(IZ)Z

    move-result v26

    if-eqz v26, :cond_37

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-object/from16 v26, v4

    goto :goto_29

    :cond_37
    move-object/from16 v26, v4

    const/16 v4, 0x5f

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    :goto_29
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v9, v4

    move-object/from16 v4, v26

    goto :goto_28

    :cond_38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lg/cbd;->c:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/16 v22, 0x1

    :cond_39
    if-eqz v22, :cond_3a

    invoke-static {v4, v2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_3a
    move-object v2, v4

    goto :goto_2a

    :cond_3b
    move-object/from16 v26, v4

    move/from16 v46, v8

    move/from16 p1, v9

    const/16 v45, 0x1

    move-object/from16 v2, v26

    :goto_2a
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, v10, Lg/aew;->f:Lg/gyo;

    iget-object v4, v4, Lg/gyo;->c:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    if-eqz v1, :cond_3d

    const/16 v4, 0x2e

    const/16 v8, 0x5f

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lg/hcd;->g:Lg/dsj;

    iput-object v4, v5, Lg/dsj;->b:Ljava/lang/String;

    sget-object v4, Lg/csv;->DONT_RENAME:Lg/csv;

    invoke-virtual {v1, v4}, Lg/lh;->w(Lg/csv;)V

    :cond_3d
    move-object/from16 v25, v2

    move-object/from16 v22, v24

    move/from16 v24, v21

    :goto_2b
    new-instance v21, Lg/azy;

    iget-object v1, v6, Lg/pr;->f:Ljava/lang/String;

    move-object/from16 v26, v1

    invoke-direct/range {v21 .. v26}, Lg/azy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v21

    move/from16 v1, v24

    move-object/from16 v24, v22

    iget-object v4, v10, Lg/aew;->f:Lg/gyo;

    iget-object v4, v4, Lg/gyo;->b:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/azy;

    if-eqz v4, :cond_40

    iget v5, v4, Lg/azy;->d:I

    if-ne v5, v1, :cond_3e

    const-string v1, "ResourceEntries with duplicate resource id found: {} {}"

    invoke-interface {v0, v4, v1, v2}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v11

    goto :goto_2c

    :cond_3e
    move-object/from16 v1, v25

    :goto_2c
    invoke-virtual {v2, v1}, Lg/azy;->i(Ljava/lang/String;)Lg/azy;

    move-result-object v2

    invoke-virtual {v4, v1}, Lg/azy;->i(Ljava/lang/String;)Lg/azy;

    move-result-object v1

    iget-object v5, v1, Lg/azy;->b:Ljava/lang/String;

    const-string v7, "Resource name collision - renamed to {} and {}"

    iget-object v8, v2, Lg/azy;->b:Ljava/lang/String;

    invoke-interface {v0, v8, v7, v5}, Lg/dba;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v10, Lg/aew;->f:Lg/gyo;

    iget-object v7, v7, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_3f

    invoke-virtual {v7, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget-object v4, v10, Lg/aew;->f:Lg/gyo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lg/azy;->d:I

    iget-object v4, v4, Lg/gyo;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    move-object v4, v2

    iget-object v1, v4, Lg/azy;->b:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v10, Lg/aew;->f:Lg/gyo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Lg/azy;->d:I

    iget-object v2, v2, Lg/gyo;->c:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget-object v1, v10, Lg/aew;->f:Lg/gyo;

    iget-object v2, v1, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/gyo;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v4, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    if-eqz v14, :cond_42

    shr-int/lit8 v1, v39, 0x8

    iget-object v2, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    new-instance v3, Lg/aot;

    const/4 v7, 0x3

    invoke-direct {v3, v1, v2, v7}, Lg/aot;-><init>(III)V

    iput-object v3, v4, Lg/azy;->h:Lg/aot;

    const/16 v1, 0x10

    goto :goto_30

    :cond_42
    const/16 v1, 0x10

    if-nez v12, :cond_44

    if-ne v3, v1, :cond_43

    goto :goto_2e

    :cond_43
    invoke-virtual {v10}, Lg/aew;->i()Lg/aot;

    move-result-object v2

    iput-object v2, v4, Lg/azy;->h:Lg/aot;

    goto :goto_30

    :cond_44
    :goto_2e
    iget-object v2, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    iget-object v3, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v3}, Lg/gdu;->i()I

    move-result v3

    iput v2, v4, Lg/azy;->e:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v3, :cond_45

    iget-object v7, v10, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v7}, Lg/gdu;->i()I

    move-result v7

    new-instance v8, Lg/bbc;

    invoke-virtual {v10}, Lg/aew;->i()Lg/aot;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lg/bbc;-><init>(ILg/aot;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_45
    iput-object v2, v4, Lg/azy;->a:Ljava/util/ArrayList;

    :goto_30
    move/from16 v9, p1

    move-object/from16 v64, v15

    move-wide/from16 v4, v37

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v7, v44

    move/from16 v8, v46

    const/16 p1, 0x0

    const/16 v20, 0x2

    goto/16 :goto_15

    :cond_46
    move-object/from16 v40, v1

    move-object/from16 v42, v2

    move/from16 v46, v8

    move-object/from16 v15, v64

    const/16 v45, 0x1

    if-lez v46, :cond_47

    const-string v1, "{} entries of type {} has been ignored (invalid offset)"

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1, v13}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    iget-object v1, v10, Lg/bmc;->k:Lg/gdu;

    const-string v2, "End of chunk"

    move-wide/from16 v4, v61

    invoke-virtual {v1, v4, v5, v2}, Lg/gdu;->l(JLjava/lang/String;)V

    goto :goto_31

    :cond_48
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Config size < 4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move-object/from16 v40, v1

    move-object/from16 v42, v2

    move-wide/from16 v22, v4

    move-object/from16 v63, v6

    move-object/from16 v24, v14

    move/from16 v35, v15

    const/16 v45, 0x1

    move-object v15, v7

    const-string v1, "Null chunk type encountered at offset {}"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_31
    move-object v7, v15

    move-object/from16 v14, v24

    move/from16 v15, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    move-object/from16 v6, v63

    const/16 p1, 0x0

    const/16 v20, 0x2

    goto/16 :goto_6

    :cond_4b
    move-object/from16 v63, v6

    move-object v15, v7

    add-int/lit8 v13, p2, 0x1

    move-wide/from16 v4, v31

    goto :goto_33

    :cond_4c
    move-object/from16 v10, v17

    const-string v0, "Package header size too small"

    invoke-virtual {v10, v0}, Lg/bmc;->m(Ljava/lang/String;)V

    throw v16

    :cond_4d
    move-wide/from16 v27, v2

    move-object/from16 v63, v6

    move-object v15, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move-object/from16 v10, v17

    invoke-virtual {v10, v12, v13, v4, v5}, Lg/bmc;->n(JJ)Lg/bvi;

    move-result-object v1

    iput-object v1, v10, Lg/aew;->c:Lg/bvi;

    :goto_32
    move/from16 v13, p2

    :goto_33
    iget-object v1, v10, Lg/bmc;->k:Lg/gdu;

    const-string v2, "Skip to table chunk end"

    invoke-virtual {v1, v4, v5, v2}, Lg/gdu;->l(JLjava/lang/String;)V

    move-object/from16 v1, p0

    move-object v5, v10

    move-object v7, v15

    move-wide/from16 v2, v27

    move/from16 v8, v29

    move/from16 v9, v30

    move-object/from16 v6, v63

    const/4 v10, 0x2

    const/16 v11, 0xc

    goto/16 :goto_1

    :cond_4e
    move/from16 v13, p2

    move-wide/from16 v27, v2

    move-object v10, v5

    move v1, v9

    if-eq v13, v1, :cond_4f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Unexpected package chunks, read: {}, expected: {}"

    invoke-interface {v0, v2, v3, v1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    iget-object v1, v10, Lg/aew;->f:Lg/gyo;

    iget-object v2, v1, Lg/gyo;->d:Ljava/util/ArrayList;

    new-instance v3, Lg/dbm;

    const/16 v9, 0xc

    invoke-direct {v3, v9}, Lg/dbm;-><init>(I)V

    invoke-static {v3}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v1, Lg/gyo;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    iget-object v1, v1, Lg/gyo;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Lg/dba;->af()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, v10, Lg/aew;->f:Lg/gyo;

    iget-object v1, v1, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v27

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Resource table parsed: size: {}, time: {}ms"

    invoke-interface {v0, v1, v3, v2}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_50
    return-object v10

    :cond_51
    new-instance v0, Lg/gck;

    const-string v1, "Unknown type of resource file: "

    invoke-static {v1, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected resource type for decode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg/awr;->e:Lg/ag;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expect \'.pb\'/\'.arsc\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lg/dwg;)Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p0, Lg/cvm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/apx;

    :try_start_0
    iput-object p1, v1, Lg/apx;->a:Lg/dwg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to init res table provider: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lg/cvm;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object p1, p0, Lg/cvm;->c:Lg/cqc;

    iget-object v0, p1, Lg/cqc;->k:Lg/ur;

    iget-object v0, v0, Lg/ur;->ad:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p1, Lg/cqc;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v4, Lg/bqu;->c:Lg/dba;

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v6, Lg/bqu;->b:[B

    array-length v7, v6

    new-array v8, v7, [B

    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v7, :cond_3

    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v4, v6

    goto :goto_6

    :catch_1
    move-exception v5

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    sget-object v6, Lg/bqu;->c:Lg/dba;

    const-string v7, "Failed to read zip file: {}"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7, v5}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    if-eqz v4, :cond_7

    :try_start_6
    iget-object v4, p1, Lg/cqc;->i:Lg/eie;

    invoke-virtual {v4, v3}, Lg/eie;->k(Ljava/io/File;)Lg/eqm;

    move-result-object v4

    iget-object v5, p1, Lg/cqc;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lg/eqm;->d:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ffs;

    invoke-interface {v5}, Lg/ffs;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_7

    :cond_5
    invoke-interface {v5}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg/ag;->c(Ljava/lang/String;)Lg/ag;

    move-result-object v7

    iget-object v8, p1, Lg/cqc;->k:Lg/ur;

    iget-object v8, v8, Lg/ur;->am:Lg/cvp;

    iget-object v8, v8, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v8, v6}, Lg/ctk;->bt(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move-object v8, v1

    goto :goto_8

    :cond_6
    new-instance v8, Lg/awr;

    invoke-direct {v8, p1, v6, v7}, Lg/awr;-><init>(Lg/cqc;Ljava/lang/String;Lg/ag;)V

    :goto_8
    if-eqz v8, :cond_4

    iput-object v5, v8, Lg/awr;->a:Lg/ffs;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open zip file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/ag;->c(Ljava/lang/String;)Lg/ag;

    move-result-object v4

    new-instance v5, Lg/awr;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p1, v3, v4}, Lg/awr;-><init>(Lg/cqc;Ljava/lang/String;Lg/ag;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {v4}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_9
    return-object v2

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    new-instance p1, Lg/gck;

    const-string v0, "Failed to init res container factory: null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
