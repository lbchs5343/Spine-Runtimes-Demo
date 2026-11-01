.class public final synthetic Lg/foq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lg/foq;

.field public static final synthetic b:Lg/foq;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/foq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/foq;-><init>(I)V

    sput-object v0, Lg/foq;->b:Lg/foq;

    new-instance v0, Lg/foq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/foq;-><init>(I)V

    sput-object v0, Lg/foq;->a:Lg/foq;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/foq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lg/foq;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->d:Lg/foq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->b:Lg/foq;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zzd()Lcom/google/android/gms/internal/ads/zzfpb;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfpb;->h:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfpb;->k:Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfpb;->g:Lcom/google/android/gms/internal/ads/zzfov;

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzfpb;->f:Lcom/google/android/gms/internal/ads/zzfou;

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfpb;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfna;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzfpb;->i:J

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zzi()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zze()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v5, 0x0

    if-lez v0, :cond_3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zze()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzfou;->zza(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzb()Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v13

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzfou;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzfon;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "notVisibleReason"

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v14, "Error with setting not visible reason"

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfon;->zzf(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9, v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzfov;->zzc(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zzf()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfod;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfoc;ZZ)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfon;->zzf(Lorg/json/JSONObject;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zzf()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v3, v6, v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzfov;->zzd(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfov;->zzb()V

    :goto_3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfou;->zzg()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzfpb;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfpa;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfpa;->zzb()V

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzfoz;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfoz;->zza()V

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfob;->zza()Lcom/google/android/gms/internal/ads/zzfob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfob;->zzc()V

    return-void

    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :pswitch_3
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lg/eq;->d:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lg/eq;->b:Ljava/util/concurrent/CountDownLatch;

    :goto_5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    :catchall_0
    move-exception v0

    sget-object v1, Lg/eq;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catch_1
    sget-object v0, Lg/eq;->b:Ljava/util/concurrent/CountDownLatch;

    goto :goto_5

    :goto_6
    return-void

    :pswitch_4
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unBlockSigquit(Z)V

    return-void

    :pswitch_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unBlockSigquit(Z)V

    return-void

    :pswitch_6
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0

    :pswitch_7
    sget-object v0, Lg/duh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :pswitch_8
    sget-object v0, Lg/duh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
