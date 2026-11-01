.class public final Lg/esl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzhfx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhfx;I)V
    .locals 0

    iput p2, p0, Lg/esl;->a:I

    iput-object p1, p0, Lg/esl;->b:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/esl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/esl;->b:Lcom/google/android/gms/internal/ads/zzhfx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lg/fli;

    invoke-direct {v1, v0}, Lg/fli;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfin;->zzc()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v0

    iget-object v1, p0, Lg/esl;->b:Lcom/google/android/gms/internal/ads/zzhfx;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdxr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxr;->zza()Lcom/google/android/gms/internal/ads/zzdxq;

    move-result-object v1

    new-instance v2, Lg/atn;

    invoke-direct {v2, v0, v1}, Lg/atn;-><init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdxq;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
