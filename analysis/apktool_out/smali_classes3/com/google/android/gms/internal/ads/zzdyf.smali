.class public final Lcom/google/android/gms/internal/ads/zzdyf;
.super Lcom/google/android/gms/internal/ads/zzbvo;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdyh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lcom/google/android/gms/internal/ads/zzdyh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lg/gvi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lcom/google/android/gms/internal/ads/zzdyh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyh;->f:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1}, Lg/gvi;->zza()Lg/gya;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyx;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lcom/google/android/gms/internal/ads/zzdyh;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdyh;->e:Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdyh;->f:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbvx;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyx;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lcom/google/android/gms/internal/ads/zzdyh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdyh;->f:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
