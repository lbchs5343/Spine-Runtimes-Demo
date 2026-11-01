.class public final Lg/eal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final f:I

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/bgm;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/eal;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eal;->a:Ljava/lang/Object;

    iput p2, p0, Lg/eal;->f:I

    iput-object p3, p0, Lg/eal;->b:Ljava/lang/String;

    iput-object p4, p0, Lg/eal;->c:Ljava/lang/Object;

    iput-object p5, p0, Lg/eal;->d:Ljava/lang/Object;

    iput-object p6, p0, Lg/eal;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lg/alf;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/eal;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p2, p0, Lg/eal;->c:Ljava/lang/Object;

    iput p3, p0, Lg/eal;->f:I

    iput-object p4, p0, Lg/eal;->d:Ljava/lang/Object;

    iput-object p5, p0, Lg/eal;->g:Ljava/lang/Object;

    iput-object p1, p0, Lg/eal;->b:Ljava/lang/String;

    iput-object p6, p0, Lg/eal;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/eal;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eal;->c:Ljava/lang/Object;

    iput p2, p0, Lg/eal;->f:I

    iput-object p3, p0, Lg/eal;->b:Ljava/lang/String;

    iput-object p4, p0, Lg/eal;->d:Ljava/lang/Object;

    iput-object p5, p0, Lg/eal;->g:Ljava/lang/Object;

    iput-object p6, p0, Lg/eal;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lg/eal;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eal;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/alf;

    iget-object v2, p0, Lg/eal;->b:Ljava/lang/String;

    iget v3, p0, Lg/eal;->f:I

    iget-object v0, p0, Lg/eal;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    iget-object v0, p0, Lg/eal;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    iget-object v0, p0, Lg/eal;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lg/alf;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v0, Lg/bgm;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-boolean v3, v0, Lg/bkw;->am:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v3, Lg/bgm;

    iget-char v4, v3, Lg/bgm;->k:C

    if-nez v4, :cond_5

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->e:Lg/dsd;

    iget-object v4, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    if-nez v4, :cond_3

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {}, Lg/cux;->an()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    :cond_1
    iget-object v4, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->b:Lg/dvb;

    const-string v5, "My process not in the list of running processes"

    invoke-virtual {v4, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_2
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v3, v3, Lg/dsd;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v3, Lg/bgm;

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x43

    iput-char v4, v3, Lg/bgm;->k:C

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v3, Lg/bgm;

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x63

    iput-char v4, v3, Lg/bgm;->k:C

    :cond_5
    :goto_3
    iget-object v3, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v3, Lg/bgm;

    iget-wide v4, v3, Lg/bgm;->l:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_6

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v4}, Lg/dsd;->n()V

    const-wide/32 v4, 0x11d28

    iput-wide v4, v3, Lg/bgm;->l:J

    :cond_6
    iget v3, p0, Lg/eal;->f:I

    const-string v4, "01VDIWEA?"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v4, Lg/bgm;

    iget-char v5, v4, Lg/bgm;->k:C

    iget-wide v8, v4, Lg/bgm;->l:J

    iget-object v4, p0, Lg/eal;->b:Ljava/lang/String;

    iget-object v10, p0, Lg/eal;->c:Ljava/lang/Object;

    iget-object v11, p0, Lg/eal;->d:Ljava/lang/Object;

    iget-object v12, p0, Lg/eal;->g:Ljava/lang/Object;

    invoke-static {v1, v4, v10, v11, v12}, Lg/bgm;->s(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "2"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-static {v4, v3, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_7

    iget-object v1, p0, Lg/eal;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v0, v0, Lg/gmr;->s:Lg/dkh;

    if-eqz v0, :cond_d

    iget-object v2, v0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v4, Lg/gmr;

    invoke-virtual {v4}, Lg/bgf;->_e()V

    iget-object v5, v0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v5, Lg/gmr;

    invoke-virtual {v5}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v8, v0, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lg/dkh;->f()V

    :cond_8
    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    invoke-virtual {v4}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v0, v8, v6

    if-gtz v0, :cond_a

    invoke-virtual {v4}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_a
    iget-object v0, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    add-long/2addr v8, v10

    const-wide v10, 0x7fffffffffffffffL

    div-long v12, v10, v8

    invoke-virtual {v4}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    and-long/2addr v5, v10

    cmp-long v4, v5, v12

    if-gez v4, :cond_b

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lg/eal;->a:Ljava/lang/Object;

    check-cast v0, Lg/bgm;

    invoke-virtual {v0}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persisted config not initialized. Not logging error/warn"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->a()Lcom/tencent/bugly/proguard/au;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "[ExtraCrashManager] Extra crash manager has not been initialized."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->a()Lcom/tencent/bugly/proguard/au;

    move-result-object v3

    iget-object v0, p0, Lg/eal;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Thread;

    iget v5, p0, Lg/eal;->f:I

    iget-object v6, p0, Lg/eal;->b:Ljava/lang/String;

    iget-object v0, p0, Lg/eal;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lg/eal;->g:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lg/eal;->a:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    invoke-static/range {v3 .. v9}, Lcom/tencent/bugly/proguard/au;->a(Lcom/tencent/bugly/proguard/au;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    const-string v0, "[ExtraCrashManager] Crash error %s %s %s"

    iget-object v3, p0, Lg/eal;->b:Ljava/lang/String;

    iget-object v4, p0, Lg/eal;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lg/eal;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
