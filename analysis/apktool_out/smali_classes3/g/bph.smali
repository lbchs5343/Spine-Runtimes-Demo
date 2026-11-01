.class public final Lg/bph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzchq;

.field public final c:Lcom/google/android/gms/internal/ads/zzhgp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchq;Lcom/google/android/gms/internal/ads/zzhgg;I)V
    .locals 0

    iput p3, p0, Lg/bph;->a:I

    iput-object p1, p0, Lg/bph;->b:Lcom/google/android/gms/internal/ads/zzchq;

    iput-object p2, p0, Lg/bph;->c:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/bph;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bph;->b:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lg/bph;->c:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfin;->zzc()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v2

    new-instance v3, Lg/sq;

    invoke-direct {v3, v0, v1, v2}, Lg/sq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsr;Lcom/google/android/gms/internal/ads/zzges;)V

    return-object v3

    :pswitch_0
    iget-object v0, p0, Lg/bph;->b:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckz;->zza()Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeri;->zzc()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lg/bph;->c:Lcom/google/android/gms/internal/ads/zzhgp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcid;->zza()Lg/akx;

    move-result-object v2

    new-instance v3, Lg/bsn;

    invoke-direct {v3, v0, v1, v2}, Lg/bsn;-><init>(Landroid/content/Context;Ljava/util/List;Lg/akx;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
