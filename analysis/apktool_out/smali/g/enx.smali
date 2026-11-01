.class public abstract Lg/enx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroid/content/Context;Lg/byz;)V
    .locals 7

    invoke-static {p1}, Lg/aky;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dgk;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/dgk;->getDisplayArea()I

    move-result v2

    and-int/2addr v2, p0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lg/ert;

    invoke-virtual {v1}, Lg/dgk;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1}, Lg/dgk;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lg/aky;->ab(Lg/dgk;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lg/dgk;->getNameResId()I

    move-result v3

    iput v3, v2, Lg/ert;->n:I

    invoke-virtual {v1}, Lg/dgk;->getIconType()I

    move-result v3

    iput v3, v2, Lg/ert;->o:I

    invoke-virtual {v1}, Lg/dgk;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iput-object v3, v2, Lg/ert;->y:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v2, Lg/ert;->o:I

    :goto_1
    invoke-static {v1}, Lg/aky;->ab(Lg/dgk;)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    iput v3, v2, Lg/ert;->d:I

    iput v4, v2, Lg/ert;->o:I

    :goto_2
    invoke-virtual {v1}, Lg/dgk;->getIconText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iput-object v3, v2, Lg/ert;->a:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v2, Lg/ert;->o:I

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lg/dgk;->isShow(I)Z

    move-result v3

    invoke-virtual {v1}, Lg/dgk;->getShow()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    invoke-static {p1}, Lg/cux;->aj(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, v2, Lg/ert;->s:Z

    invoke-virtual {v1}, Lg/dgk;->getMinSdkVersion()I

    move-result v3

    iput v3, v2, Lg/ert;->h:I

    invoke-virtual {v1}, Lg/dgk;->getMaxSdkVersion()I

    move-result v3

    iput v3, v2, Lg/ert;->k:I

    invoke-virtual {v1}, Lg/dgk;->isShowCornerTip()Z

    invoke-virtual {v1}, Lg/dgk;->getCornerTipIconUrl()Ljava/lang/String;

    invoke-virtual {v1}, Lg/dgk;->isSpace()Z

    move-result v3

    iput-boolean v3, v2, Lg/ert;->x:Z

    invoke-static {p1, v1}, Lg/dgk;->isShowCornerTipNow(Landroid/content/Context;Lg/dgk;)Z

    move-result v3

    iput-boolean v3, v2, Lg/ert;->c:Z

    const-string v3, "TrineaAndroidCommon"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "datetrinea"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v4, v2, Lg/ert;->s:Z

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/ert;->q:Ljava/lang/String;

    iget-boolean v3, v2, Lg/ert;->c:Z

    sget-boolean v6, Lg/cyz;->c:Z

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {p1}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    iput-boolean v4, v2, Lg/ert;->c:Z

    new-instance v3, Lg/aoy;

    invoke-direct {v3, v1}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {p2, v2}, Lg/byz;->e(Lg/ert;)V

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method public static b(Landroid/content/Context;)Lg/ert;
    .locals 3

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    iget-object v0, v0, Lg/fxe$e;->adTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f12048f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p0, Lg/ert;

    const-string v1, "financial"

    const v2, 0x7f080194

    invoke-direct {p0, v1, v0, v2}, Lg/ert;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lg/cny;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/ert;->r:Lg/hdb;

    return-object p0
.end method
