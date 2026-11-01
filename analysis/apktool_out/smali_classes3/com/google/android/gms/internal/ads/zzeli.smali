.class public final Lcom/google/android/gms/internal/ads/zzeli;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdgn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeli;->a:Lcom/google/android/gms/internal/ads/zzdgn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzele;)Ljava/lang/Object;
    .locals 2

    new-instance p3, Lg/sx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzelf;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsg;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeli;->a:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdgn;->zze(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzdfn;)Lcom/google/android/gms/internal/ads/zzdfk;

    move-result-object p1

    new-instance p2, Lg/bgb;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lg/bgb;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzele;->zzd(Lg/bmo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfk;->zzg()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object p1

    return-object p1
.end method
