.class public final Lg/amd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/content/Context;)Lg/byz;
    .locals 7

    new-instance v0, Lg/byz;

    const-string v1, "other"

    const v2, 0x7f120485

    invoke-direct {v0, v1, v2}, Lg/byz;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lg/fxe$a;->isShowManual:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f12048e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    :goto_0
    new-instance v2, Lg/ert;

    const-string v3, "features"

    const v4, 0x7f080193

    invoke-direct {v2, v3, v1, v4}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lg/fln;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    :cond_2
    :goto_1
    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lg/fxe$a;->isShowFAQ:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x7f120028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    :goto_2
    new-instance v2, Lg/ert;

    const-string v3, "faq"

    const v4, 0x7f0800e1

    invoke-direct {v2, v3, v1, v4}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lg/fcs;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    :cond_5
    :goto_3
    const-string v1, "codekk_op2"

    const-string v2, "op_source_tool_other"

    invoke-static {p1, v1, v2}, Lg/bys;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/ert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/byz;->e(Lg/ert;)V

    const/16 v1, 0x100

    invoke-static {v1, p1, v0}, Lg/enx;->a(ILandroid/content/Context;Lg/byz;)V

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v2

    invoke-virtual {v2}, Lg/atf;->o()Z

    move-result v2

    invoke-static {p1, v2}, Lg/byh;->al(Landroid/content/Context;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    new-instance v2, Lg/ert;

    const v4, 0x7f120491

    const v5, 0x7f080195

    const-string v6, "pro"

    invoke-direct {v2, v6, v4, v5, v3}, Lg/ert;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    new-instance v4, Lg/dwm;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lg/dwm;-><init>(I)V

    iput-object v4, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v2

    invoke-virtual {v2}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v5, v4, Lg/fxe$e;->adPosition:I

    invoke-virtual {v2, v4}, Lg/atf;->h(Lg/fxe$e;)Z

    move-result v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-static {p1}, Lg/enx;->b(Landroid/content/Context;)Lg/ert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/byz;->e(Lg/ert;)V

    :cond_6
    new-instance v1, Lg/ert;

    const v2, 0x7f1200f4

    const v4, 0x7f08024b

    const-string v5, "standard_size"

    invoke-direct {v1, v5, v2, v4}, Lg/ert;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/ert;->p:Z

    new-instance v2, Lg/gdm;

    const/16 v4, 0xd

    invoke-direct {v2, v4}, Lg/gdm;-><init>(I)V

    iput-object v2, v1, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v1}, Lg/byz;->e(Lg/ert;)V

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v2, v1, Lg/fxe$e;->isShowWeChat:Z

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v2, Lg/ert;

    iget-object v1, v1, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    const v4, 0x7f0f0001

    const-string v5, "official_wechat"

    invoke-direct {v2, v5, v1, v4}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lg/fut;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    :cond_8
    :goto_4
    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-boolean v2, v1, Lg/fxe$a;->isShowUserResearch:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, v1, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v1, 0x7f120039

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    iget-object v1, v1, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    :goto_5
    new-instance v2, Lg/ert;

    const-string v4, "user_research"

    const v5, 0x7f08019b

    invoke-direct {v2, v4, v1, v5}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lg/fpi;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    :cond_b
    :goto_6
    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v2, v1, Lg/fxe$e;->isShowJobs:Z

    if-eqz v2, :cond_e

    invoke-static {p1}, Lg/cux;->aj(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    iget-object v1, v1, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const v1, 0x7f120490

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_d
    new-instance v2, Lg/ert;

    const-string v4, "jobs"

    const v5, 0x7f0800e5

    invoke-direct {v2, v4, v1, v5}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lg/faz;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ert;->r:Lg/hdb;

    goto :goto_8

    :cond_e
    :goto_7
    move-object v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    const-string v1, "TrineaAndroidCommon"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "update_response"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_9

    :cond_f
    :try_start_0
    const-class v2, Lg/fjv;

    invoke-static {v2, v1}, Lg/ex;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fjv;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lg/fjv;->getVersionCode()I

    move-result v2

    invoke-static {p1}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result p1

    if-gt v2, p1, :cond_10

    goto :goto_9

    :cond_10
    new-instance p1, Lg/ert;

    const-string v2, "update"

    const v4, 0x7f120086

    const v5, 0x7f080177

    invoke-direct {p1, v2, v4, v5, v3}, Lg/ert;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    new-instance v2, Lg/fnq;

    const/16 v4, 0xf

    invoke-direct {v2, v4, v1}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v2, p1, Lg/ert;->r:Lg/hdb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_9

    :catch_0
    move-exception p1

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_11
    :goto_9
    invoke-virtual {v0, v3}, Lg/byz;->e(Lg/ert;)V

    return-object v0
.end method
