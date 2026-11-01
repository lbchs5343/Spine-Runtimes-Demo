.class public final Lg/fge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpr;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzrc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->zzb(Ljava/lang/Exception;)V

    return-void
.end method
