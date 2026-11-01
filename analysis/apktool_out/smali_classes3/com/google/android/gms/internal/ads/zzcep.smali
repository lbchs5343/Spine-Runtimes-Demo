.class public final synthetic Lcom/google/android/gms/internal/ads/zzcep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzces;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzces;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzces;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabg;Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zztp;)[Lcom/google/android/gms/internal/ads/zzln;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrc;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzta;->zza:Lcom/google/android/gms/internal/ads/zzta;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzces;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqk;->zzc()Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v8

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsf;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzrc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsl;Lcom/google/android/gms/internal/ads/zzta;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzpu;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzces;->j:Landroid/content/Context;

    move-object v5, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzsf;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x1

    const/high16 v12, 0x41f00000    # 30.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsl;Lcom/google/android/gms/internal/ads/zzta;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabg;IF)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzln;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method
