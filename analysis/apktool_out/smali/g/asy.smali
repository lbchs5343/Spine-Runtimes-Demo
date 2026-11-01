.class public final Lg/asy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    iput p2, p0, Lg/asy;->b:I

    iput-object p1, p0, Lg/asy;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/asy;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lg/asy;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/gvq;

    iget-boolean v0, p0, Lg/asy;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v4, v1, Lg/gvq;->d:Landroid/content/Context;

    iget-object v5, v1, Lg/gvq;->f:Lg/akx;

    iget-boolean v6, v1, Lg/gvq;->n:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarj;->zza()Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzarh;->zza(Z)Lcom/google/android/gms/internal/ads/zzarh;

    iget-object v0, v5, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzarh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarh;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzarj;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/ads/zzauu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzarj;Z)Lcom/google/android/gms/internal/ads/zzauu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauu;->zzp()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, v1, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/16 v2, 0x7eb

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->as()Z

    move-result v0

    iget-object v3, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v3, Lg/csp;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v4, v3, Lg/cyg;->ad:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lg/cyg;->ad:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v4, Lg/csp;

    iget-object v4, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-boolean v5, p0, Lg/asy;->c:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lg/cyg;->ad:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lg/asy;->c:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v3, Lg/csp;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Default data collection state already set to"

    iget-boolean v5, p0, Lg/asy;->c:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v3, Lg/csp;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->as()Z

    move-result v3

    if-eq v3, v0, :cond_4

    iget-object v3, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v3, Lg/csp;

    iget-object v3, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    invoke-virtual {v3}, Lg/cyg;->as()Z

    move-result v3

    iget-object v4, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v4, Lg/csp;

    iget-object v4, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v5, v4, Lg/cyg;->ad:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lg/cyg;->ad:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eq v3, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v1, Lg/csp;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->h:Lg/dvb;

    const-string v2, "Default data collection is different than actual status"

    iget-boolean v3, p0, Lg/asy;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    invoke-virtual {v0}, Lg/csp;->al()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Lg/sq;

    iget-boolean v1, p0, Lg/asy;->c:Z

    invoke-virtual {v0, v1, v2}, Lg/sq;->g(ZZ)V

    return-void

    :pswitch_2
    invoke-static {}, Lg/akj;->j()Lg/akj;

    move-result-object v0

    iget-object v1, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    :try_start_1
    new-instance v3, Lg/vh;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/api/plugin/dq;

    invoke-direct {v4, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/dq;-><init>(Landroid/content/Context;)V

    const-string v5, "npth_log.db"

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lg/vh;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lg/akj;->f:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    sget-object v1, Lg/eca;->c:Landroid/content/Context;

    :goto_4
    new-instance v1, Lg/fdc;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/akj;->h:Ljava/lang/Object;

    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    :try_start_2
    sget-object v1, Lg/eca;->e:Lg/dzh;

    iget-object v1, v1, Lg/dzh;->i:Ljava/lang/Object;

    invoke-static {}, Lg/acw;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v1, :cond_6

    goto :goto_5

    :catch_1
    :cond_6
    invoke-static {}, Lg/gs;->af()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lg/dyn;

    invoke-direct {v3}, Lg/dyn;-><init>()V

    iput-object v0, v3, Lg/dyn;->b:Ljava/lang/Object;

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    iget-boolean v0, p0, Lg/asy;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lg/emr;->b:Lg/emr;

    if-nez v1, :cond_8

    const-class v1, Lg/emr;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lg/emr;->b:Lg/emr;

    if-nez v2, :cond_7

    new-instance v2, Lg/emr;

    invoke-direct {v2, v0}, Lg/emr;-><init>(Landroid/content/Context;)V

    sput-object v2, Lg/emr;->b:Lg/emr;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_6
    monitor-exit v1

    goto :goto_8

    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :goto_8
    sget-object v0, Lg/emr;->b:Lg/emr;

    iget-object v0, v0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/cei;

    iget-boolean v1, v0, Lg/cei;->d:Z

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    new-instance v1, Lg/aah;

    invoke-direct {v1, v0}, Lg/aah;-><init>(Lg/cei;)V

    iput-boolean v7, v0, Lg/cei;->d:Z

    :cond_a
    :goto_9
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/asy;->a:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    invoke-virtual {v0}, Lg/cms;->bannerAdHide()Z

    iget-object v3, v0, Lg/elf;->aa:Lg/elf;

    const-string v4, "app_locked"

    new-instance v5, Lg/byz;

    const-string v6, "app"

    const v7, 0x7f120480

    invoke-direct {v5, v6, v7}, Lg/byz;-><init>(Ljava/lang/String;I)V

    const-string v6, "codekk_op"

    const-string v7, "op_source_tool_app"

    invoke-static {v3, v6, v7}, Lg/bys;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/ert;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "apps"

    const/high16 v8, 0x7f120000

    const v9, 0x7f0800a5

    invoke-direct {v6, v7, v8, v9}, Lg/ert;-><init>(Ljava/lang/String;II)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.ac"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "manifest"

    const v8, 0x7f120004

    const v9, 0x7f08008f

    invoke-direct {v6, v7, v8, v9, v1}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    iput-boolean v1, v6, Lg/ert;->f:Z

    const-string v7, "c.e.ab"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "top_activity"

    sget-boolean v9, Lg/cyz;->c:Z

    if-eqz v9, :cond_b

    const v9, 0x7f120002

    goto :goto_a

    :cond_b
    const v9, 0x7f120003

    :goto_a
    const v10, 0x7f080028

    const/4 v11, 0x2

    invoke-direct {v6, v7, v9, v10, v11}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.aa"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/4 v9, 0x5

    invoke-direct {v7, v9}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "layout_inspector"

    const v9, 0x7f120103

    const v10, 0x7f0800e2

    invoke-direct {v6, v7, v9, v10, v8}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.ag"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "decompile"

    const v8, 0x7f1200f3

    const v9, 0x7f0800df

    const/16 v10, 0x8

    invoke-direct {v6, v7, v8, v9, v10}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    iput-boolean v1, v6, Lg/ert;->f:Z

    const-string v7, "c.e.af"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "apk_puller"

    const v9, 0x7f0800c8

    const/16 v11, 0x10

    const v12, 0x7f1200f5

    invoke-direct {v6, v7, v12, v9, v11}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.ad"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    invoke-direct {v7, v10}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "so_puller"

    const v9, 0x7f12010b

    const/16 v10, 0x20

    const v11, 0x7f0800d9

    invoke-direct {v6, v7, v9, v11, v10}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.ae"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/16 v9, 0x9

    invoke-direct {v7, v9}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    invoke-static {v3}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v6

    invoke-virtual {v6}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v7

    if-eqz v7, :cond_c

    iget v9, v7, Lg/fxe$e;->adPosition:I

    invoke-virtual {v6, v7}, Lg/atf;->h(Lg/fxe$e;)Z

    move-result v6

    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    invoke-static {v3}, Lg/enx;->b(Landroid/content/Context;)Lg/ert;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    :cond_c
    new-instance v6, Lg/ert;

    const-string v7, "permissions"

    const v9, 0x7f12007e

    invoke-direct {v6, v7, v9, v11}, Lg/ert;-><init>(Ljava/lang/String;II)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    iput-boolean v1, v6, Lg/ert;->l:Z

    const-string v7, "c.e.PermissionActivity"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/16 v9, 0xa

    invoke-direct {v7, v9}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    invoke-static {v3, v4, v5}, Lg/acr;->ai(Lg/elf;Ljava/lang/String;Lg/byz;)V

    const-string v4, "locked_design"

    new-instance v5, Lg/byz;

    const-string v6, "design"

    const v7, 0x7f120483

    invoke-direct {v5, v6, v7}, Lg/byz;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x17

    iput v6, v5, Lg/byz;->b:I

    new-instance v7, Lg/ert;

    const-string v9, "color_picker"

    const v10, 0x7f0800c3

    const/16 v11, 0x40

    const v12, 0x7f120168

    invoke-direct {v7, v9, v12, v10, v11}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v7, Lg/ert;->p:Z

    iput v6, v7, Lg/ert;->h:I

    const-string v6, "c.e.ada"

    iput-object v6, v7, Lg/ert;->v:Ljava/lang/String;

    new-instance v6, Lg/gdm;

    const/16 v9, 0xb

    invoke-direct {v6, v9}, Lg/gdm;-><init>(I)V

    iput-object v6, v7, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v7}, Lg/byz;->e(Lg/ert;)V

    new-instance v6, Lg/ert;

    const-string v7, "text_copy"

    const v9, 0x7f0800a6

    const/16 v10, 0x80

    const v11, 0x7f12010c

    invoke-direct {v6, v7, v11, v9, v10}, Lg/ert;-><init>(Ljava/lang/String;III)V

    iput-boolean v1, v6, Lg/ert;->p:Z

    const-string v7, "c.e.adb"

    iput-object v7, v6, Lg/ert;->v:Ljava/lang/String;

    new-instance v7, Lg/gdm;

    const/16 v9, 0xc

    invoke-direct {v7, v9}, Lg/gdm;-><init>(I)V

    iput-object v7, v6, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v5, v6}, Lg/byz;->e(Lg/ert;)V

    invoke-static {v3, v4, v5}, Lg/acr;->ai(Lg/elf;Ljava/lang/String;Lg/byz;)V

    sput-boolean v1, Lg/gk;->d:Z

    invoke-static {v3}, Lg/cwq;->f(Lg/cms;)Lg/cwq;

    move-result-object v3

    invoke-virtual {v3}, Lg/cwq;->i()V

    iget-object v3, v0, Lg/elf;->aa:Lg/elf;

    sget v4, Lc/b/b;->d:I

    const-string v4, "op_updatable_default"

    invoke-static {v3, v4, v2}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v3, v0, Lg/elf;->aa:Lg/elf;

    const-string v4, "setting_sns"

    invoke-static {v3, v4, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v2, v0, Lg/elf;->aa:Lg/elf;

    invoke-static {v2}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "cacu"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lg/fzn;->q(Landroid/content/Intent;)V

    const v2, 0x7f090360

    :try_start_4
    invoke-virtual {v0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    const v3, 0x7f1201fa

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    :catch_2
    nop

    :goto_b
    iget-boolean v2, p0, Lg/asy;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lg/elf;->aa:Lg/elf;

    const v3, 0x7f1203ae

    invoke-static {v2, v3, v1}, Lg/gm;->i(Landroid/content/Context;II)V

    :cond_d
    invoke-static {v0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v0

    new-instance v1, Lg/fbc;

    invoke-direct {v1, v8}, Lg/fbc;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lg/haz;->ad(Lg/bsx;Lg/byq;Lg/bwb;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
