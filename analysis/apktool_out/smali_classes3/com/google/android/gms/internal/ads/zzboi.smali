.class public final Lcom/google/android/gms/internal/ads/zzboi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fbc;

.field public static final b:Lg/gpu;


# instance fields
.field public final c:Lcom/google/android/gms/internal/ads/zzbnu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbc;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lg/fbc;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzboi;->a:Lg/fbc;

    new-instance v0, Lg/gpu;

    invoke-direct {v0, v1}, Lg/gpu;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzboi;->b:Lg/gpu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/akx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfko;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnu;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzboi;->a:Lg/fbc;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzboi;->b:Lg/gpu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbnu;-><init>(Landroid/content/Context;Lg/akx;Ljava/lang/String;Lg/ano;Lg/ano;Lcom/google/android/gms/internal/ads/zzfko;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboi;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbom;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboi;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbom;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbor;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboi;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbor;-><init>(Lcom/google/android/gms/internal/ads/zzbnu;)V

    return-object v0
.end method
