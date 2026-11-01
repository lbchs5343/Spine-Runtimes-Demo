.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcvq;

.field public final synthetic zzb:Lg/dcy;

.field public final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvq;Lg/dcy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zza:Lcom/google/android/gms/internal/ads/zzcvq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzb:Lg/dcy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvp;->zza:Lcom/google/android/gms/internal/ads/zzcvq;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcvp;->zzb:Lg/dcy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcvp;->zzc:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcvq;->l:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dcy;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzgS:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcvq;->j:Lg/gil;

    check-cast v2, Lg/cmo;

    invoke-virtual {v2}, Lg/cmo;->ax()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcvq;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcvq;->g:Landroid/content/pm/PackageInfo;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcvq;->e:Ljava/util/List;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcvq;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcvq;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcvq;->i:Lg/akx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcvq;->b:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffo;->zzb()Z

    move-result v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzbvx;-><init>(Landroid/os/Bundle;Lg/akx;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfhj;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-object v3
.end method
