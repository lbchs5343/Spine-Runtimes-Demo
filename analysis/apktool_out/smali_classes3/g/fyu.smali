.class public final synthetic Lg/fyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gfk;


# direct methods
.method public synthetic constructor <init>(Lg/gfk;I)V
    .locals 0

    iput p2, p0, Lg/fyu;->a:I

    iput-object p1, p0, Lg/fyu;->b:Lg/gfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 10

    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v2, v1, Lg/ti;->g:Lg/bkm;

    iget-object v3, v0, Lg/gfk;->f:Landroid/content/Context;

    iget-object v4, v0, Lg/gfk;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/gfk;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzeK:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v6, Lg/edt;->a:Lg/edt;

    iget-object v7, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v4, v0}, Lg/bkm;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lg/bkm;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const-string v0, "Not linked for in app preview."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "gct"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lg/bkm;->d:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcn;->zziO:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v6, v6, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    const-string v6, "0"

    iget-object v9, v2, Lg/bkm;->d:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "2"

    iget-object v9, v2, Lg/bkm;->d:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2, v6}, Lg/bkm;->l(Z)V

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v1

    if-nez v6, :cond_3

    const-string v6, ""

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    check-cast v1, Lg/cmo;

    invoke-virtual {v1, v6}, Lg/cmo;->bc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    iget-object v1, v2, Lg/bkm;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object v5, v2, Lg/bkm;->f:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v2, Lg/bkm;->d:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Creative is not pushed for this device."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    const-string v0, "There was no creative pushed from DFP to the device."

    invoke-static {v3, v0, v7, v7}, Lg/bkm;->h(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_5
    iget-object v1, v2, Lg/bkm;->d:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "The app is not linked for creative preview."

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v0}, Lg/bkm;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, v2, Lg/bkm;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Device is linked for in app preview."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    const-string v0, "The device is successfully linked for creative preview."

    invoke-static {v3, v0, v7, v8}, Lg/bkm;->h(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_2
    const-string v0, "In-app preview failed to load because of a system error. Please try again later."

    invoke-static {v3, v0, v8, v8}, Lg/bkm;->h(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/fyu;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->g:Lg/bkm;

    iget-object v0, v0, Lg/gfk;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lg/bkm;->m(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    iget-object v1, v0, Lg/gfk;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lg/gfk;->q(Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->g:Lg/bkm;

    iget-object v0, v0, Lg/gfk;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lg/bkm;->m(Landroid/content/Context;)V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lg/fyu;->c()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    const/4 v1, 0x4

    iput v1, v0, Lg/gfk;->l:I

    invoke-virtual {v0}, Lg/gfk;->p()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->g:Lg/bkm;

    iget-object v2, v0, Lg/gfk;->c:Ljava/lang/String;

    iget-object v3, v0, Lg/gfk;->e:Ljava/lang/String;

    iget-object v4, v0, Lg/gfk;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lg/bkm;->j()Z

    move-result v5

    iget-object v0, v0, Lg/gfk;->f:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, v3}, Lg/bkm;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v1, Lg/bkm;->c:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput-boolean v6, v1, Lg/bkm;->a:Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lg/bkm;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v0, v3, v4, v2}, Lg/bkm;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "Device is linked for debug signals."

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    const-string v1, "The device is successfully linked for troubleshooting."

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lg/bkm;->h(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, v2, v3}, Lg/bkm;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_5
    iget-object v0, p0, Lg/fyu;->b:Lg/gfk;

    iget-object v1, v0, Lg/gfk;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lg/gfk;->q(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
