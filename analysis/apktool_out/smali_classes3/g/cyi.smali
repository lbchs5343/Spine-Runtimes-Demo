.class public final Lg/cyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzhgp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhgg;I)V
    .locals 0

    iput p2, p0, Lg/cyi;->a:I

    iput-object p1, p0, Lg/cyi;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/cyi;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cyi;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsr;

    new-instance v1, Lg/bgq;

    invoke-direct {v1, v0}, Lg/bgq;-><init>(Lcom/google/android/gms/internal/ads/zzdsr;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lg/cyi;->b:Lcom/google/android/gms/internal/ads/zzhgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bvr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfin;->zzc()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzded;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzded;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
