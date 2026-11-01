.class public final synthetic Lcom/google/android/gms/internal/ads/zzevn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzevo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzevo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevn;->zza:Lcom/google/android/gms/internal/ads/zzevo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevn;->zza:Lcom/google/android/gms/internal/ads/zzevo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzevo;->c:Landroid/content/Context;

    invoke-static {v2}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v3

    invoke-virtual {v3}, Lg/ccb;->d()Z

    move-result v3

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->z:Lg/esy;

    move-object v4, v2

    move v2, v3

    invoke-static {v4}, Lg/esy;->s(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzevo;->d:Lg/akx;

    iget-object v5, v5, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/16 v8, 0x3e8

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzevo;->a:Ljava/lang/String;

    const-string v0, "com.google.android.gms.ads.dynamite"

    invoke-static {v4, v0, v7}, Lg/dxw;->p(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v4, v0}, Lg/dxw;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move-object v4, v5

    move v5, v6

    move v6, v8

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzevp;-><init>(ZZLjava/lang/String;ZIIILjava/lang/String;)V

    return-object v1
.end method
