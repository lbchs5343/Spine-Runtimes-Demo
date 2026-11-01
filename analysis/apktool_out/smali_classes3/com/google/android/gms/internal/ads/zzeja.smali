.class public final synthetic Lcom/google/android/gms/internal/ads/zzeja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzejc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzefb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzefb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Lcom/google/android/gms/internal/ads/zzejc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Lcom/google/android/gms/internal/ads/zzefb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Lcom/google/android/gms/internal/ads/zzejc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Lcom/google/android/gms/internal/ads/zzefb;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzejc;->k:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object p1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzE:Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzefb;->zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Lg/dcy;

    move-result-object v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzR:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzejc;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzejc;->l:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzejc;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    invoke-virtual {v5, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzeiv;->k(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lg/dcy;Lcom/google/android/gms/internal/ads/zzfln;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzejc;->b:Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    return-object v3
.end method
