.class public final Lcom/google/android/gms/internal/ads/zzgwc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgwc;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgwc;


# instance fields
.field public final a:Lg/bjz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwh;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgwk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzb()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The Android Project"

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/bzv;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lg/bzv;-><init>(ILjava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->a:Lg/bjz;

    return-void

    :cond_0
    new-instance v0, Lg/bgb;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lg/bgb;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lg/eap;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lg/eap;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs zzb([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->a:Lg/bjz;

    invoke-interface {v0, p1}, Lg/bjz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
