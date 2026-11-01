.class public abstract Lg/fyd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/gei;->n:Lg/gei;

    const-string v0, "\"\\"

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    const-string v0, "\t ,="

    invoke-static {v0}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    return-void
.end method

.method public static final a(Lg/enb;)Z
    .locals 5

    iget-object v0, p0, Lg/enb;->i:Lg/daw;

    iget-object v0, v0, Lg/daw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/enb;->g:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lg/erq;->z(Lg/enb;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p0}, Lg/enb;->o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lg/ao;Lg/eyn;Lg/dvq;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headers"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lg/ao;->k:Lg/ao;

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/ayz;->d:Ljava/util/regex/Pattern;

    const-string v0, "Set-Cookie"

    invoke-virtual {v2, v0}, Lg/dvq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_20

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v8, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v0, Lg/erq;->c:[B

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v11, 0x3b

    invoke-static {v8, v4, v0, v11}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v12, 0x3d

    invoke-static {v8, v4, v0, v12}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v13

    if-ne v13, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4, v13, v8}, Lg/erq;->k(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v15}, Lg/erq;->n(Ljava/lang/String;)I

    move-result v14

    const/4 v5, -0x1

    if-eq v14, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v0, v8}, Lg/erq;->k(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lg/erq;->n(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v5, :cond_5

    :cond_4
    :goto_1
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/16 v17, -0x1

    const-wide v19, 0xe677d21fdbffL

    move-wide/from16 v21, v17

    move-wide/from16 v26, v19

    const/16 p2, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v28, 0x0

    :goto_2
    const-wide v29, 0x7fffffffffffffffL

    const-wide/high16 v31, -0x8000000000000000L

    if-ge v0, v5, :cond_12

    invoke-static {v8, v0, v5, v11}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v4

    invoke-static {v8, v0, v4, v12}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v11

    invoke-static {v0, v11, v8}, Lg/erq;->k(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v11, v4, :cond_6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v4, v8}, Lg/erq;->k(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    const-string v11, ""

    :goto_3
    const-string v12, "expires"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v11}, Lg/buj;->aj(ILjava/lang/String;)J

    move-result-wide v26
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    const/16 v25, 0x1

    goto/16 :goto_5

    :cond_7
    const-string v12, "max-age"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v0, v11, v21

    if-gtz v0, :cond_8

    move-wide/from16 v21, v31

    goto :goto_4

    :cond_8
    move-wide/from16 v21, v11

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v12, Lg/hu;

    move-object/from16 v33, v0

    const-string v0, "-?\\d+"

    invoke-direct {v12, v0}, Lg/hu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lg/hu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "-"

    const/4 v12, 0x0

    invoke-static {v11, v0, v12}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide/from16 v29, v31

    :cond_9
    move-wide/from16 v21, v29

    goto :goto_4

    :cond_a
    throw v33
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    const-string v12, "domain"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    :try_start_3
    const-string v0, "."

    invoke-static {v11, v0}, Lg/dmc;->by(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-static {v11, v0}, Lg/dcv;->bp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/byh;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v14, v0

    const/16 v24, 0x0

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    const-string v0, "Failed requirement."

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_e
    const-string v12, "path"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object v13, v11

    goto :goto_5

    :cond_f
    const-string v11, "secure"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/16 v28, 0x1

    goto :goto_5

    :cond_10
    const-string v11, "httponly"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v23, 0x1

    :catch_1
    :cond_11
    :goto_5
    add-int/lit8 v0, v4, 0x1

    const/4 v4, 0x0

    const/16 v11, 0x3b

    const/16 v12, 0x3d

    goto/16 :goto_2

    :cond_12
    cmp-long v0, v21, v31

    if-nez v0, :cond_13

    move-wide/from16 v17, v31

    goto :goto_7

    :cond_13
    cmp-long v0, v21, v17

    if-eqz v0, :cond_17

    const-wide v4, 0x20c49ba5e353f7L

    cmp-long v0, v21, v4

    if-gtz v0, :cond_14

    const/16 v0, 0x3e8

    int-to-long v4, v0

    mul-long v29, v21, v4

    :cond_14
    add-long v29, v9, v29

    cmp-long v0, v29, v9

    if-ltz v0, :cond_16

    cmp-long v0, v29, v19

    if-lez v0, :cond_15

    goto :goto_6

    :cond_15
    move-wide/from16 v17, v29

    goto :goto_7

    :cond_16
    :goto_6
    move-wide/from16 v17, v19

    goto :goto_7

    :cond_17
    move-wide/from16 v17, v26

    :goto_7
    iget-object v0, v1, Lg/eyn;->c:Ljava/lang/String;

    if-nez v14, :cond_18

    move-object v14, v0

    goto :goto_8

    :cond_18
    invoke-static {v0, v14}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_8

    :cond_19
    invoke-static {v0, v14}, Lg/dmc;->by(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    sget-object v4, Lg/erq;->d:Lg/hu;

    invoke-virtual {v4, v0}, Lg/hu;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_1a

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v14}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string v0, "/"

    const/4 v12, 0x0

    if-eqz v13, :cond_1c

    invoke-static {v13, v0, v12}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_a

    :cond_1b
    :goto_9
    move-object/from16 v20, v13

    move-object/from16 v19, v14

    goto :goto_b

    :cond_1c
    :goto_a
    invoke-virtual {v1}, Lg/eyn;->q()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/4 v8, 0x6

    invoke-static {v4, v12, v8, v5}, Lg/dcv;->bs(Ljava/lang/String;IIC)I

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v4}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1d
    move-object v13, v0

    goto :goto_9

    :goto_b
    new-instance v14, Lg/ayz;

    move/from16 v22, v23

    move/from16 v23, v25

    move/from16 v21, v28

    invoke-direct/range {v14 .. v24}, Lg/ayz;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    :goto_c
    if-nez v14, :cond_1e

    goto :goto_d

    :cond_1e
    if-nez v7, :cond_1f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_20
    if-eqz v7, :cond_21

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "{\n        Collections.un\u2026ableList(cookies)\n      }"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_21
    sget-object v0, Lg/fai;->a:Lg/fai;

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
