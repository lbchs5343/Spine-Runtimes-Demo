.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lg/akx;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzffo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzffo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzb:Lg/akx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzc:Lcom/google/android/gms/internal/ads/zzffo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfet;

    new-instance v0, Lg/gfk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zza:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/gfk;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzB:Ljava/lang/String;

    iput-object v1, v0, Lg/gfk;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzC:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/gfk;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzb:Lg/akx;

    iget-object p1, p1, Lg/akx;->afmaVersion:Ljava/lang/String;

    iput-object p1, v0, Lg/gfk;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzc:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iput-object p1, v0, Lg/gfk;->c:Ljava/lang/String;

    return-object v0
.end method
