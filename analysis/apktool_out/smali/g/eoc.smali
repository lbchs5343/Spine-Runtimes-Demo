.class public final synthetic Lg/eoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ery;


# instance fields
.field public final synthetic a:Lg/awr;

.field public final synthetic b:I

.field public final synthetic c:Lg/cvm;


# direct methods
.method public synthetic constructor <init>(Lg/cvm;Lg/awr;I)V
    .locals 0

    iput p3, p0, Lg/eoc;->b:I

    iput-object p1, p0, Lg/eoc;->c:Lg/cvm;

    iput-object p2, p0, Lg/eoc;->a:Lg/awr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(JLjava/io/InputStream;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    iget v2, v1, Lg/eoc;->b:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lg/eoc;->c:Lg/cvm;

    iget-object v3, v1, Lg/eoc;->a:Lg/awr;

    invoke-virtual {v2, v3, v0}, Lg/cvm;->g(Lg/awr;Ljava/io/InputStream;)Lg/aew;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v2, v1, Lg/eoc;->c:Lg/cvm;

    iget-object v3, v1, Lg/eoc;->a:Lg/awr;

    iget-object v4, v2, Lg/cvm;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_30

    sget-object v4, Lg/dml;->a:[I

    iget-object v5, v3, Lg/awr;->e:Lg/ag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2d

    const/4 v7, 0x3

    if-eq v4, v7, :cond_5

    const/4 v0, 0x4

    if-eq v4, v0, :cond_1

    new-instance v0, Lg/mf;

    iget-object v2, v3, Lg/awr;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lg/awr;->d:Ljava/lang/String;

    :goto_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Lg/gju;->RES_LINK:Lg/gju;

    invoke-direct {v0, v2, v4, v3, v5}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    goto/16 :goto_1d

    :cond_1
    iget-object v0, v3, Lg/awr;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, v3, Lg/awr;->d:Ljava/lang/String;

    goto :goto_1

    :goto_2
    const-string v0, ".9.png"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v4, Lg/cvm;->a:Lg/dba;

    const-string v5, "Failed to decode 9-patch png image, path: {}"

    invoke-interface {v4, v2, v5, v0}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_3
    new-instance v0, Lg/mf;

    iget-object v2, v3, Lg/awr;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, v3, Lg/awr;->d:Ljava/lang/String;

    :goto_4
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Lg/gju;->RES_LINK:Lg/gju;

    invoke-direct {v0, v2, v4, v3, v5}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    goto/16 :goto_1d

    :cond_5
    invoke-virtual {v2, v3, v0}, Lg/cvm;->g(Lg/awr;Ljava/io/InputStream;)Lg/aew;

    move-result-object v0

    const-string v2, "</resources>"

    new-instance v3, Lg/bpo;

    iget-object v4, v0, Lg/aew;->c:Lg/bvi;

    iget-object v8, v0, Lg/aew;->f:Lg/gyo;

    invoke-virtual {v8}, Lg/gyo;->g()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Lg/bpo;-><init>(Lg/bvi;Ljava/util/HashMap;)V

    new-instance v4, Lg/dwy;

    iget-object v8, v0, Lg/aew;->f:Lg/gyo;

    iget-object v9, v0, Lg/aew;->d:Lg/dwg;

    invoke-virtual {v9}, Lg/dwg;->ah()Lg/gql;

    move-result-object v10

    invoke-direct {v4, v8, v3, v10}, Lg/dwy;-><init>(Lg/gyo;Lg/bpo;Lg/gql;)V

    invoke-virtual {v9}, Lg/dwg;->ac()Lg/flc;

    move-result-object v3

    iget-object v8, v0, Lg/aew;->f:Lg/gyo;

    const-string v10, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v3, v10}, Lg/flc;->o(Ljava/lang/String;)V

    const-string v11, "<resources>"

    invoke-virtual {v3, v11}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v3}, Lg/grs;->aa()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    iget-object v8, v8, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/azy;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x2

    iget-object v6, v13, Lg/azy;->g:Ljava/lang/String;

    const/16 p2, 0x1

    iget-object v5, v13, Lg/azy;->b:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "<public type=\"%s\" name=\"%s\" id=\"0x%08x\" />"

    iget-object v15, v13, Lg/azy;->g:Ljava/lang/String;

    iget v13, v13, Lg/azy;->d:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 p3, 0x0

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v15, v14, p3

    aput-object v5, v14, p2

    aput-object v13, v14, p1

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_5

    :cond_7
    const/16 p1, 0x2

    const/16 p2, 0x1

    const/16 p3, 0x0

    invoke-virtual {v3}, Lg/grs;->ab()V

    invoke-virtual {v3, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v3}, Lg/flc;->finish()Lg/emz;

    move-result-object v3

    iget-object v5, v9, Lg/dwg;->i:Lg/ur;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v4, Lg/dwy;->b:Lg/gyo;

    iget-object v7, v7, Lg/gyo;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/azy;

    sget-object v9, Lg/dwy;->a:Ljava/util/HashSet;

    iget-object v13, v8, Lg/azy;->g:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "res/values"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v8, Lg/azy;->c:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 v12, 0x2f

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "s"

    invoke-virtual {v13, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    const/16 v12, 0x73

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-string v12, ".xml"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eos;

    if-nez v12, :cond_b

    new-instance v12, Lg/grs;

    invoke-direct {v12, v5}, Lg/grs;-><init>(Lg/ur;)V

    invoke-virtual {v12, v10}, Lg/grs;->t(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v12, v11}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {v12}, Lg/grs;->aa()V

    invoke-virtual {v6, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v9, ""

    const-string v14, "attr"

    iget-object v15, v4, Lg/dwy;->c:Lg/bpo;

    iget-object v1, v8, Lg/azy;->b:Ljava/lang/String;

    move-object/from16 v20, v5

    iget-object v5, v8, Lg/azy;->h:Lg/aot;

    if-eqz v5, :cond_c

    iget v1, v5, Lg/aot;->b:I

    iget v5, v5, Lg/aot;->c:I

    invoke-virtual {v15, v1, v5}, Lg/bpo;->e(II)Ljava/lang/String;

    move-result-object v19

    iget-object v15, v8, Lg/azy;->g:Ljava/lang/String;

    const-string v17, "name"

    iget-object v1, v8, Lg/azy;->b:Ljava/lang/String;

    move-object/from16 v16, v15

    move-object/from16 v18, v1

    move-object v14, v12

    invoke-static/range {v14 .. v19}, Lg/dwy;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    const/4 v1, 0x1

    goto/16 :goto_18

    :cond_c
    move-object v5, v12

    check-cast v5, Lg/grs;

    invoke-virtual {v5}, Lg/grs;->ag()V

    move-object/from16 v18, v6

    const/16 v6, 0x3c

    invoke-interface {v12, v6}, Lg/eos;->a(C)Lg/eos;

    move-result-object v6

    invoke-interface {v6, v13}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v6

    move-object/from16 v19, v7

    const-string v7, " name=\""

    invoke-interface {v6, v7}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const-string v6, "item"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v8, Lg/azy;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget-object v1, v8, Lg/azy;->a:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bbc;

    iget-object v1, v1, Lg/bbc;->b:Lg/aot;

    iget v1, v1, Lg/aot;->c:I

    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_d

    const-string v6, "enum"

    goto :goto_7

    :cond_d
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_e

    const-string v6, "flag"

    :cond_e
    :goto_7
    and-int/lit8 v16, v1, 0x1

    if-eqz v16, :cond_f

    const-string v16, "|reference"

    move-object/from16 v7, v16

    goto :goto_8

    :cond_f
    move-object v7, v9

    :goto_8
    and-int/lit8 v16, v1, 0x2

    if-eqz v16, :cond_10

    move-object/from16 v16, v6

    const-string v6, "|string"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_10
    move-object/from16 v16, v6

    :goto_9
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_11

    const-string v6, "|integer"

    invoke-static {v7, v6}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_11
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_12

    const-string v6, "|boolean"

    invoke-static {v7, v6}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_12
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_13

    const-string v6, "|color"

    invoke-static {v7, v6}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_13
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_14

    const-string v6, "|float"

    invoke-static {v7, v6}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_14
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_15

    const-string v6, "|dimension"

    invoke-static {v7, v6}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_15
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_16

    const-string v1, "|fraction"

    invoke-static {v7, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_16
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    move-object v6, v1

    const/4 v1, 0x1

    goto :goto_a

    :cond_17
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_a
    if-eqz v6, :cond_18

    const-string v7, "\" format=\""

    invoke-interface {v12, v7}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v7

    invoke-interface {v7, v6}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_18
    iget-object v6, v8, Lg/azy;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v1, :cond_1c

    iget-object v1, v8, Lg/azy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bbc;

    move-object/from16 v17, v1

    iget v1, v7, Lg/bbc;->a:I

    move/from16 v21, v6

    sget v6, Lg/emd;->ag:I

    if-ne v1, v6, :cond_19

    const-string v1, "\" min=\""

    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    iget-object v6, v7, Lg/bbc;->b:Lg/aot;

    iget v6, v6, Lg/aot;->c:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/4 v6, 0x1

    goto :goto_c

    :cond_19
    move/from16 v6, v21

    :goto_c
    move-object/from16 v1, v17

    goto :goto_b

    :cond_1a
    move/from16 v21, v6

    goto :goto_d

    :cond_1b
    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-object/from16 v16, v6

    :cond_1c
    const/4 v6, 0x0

    :goto_d
    const-string v1, "style"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget v1, v8, Lg/azy;->e:I

    if-eqz v1, :cond_1e

    :cond_1d
    const-string v1, "\" parent=\""

    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    iget v1, v8, Lg/azy;->e:I

    if-eqz v1, :cond_1e

    const/4 v7, 0x1

    invoke-virtual {v15, v7, v1}, Lg/bpo;->e(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_1e
    const-string v1, "\">"

    invoke-interface {v12, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Lg/grs;->aa()V

    iget-object v1, v8, Lg/azy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bbc;

    const-string v7, "attr."

    const-string v8, "android:"

    move-object/from16 v21, v1

    iget-object v1, v4, Lg/dwy;->d:Lg/gql;

    move-object/from16 v22, v4

    iget v4, v6, Lg/bbc;->a:I

    invoke-virtual {v15, v4}, Lg/bpo;->d(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v10

    iget-object v10, v6, Lg/bbc;->b:Lg/aot;

    move-object/from16 v24, v11

    iget v11, v10, Lg/aot;->b:I

    move-object/from16 v17, v12

    iget v12, v10, Lg/aot;->c:I

    invoke-virtual {v15, v11, v12}, Lg/bpo;->e(II)Ljava/lang/String;

    move-result-object v11

    iget v10, v10, Lg/aot;->b:I

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    const/4 v12, 0x1

    if-ne v10, v12, :cond_20

    if-eqz v11, :cond_1f

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1f
    const-string v11, "@null"

    :cond_20
    const/16 v12, 0x10

    if-ne v10, v12, :cond_21

    if-eqz v4, :cond_21

    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v25, v11

    :try_start_2
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    int-to-long v14, v12

    :try_start_3
    invoke-virtual {v1, v14, v15, v11}, Lg/gql;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v11, :cond_22

    goto :goto_12

    :catch_1
    :goto_f
    nop

    goto :goto_11

    :catch_2
    :goto_10
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    goto :goto_f

    :catch_3
    move-object/from16 v25, v11

    goto :goto_10

    :cond_21
    move-object/from16 v25, v11

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    :cond_22
    :goto_11
    move-object/from16 v11, v25

    :goto_12
    const/16 v12, 0x11

    if-ne v10, v12, :cond_24

    if-eqz v4, :cond_24

    :try_start_4
    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    int-to-long v14, v10

    invoke-virtual {v1, v14, v15, v7}, Lg/gql;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v1, :cond_24

    move-object v11, v1

    goto :goto_13

    :catch_4
    nop

    goto :goto_13

    :cond_23
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    :cond_24
    :goto_13
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_14
    const/4 v1, -0x1

    goto :goto_15

    :sswitch_0
    const-string v1, "style"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_14

    :cond_25
    const/4 v1, 0x2

    goto :goto_15

    :sswitch_1
    const-string v1, "attr"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_14

    :cond_26
    const/4 v1, 0x1

    goto :goto_15

    :sswitch_2
    const-string v1, "plurals"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_14

    :cond_27
    const/4 v1, 0x0

    :goto_15
    packed-switch v1, :pswitch_data_1

    const/4 v15, 0x0

    move-object/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v12, v17

    const/4 v1, 0x1

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lg/dwy;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :pswitch_1
    move-object/from16 v14, v16

    move-object/from16 v12, v17

    const/4 v1, 0x1

    move-object/from16 v17, v11

    if-eqz v4, :cond_28

    const-string v16, ""

    move-object v15, v4

    invoke-static/range {v12 .. v17}, Lg/dwy;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :pswitch_2
    move-object v15, v4

    move-object/from16 v14, v16

    move-object/from16 v12, v17

    const/4 v1, 0x1

    move-object/from16 v17, v11

    if-eqz v15, :cond_28

    move-object/from16 v16, v17

    const-string v17, ""

    invoke-static/range {v12 .. v17}, Lg/dwy;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :pswitch_3
    move-object/from16 v14, v16

    move-object/from16 v12, v17

    const/4 v1, 0x1

    move-object/from16 v17, v11

    sget-object v4, Lg/emd;->ah:Ljava/util/HashMap;

    iget v6, v6, Lg/bbc;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const-string v15, "quantity"

    invoke-static/range {v12 .. v17}, Lg/dwy;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_16
    move-object/from16 v16, v14

    move-object/from16 v1, v21

    move-object/from16 v4, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_e

    :cond_29
    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    const/4 v1, 0x1

    invoke-virtual {v5}, Lg/grs;->ab()V

    goto :goto_17

    :cond_2a
    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v5}, Lg/grs;->ag()V

    const-string v4, "</"

    invoke-interface {v5, v4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v4

    invoke-interface {v4, v13}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-interface {v4, v5}, Lg/eos;->a(C)Lg/eos;

    :goto_18
    move-object/from16 v1, p0

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    const/16 p2, 0x1

    const/16 p3, 0x0

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v18, v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eos;

    check-cast v5, Lg/grs;

    invoke-virtual {v5}, Lg/grs;->ab()V

    invoke-virtual {v5, v2}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-interface {v5}, Lg/eos;->finish()Lg/emz;

    move-result-object v5

    new-instance v7, Lg/mf;

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v9, Lg/gju;->TEXT:Lg/gju;

    invoke-direct {v7, v6, v8, v5, v9}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, v0, Lg/aew;->e:Ljava/lang/String;

    new-instance v2, Lg/mf;

    sget-object v4, Lg/gju;->RES_TABLE:Lg/gju;

    invoke-direct {v2, v0, v1, v3, v4}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    goto :goto_1c

    :cond_2d
    monitor-enter v2

    :try_start_5
    iget-object v1, v2, Lg/cvm;->b:Lg/bvx;

    if-nez v1, :cond_2e

    new-instance v1, Lg/bvx;

    iget-object v4, v2, Lg/cvm;->c:Lg/cqc;

    iget-object v4, v4, Lg/cqc;->j:Lg/dwg;

    invoke-direct {v1, v4}, Lg/bvx;-><init>(Lg/dwg;)V

    iput-object v1, v2, Lg/cvm;->b:Lg/bvx;

    goto :goto_1a

    :catchall_0
    move-exception v0

    goto :goto_1e

    :cond_2e
    :goto_1a
    iget-object v1, v2, Lg/cvm;->b:Lg/bvx;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    invoke-virtual {v1, v0}, Lg/bvx;->ad(Ljava/io/InputStream;)Lg/emz;

    move-result-object v0

    iget-object v1, v3, Lg/awr;->b:Ljava/lang/String;

    if-eqz v1, :cond_2f

    goto :goto_1b

    :cond_2f
    iget-object v1, v3, Lg/awr;->d:Ljava/lang/String;

    :goto_1b
    new-instance v2, Lg/mf;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v4, Lg/gju;->TEXT:Lg/gju;

    invoke-direct {v2, v1, v3, v0, v4}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    :goto_1c
    move-object v0, v2

    :goto_1d
    return-object v0

    :goto_1e
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_30
    invoke-static {v4}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1c54a691 -> :sswitch_2
        0x2dd9f1 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
