.class public final synthetic Lcom/google/android/gms/internal/ads/zzewx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzewz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzewz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewx;->zza:Lcom/google/android/gms/internal/ads/zzewz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewx;->zza:Lcom/google/android/gms/internal/ads/zzewz;

    check-cast p1, Lg/dez;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzewz;->c:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzewz;->b:Z

    if-nez v3, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzdi:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzdj:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftl;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v4

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p1, Lg/dez;->a:Ljava/lang/String;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdo:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzewz;->d:Z

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzftl;->zzi(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v2, "AdIdInfoSignalSource.getPaidV1"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzexa;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzexa;-><init>(Lg/dez;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfth;)V

    return-object v0
.end method
