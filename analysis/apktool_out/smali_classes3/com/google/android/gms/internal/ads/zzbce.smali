.class public abstract Lcom/google/android/gms/internal/ads/zzbce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbce;->b:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbce;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbce;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbce;->a:Ljava/lang/Object;

    sget-object p1, Lg/edt;->a:Lg/edt;

    iget-object p1, p1, Lg/edt;->b:Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbcf;->zzd(Lcom/google/android/gms/internal/ads/zzbce;)V

    return-void
.end method

.method public static zzf(ILjava/lang/String;FF)Lcom/google/android/gms/internal/ads/zzbce;
    .locals 6

    new-instance v0, Lg/ams;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v5, 0x3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lg/ams;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzg(ILjava/lang/String;II)Lcom/google/android/gms/internal/ads/zzbce;
    .locals 6

    new-instance v0, Lg/ams;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v5, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lg/ams;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzh(ILjava/lang/String;JJ)Lcom/google/android/gms/internal/ads/zzbce;
    .locals 0

    new-instance p0, Lg/ams;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    move-object p2, p1

    const/4 p1, 0x1

    const/4 p5, 0x2

    invoke-direct/range {p0 .. p5}, Lg/ams;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static zzi(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbce;
    .locals 6

    new-instance v0, Lg/ams;

    const/4 v1, 0x1

    const/4 v5, 0x4

    const-string v2, "gads:sdk_core_constants:experiment_id"

    const/4 v3, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lg/ams;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Lg/edt;->a:Lg/edt;

    iget-object p0, p0, Lg/edt;->b:Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcf;->zzc(Lcom/google/android/gms/internal/ads/zzbce;)V

    return-object v0
.end method


# virtual methods
.method public abstract e(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public abstract f(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public abstract zzb(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract zzd(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbce;->b:I

    return v0
.end method

.method public final zzj()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbcl;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbce;->a:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbce;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbce;->c:Ljava/lang/String;

    return-object v0
.end method
