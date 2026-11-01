.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdo;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavc;

.field public final synthetic zzc:Lg/akx;

.field public final synthetic zzd:Lg/gfo;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzeea;

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzffs;

.field public final synthetic zzg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Lg/akx;Lg/gfo;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzb:Lcom/google/android/gms/internal/ads/zzavc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzc:Lg/akx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzd:Lg/gfo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zze:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzf:Lcom/google/android/gms/internal/ads/zzffs;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcfv;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lg/dcy;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->h:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzche;->zza()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzb:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zze:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzd:Lg/gfo;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzc:Lg/akx;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzf:Lcom/google/android/gms/internal/ads/zzffs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbl;->zza()Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v4

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzcfx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzche;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzbdu;Lg/akx;Lcom/google/android/gms/internal/ads/zzbdc;Lg/fjn;Lg/gfo;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcan;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcan;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcfu;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzcfu;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzchc;->zzB(Lcom/google/android/gms/internal/ads/zzcha;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzg:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcfk;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
