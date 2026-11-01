.class public final Lg/auk;
.super Lg/bkw;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/Boolean;

.field public c:J

.field public g:Ljava/lang/String;

.field public h:Landroid/accounts/AccountManager;


# virtual methods
.method public final j()J
    .locals 2

    invoke-virtual {p0}, Lg/bgf;->_e()V

    iget-wide v0, p0, Lg/auk;->a:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    invoke-virtual {p0}, Lg/bkw;->an()V

    iget-wide v0, p0, Lg/auk;->c:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/bkw;->an()V

    iget-object v0, p0, Lg/auk;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 11

    const-string v0, "com.google"

    invoke-virtual {p0}, Lg/bgf;->_e()V

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->ab:Lg/czz;

    iget-object v3, v1, Lg/cyg;->z:Lg/bgm;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lg/auk;->a:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x5265c00

    const/4 v2, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    iput-object v2, p0, Lg/auk;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v6, p0, Lg/auk;->b:Ljava/lang/Boolean;

    if-nez v6, :cond_5

    const-string v6, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v6}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v3, Lg/bgm;->j:Lg/dvb;

    const-string v1, "Permission error checking for dasher/unicorn accounts"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    iput-wide v4, p0, Lg/auk;->a:J

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/auk;->b:Ljava/lang/Boolean;

    return v7

    :cond_1
    iget-object v6, p0, Lg/auk;->h:Landroid/accounts/AccountManager;

    if-nez v6, :cond_2

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lg/auk;->h:Landroid/accounts/AccountManager;

    :cond_2
    :try_start_0
    iget-object v1, p0, Lg/auk;->h:Landroid/accounts/AccountManager;

    const-string v6, "service_HOSTED"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6, v2, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/auk;->b:Ljava/lang/Boolean;

    iput-wide v4, p0, Lg/auk;->a:J

    return v6

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lg/auk;->h:Landroid/accounts/AccountManager;

    const-string v8, "service_uca"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v0, v8, v2, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/auk;->b:Ljava/lang/Boolean;

    iput-wide v4, p0, Lg/auk;->a:J
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_0
    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v3, Lg/bgm;->a:Lg/dvb;

    const-string v2, "Exception checking account types"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput-wide v4, p0, Lg/auk;->a:J

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/auk;->b:Ljava/lang/Boolean;

    return v7

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lg/auk;->c:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-static {v1, v2, v0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/auk;->g:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method
