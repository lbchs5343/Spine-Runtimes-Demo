.class public final Lg/fff;
.super Lcom/google/android/gms/internal/ads/zzbyw;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/internal/ads/zzhgg;

.field public final d:Lcom/google/android/gms/internal/ads/zzhfx;

.field public final e:Lcom/google/android/gms/internal/ads/zzhgg;

.field public final f:Lcom/google/android/gms/internal/ads/zzhfx;

.field public final g:Lcom/google/android/gms/internal/ads/zzhgg;

.field public final h:Lg/cvb;

.field public final i:Lcom/google/android/gms/internal/ads/zzhfx;

.field public final j:Lcom/google/android/gms/internal/ads/zzhfx;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lg/czz;Lg/cmo;Lcom/google/android/gms/internal/ads/zzbyv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbyw;-><init>()V

    iput-object p2, p0, Lg/fff;->h:Lg/cvb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p1

    iput-object p1, p0, Lg/fff;->i:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p3

    iput-object p3, p0, Lg/fff;->d:Lcom/google/android/gms/internal/ads/zzhfx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbyj;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v0

    iput-object v0, p0, Lg/fff;->e:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p2

    iput-object p2, p0, Lg/fff;->f:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p4

    iput-object p4, p0, Lg/fff;->j:Lcom/google/android/gms/internal/ads/zzhfx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyl;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbyl;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object p3

    iput-object p3, p0, Lg/fff;->c:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbzb;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object p1

    iput-object p1, p0, Lg/fff;->g:Lcom/google/android/gms/internal/ads/zzhgg;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/zzbym;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbym;

    iget-object v1, p0, Lg/fff;->c:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dst;

    iget-object v2, p0, Lg/fff;->h:Lg/cvb;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbym;-><init>(Lg/cvb;Lg/dst;)V

    return-object v0
.end method
