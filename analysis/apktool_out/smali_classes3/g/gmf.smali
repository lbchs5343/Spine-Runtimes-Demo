.class public final Lg/gmf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/dqg;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public final f:Lg/cys;

.field public final g:I

.field public h:Ljava/lang/Boolean;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lg/dqg;Ljava/lang/String;ILg/cys;I)V
    .locals 0

    iput p5, p0, Lg/gmf;->i:I

    iput-object p1, p0, Lg/gmf;->a:Lg/dqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gmf;->d:Ljava/lang/String;

    iput p3, p0, Lg/gmf;->g:I

    iput-object p4, p0, Lg/gmf;->f:Lg/cys;

    return-void
.end method

.method public static j(Ljava/lang/String;Lg/fuj;Lg/bgm;)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Lg/fuj;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lg/fuj;->i()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p1}, Lg/fuj;->i()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lg/fuj;->e()I

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lg/fuj;->j()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_8

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lg/fuj;->i()I

    move-result v1

    invoke-virtual {p1}, Lg/fuj;->g()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_5

    if-eq v1, v5, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lg/fuj;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lg/fuj;->d()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {p1}, Lg/fuj;->e()I

    move-result v7

    if-nez v7, :cond_6

    move-object p1, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lg/fuj;->c()Lg/cwe;

    move-result-object p1

    if-nez v4, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_8
    :goto_4
    if-ne v1, v5, :cond_9

    move-object v7, v6

    goto :goto_5

    :cond_9
    move-object v7, v0

    :goto_5
    if-ne v1, v3, :cond_a

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_6

    :cond_a
    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    :goto_6
    if-nez v4, :cond_c

    if-eq v1, v5, :cond_c

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-nez v7, :cond_e

    goto :goto_8

    :cond_e
    if-eq v2, v4, :cond_f

    const/16 p1, 0x42

    goto :goto_7

    :cond_f
    const/4 p1, 0x0

    :goto_7
    :try_start_0
    invoke-static {v7, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    if-eqz p2, :cond_10

    iget-object p0, p2, Lg/bgm;->g:Lg/dvb;

    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p0, v7, p1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;
    .locals 8

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg/cjx;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lg/cjx;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Lg/cjx;->f()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lg/cjx;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lg/cjx;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/cjx;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lg/cjx;->f()I

    move-result v0

    invoke-virtual {p1}, Lg/cjx;->f()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p1}, Lg/cjx;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p1}, Lg/cjx;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lg/cjx;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lg/cjx;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v4

    move-object v4, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lg/cjx;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_8

    :cond_5
    :try_start_1
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lg/cjx;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    move-object v5, p1

    :goto_1
    if-ne v0, v3, :cond_6

    if-eqz p1, :cond_15

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    goto/16 :goto_8

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_12

    const/4 v6, 0x2

    if-eq v0, v6, :cond_f

    const/4 v7, 0x3

    if-eq v0, v7, :cond_a

    const/4 p2, 0x4

    if-eq v0, p2, :cond_8

    goto/16 :goto_8

    :cond_8
    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_9

    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez v4, :cond_b

    goto/16 :goto_8

    :cond_b
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_c

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    if-nez v4, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_12
    if-nez v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_14

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_15
    :goto_8
    return-object v1
.end method


# virtual methods
.method public m(Ljava/lang/Long;Ljava/lang/Long;Lg/kk;JLg/bwz;Z)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lg/fdd;->c()V

    iget-object v1, v0, Lg/gmf;->a:Lg/dqg;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    sget-object v4, Lg/gad;->aj:Lg/tw;

    iget-object v5, v0, Lg/gmf;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v3

    iget-object v4, v0, Lg/gmf;->f:Lg/cys;

    check-cast v4, Lg/azv;

    invoke-virtual {v4}, Lg/azv;->k()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p6

    iget-wide v6, v6, Lg/bwz;->d:J

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p4

    :goto_0
    iget-object v8, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v8}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    iget v10, v0, Lg/gmf;->g:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_6

    iget-object v8, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->c:Lg/dvb;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4}, Lg/azv;->g()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v13, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v4}, Lg/azv;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "Evaluating filter. audience, filter, event"

    invoke-virtual {v8, v13, v14, v15, v9}, Lg/dvb;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->c:Lg/dvb;

    iget-object v1, v1, Lg/af;->a:Lg/bsz;

    iget-object v1, v1, Lg/bsz;->e:Lg/fit;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\nevent_filter {\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lg/azv;->g()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "filter_id"

    invoke-static {v9, v11, v14, v13}, Lg/fit;->o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v13, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v13, Lg/cyg;

    iget-object v13, v13, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v4}, Lg/azv;->n()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "event_name"

    invoke-static {v9, v11, v14, v13}, Lg/fit;->o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lg/azv;->i()Z

    move-result v13

    invoke-virtual {v4}, Lg/azv;->j()Z

    move-result v14

    invoke-virtual {v4}, Lg/azv;->k()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lg/fit;->c(ZZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "filter_type"

    invoke-static {v9, v11, v14, v13}, Lg/fit;->o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Lg/azv;->o()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "event_count_filter"

    invoke-virtual {v4}, Lg/azv;->l()Lg/cjx;

    move-result-object v14

    invoke-static {v9, v12, v13, v14}, Lg/fit;->r(Ljava/lang/StringBuilder;ILjava/lang/String;Lg/cjx;)V

    :cond_4
    invoke-virtual {v4}, Lg/azv;->h()I

    move-result v13

    if-lez v13, :cond_5

    const-string v13, "  filters {\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lg/azv;->p()Lg/cwe;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/cth;

    const/4 v15, 0x2

    invoke-virtual {v1, v9, v15, v14}, Lg/fit;->ax(Ljava/lang/StringBuilder;ILg/cth;)V

    goto :goto_2

    :cond_5
    invoke-static {v9, v12}, Lg/fit;->h(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n}\n"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "Filter definition"

    invoke-virtual {v8, v1, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lg/azv;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v1

    const/16 v8, 0x100

    if-le v1, v8, :cond_8

    :cond_7
    const/16 p5, 0x0

    goto/16 :goto_17

    :cond_8
    invoke-virtual {v4}, Lg/azv;->i()Z

    move-result v1

    invoke-virtual {v4}, Lg/azv;->j()Z

    move-result v5

    invoke-virtual {v4}, Lg/azv;->k()Z

    move-result v8

    if-nez v1, :cond_9

    if-nez v5, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-eqz p7, :cond_c

    if-nez v1, :cond_c

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Lg/azv;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    :goto_4
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v2, v3, v13}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v12

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lg/azv;->o()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_e

    invoke-virtual {v4}, Lg/azv;->l()Lg/cjx;

    move-result-object v8

    :try_start_0
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v13, v8, v9, v10}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_d

    :goto_6
    const/16 p5, 0x0

    :goto_7
    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 p5, 0x0

    goto/16 :goto_13

    :cond_e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Lg/azv;->p()Lg/cwe;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cth;

    invoke-virtual {v8}, Lg/cth;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "null or empty param name in filter. event"

    invoke-virtual {v6, v5, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v8}, Lg/cth;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v7, Lg/tl;

    invoke-direct {v7, v11}, Lg/bcp;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lg/kk;->q()Lg/cwe;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/asm;

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v13}, Lg/asm;->v()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lg/asm;->v()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v13}, Lg/asm;->n()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_a

    :cond_12
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v7, v14, v13}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_13
    invoke-virtual {v13}, Lg/asm;->r()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lg/asm;->r()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v13}, Lg/asm;->q()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_b

    :cond_14
    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v7, v14, v13}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_15
    invoke-virtual {v13}, Lg/asm;->m()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lg/asm;->x()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v14, v13}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_16
    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v13}, Lg/asm;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown value for param. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual {v4}, Lg/azv;->p()Lg/cwe;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cth;

    invoke-virtual {v8}, Lg/cth;->k()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {v8}, Lg/cth;->i()Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v13, 0x1

    goto :goto_d

    :cond_18
    const/4 v13, 0x0

    :goto_d
    invoke-virtual {v8}, Lg/cth;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_19

    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Event has empty param name. event"

    invoke-virtual {v6, v5, v7}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v7, v14}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 p5, 0x0

    instance-of v11, v15, Ljava/lang/Long;

    if-eqz v11, :cond_1d

    invoke-virtual {v8}, Lg/cth;->g()Z

    move-result v11

    if-nez v11, :cond_1a

    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long param. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1a
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8}, Lg/cth;->h()Lg/cjx;

    move-result-object v8

    :try_start_1
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v11, v8, v9, v10}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    nop

    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_1b

    :goto_f
    goto/16 :goto_7

    :cond_1b
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v13, :cond_1c

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_13

    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_1d
    instance-of v11, v15, Ljava/lang/Double;

    if-eqz v11, :cond_20

    invoke-virtual {v8}, Lg/cth;->g()Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double param. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1e
    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v8}, Lg/cth;->h()Lg/cjx;

    move-result-object v8

    :try_start_2
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v14, v15}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    invoke-static {v11, v8, v14, v15}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    nop

    const/4 v8, 0x0

    :goto_10
    if-nez v8, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v13, :cond_1c

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_13

    :cond_20
    instance-of v11, v15, Ljava/lang/String;

    if-eqz v11, :cond_26

    invoke-virtual {v8}, Lg/cth;->f()Z

    move-result v11

    if-eqz v11, :cond_21

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8}, Lg/cth;->e()Lg/fuj;

    move-result-object v8

    iget-object v11, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v11}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-static {v15, v8, v11}, Lg/gmf;->j(Ljava/lang/String;Lg/fuj;Lg/bgm;)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_12

    :cond_21
    invoke-virtual {v8}, Lg/cth;->g()Z

    move-result v11

    if-eqz v11, :cond_25

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual {v8}, Lg/cth;->h()Lg/cjx;

    move-result-object v8

    invoke-static {v15}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_22

    :goto_11
    const/4 v8, 0x0

    goto :goto_12

    :cond_22
    :try_start_3
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v15}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v8, v9, v10}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_12

    :catch_3
    nop

    goto :goto_11

    :goto_12
    if-nez v8, :cond_23

    goto/16 :goto_f

    :cond_23
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v13, :cond_1c

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_24
    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid param value for number filter. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_25
    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No filter for String param. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_26
    if-nez v15, :cond_27

    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->c:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Missing param for filter. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_27
    iget-object v6, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->g:Lg/dvb;

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v5}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v7, v14}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown param type. event, param"

    invoke-virtual {v6, v5, v8, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_28
    const/16 p5, 0x0

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_13
    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    if-nez v13, :cond_29

    const-string v5, "null"

    goto :goto_14

    :cond_29
    move-object v5, v13

    :goto_14
    const-string v6, "Event filter result"

    invoke-virtual {v2, v5, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v13, :cond_2a

    return p5

    :cond_2a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lg/gmf;->h:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_16

    :cond_2b
    iput-object v2, v0, Lg/gmf;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    invoke-virtual/range {p3 .. p3}, Lg/kk;->o()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual/range {p3 .. p3}, Lg/kk;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4}, Lg/azv;->j()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v3, :cond_2d

    invoke-virtual {v4}, Lg/azv;->o()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_15

    :cond_2c
    move-object/from16 v1, p1

    :cond_2d
    :goto_15
    iput-object v1, v0, Lg/gmf;->e:Ljava/lang/Long;

    goto :goto_16

    :cond_2e
    if-eqz v3, :cond_2f

    invoke-virtual {v4}, Lg/azv;->o()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v1, p2

    :cond_2f
    iput-object v1, v0, Lg/gmf;->c:Ljava/lang/Long;

    :cond_30
    :goto_16
    return v12

    :goto_17
    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    invoke-static {v5}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v2

    invoke-virtual {v4}, Lg/azv;->g()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v4}, Lg/azv;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_18

    :cond_31
    const/4 v13, 0x0

    :goto_18
    const-string v3, "Invalid event filter ID. appId, id"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return p5
.end method

.method public n(Ljava/lang/Long;Ljava/lang/Long;Lg/ne;Z)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lg/fdd;->c()V

    iget-object v1, v0, Lg/gmf;->a:Lg/dqg;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->e:Lg/dsd;

    iget-object v3, v0, Lg/gmf;->d:Ljava/lang/String;

    sget-object v4, Lg/gad;->y:Lg/tw;

    invoke-virtual {v2, v3, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v2

    iget-object v3, v0, Lg/gmf;->f:Lg/cys;

    check-cast v3, Lg/dfx;

    invoke-virtual {v3}, Lg/dfx;->i()Z

    move-result v4

    invoke-virtual {v3}, Lg/dfx;->k()Z

    move-result v5

    invoke-virtual {v3}, Lg/dfx;->g()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    iget v2, v0, Lg/gmf;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Lg/dfx;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lg/dfx;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    const-string v3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v2, v3, v5}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v8

    :cond_3
    invoke-virtual {v3}, Lg/dfx;->h()Lg/cth;

    move-result-object v9

    invoke-virtual {v9}, Lg/cth;->i()Z

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lg/ne;->s()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Lg/cth;->g()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v9, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->g:Lg/dvb;

    iget-object v10, v1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual/range {p3 .. p3}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for long property. property"

    invoke-virtual {v9, v10, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lg/ne;->q()J

    move-result-wide v14

    invoke-virtual {v9}, Lg/cth;->h()Lg/cjx;

    move-result-object v9

    :try_start_0
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v11, v9, v12, v13}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v5, v10}, Lg/gmf;->k(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lg/ne;->k()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Lg/cth;->g()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v9, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->g:Lg/dvb;

    iget-object v10, v1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual/range {p3 .. p3}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for double property. property"

    invoke-virtual {v9, v10, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lg/ne;->n()D

    move-result-wide v11

    invoke-virtual {v9}, Lg/cth;->h()Lg/cjx;

    move-result-object v9

    :try_start_1
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v11

    invoke-static {v13, v9, v11, v12}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {v5, v10}, Lg/gmf;->k(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lg/ne;->o()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Lg/cth;->f()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v9}, Lg/cth;->g()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v9, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->g:Lg/dvb;

    iget-object v10, v1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual/range {p3 .. p3}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No string or number filter defined. property"

    invoke-virtual {v9, v10, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lg/ne;->r()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Lg/ne;->r()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lg/cth;->h()Lg/cjx;

    move-result-object v9

    invoke-static {v11}, Lg/fit;->s(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    :try_start_2
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v9, v12, v13}, Lg/gmf;->l(Ljava/math/BigDecimal;Lg/cjx;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_1
    invoke-static {v5, v10}, Lg/gmf;->k(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_a
    iget-object v9, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->g:Lg/dvb;

    iget-object v10, v1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual/range {p3 .. p3}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lg/ne;->r()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v9, v10, v12, v11}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lg/ne;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lg/cth;->e()Lg/fuj;

    move-result-object v9

    iget-object v11, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v11}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-static {v5, v9, v11}, Lg/gmf;->j(Ljava/lang/String;Lg/fuj;Lg/bgm;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v10}, Lg/gmf;->k(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_c
    iget-object v9, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->g:Lg/dvb;

    iget-object v10, v1, Lg/cyg;->af:Lg/ebl;

    invoke-virtual/range {p3 .. p3}, Lg/ne;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lg/ebl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "User property has no value, property"

    invoke-virtual {v9, v10, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    if-nez v5, :cond_d

    const-string v9, "null"

    goto :goto_3

    :cond_d
    move-object v9, v5

    :goto_3
    const-string v10, "Property filter result"

    invoke-virtual {v1, v9, v10}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_e

    return v7

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lg/gmf;->h:Ljava/lang/Boolean;

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_f
    if-eqz p4, :cond_10

    invoke-virtual {v3}, Lg/dfx;->i()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iput-object v5, v0, Lg/gmf;->b:Ljava/lang/Boolean;

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Lg/ne;->m()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p3 .. p3}, Lg/ne;->l()J

    move-result-wide v4

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v3}, Lg/dfx;->i()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v3}, Lg/dfx;->k()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_13
    invoke-virtual {v3}, Lg/dfx;->k()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg/gmf;->e:Ljava/lang/Long;

    goto :goto_4

    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg/gmf;->c:Ljava/lang/Long;

    :cond_15
    :goto_4
    return v8
.end method
