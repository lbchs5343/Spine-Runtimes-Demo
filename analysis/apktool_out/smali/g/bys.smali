.class public abstract Lg/bys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/ert;
    .locals 3

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/fxe;->codekk:Lg/fxe$f;

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lg/ert;

    const v1, 0x7f0800ab

    const v2, 0x7f120385

    invoke-direct {v0, p1, v2, v1}, Lg/ert;-><init>(Ljava/lang/String;II)V

    invoke-static {p0}, Lg/bys;->c(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, v0, Lg/ert;->c:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lg/ert;->f:Z

    new-instance p0, Lg/fwk;

    invoke-direct {p0, p2}, Lg/fwk;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lg/ert;->r:Lg/hdb;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 9

    sget-boolean v0, Lg/cyz;->c:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "last_read_op_date"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/fxe;->codekk:Lg/fxe$f;

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lg/fxe$f;->isOldOpMark:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    mul-long v4, v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    sget v0, Lc/b/b;->d:I

    const-string v0, "c"

    invoke-static {p0, v1, v0}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v0}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->p()Lg/fxe;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lg/fxe;->codekk:Lg/fxe$f;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lg/fxe$f;->opUrl:Ljava/lang/String;

    iget-object v4, v1, Lg/fxe$f;->opTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v4, v3

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "https://p.codekk.com/"

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v4, 0x7f120389

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v5, "last_read_op_date"

    const/4 v6, 0x0

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget v1, v1, Lg/fxe$f;->im:I

    if-gtz v1, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 v7, -0x1

    invoke-static {v0, v5, v7, v8}, Lg/cro;->ae(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v6}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {v9, v6}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {v9, v6}, Ljava/util/Date;->setSeconds(I)V

    sget-object v10, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v10, v14

    int-to-long v14, v1

    div-long/2addr v10, v14

    mul-long v10, v10, v14

    const-wide/32 v14, 0xea60

    mul-long v10, v10, v14

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    div-long/2addr v14, v12

    mul-long v14, v14, v12

    add-long/2addr v14, v10

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const-string v11, "opic"

    cmp-long v12, v7, v9

    if-ltz v12, :cond_7

    cmp-long v9, v7, v14

    if-gez v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0, v6, v11}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v0, v7, v11}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {v0, v1, v11}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    :goto_3
    const v1, 0x7f120388

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f120386

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lg/bys;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1, v7, v8}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "source"

    move-object/from16 v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lc/b/b;

    invoke-static {v0, v3, v1}, Lg/dov;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v5, v7, v8}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v1, "TrineaAndroidCommon"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "open_project_source"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-static {v0, v3, v2}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_8
    move-object v1, v4

    :goto_4
    const-string v2, "op_source_total"

    invoke-static {v0, v2, v1}, Lg/dzm;->ah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "codekk_op"

    invoke-static {v0, v2}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v2, "codekk_op2"

    invoke-static {v0, v2}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {v1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ert;

    if-eqz v2, :cond_b

    iput-boolean v6, v2, Lg/ert;->c:Z

    goto :goto_5

    :cond_c
    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.trinea.android.lib.ACTION_TOOL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method
