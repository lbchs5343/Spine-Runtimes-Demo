.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lg/ddk;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    const-string p1, "com.google.android.gms.ads.internal.client.ILiteSdkInfo"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbpg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    return-object v0
.end method

.method public getLiteSdkVersion()Lg/gpo;
    .locals 4

    new-instance v0, Lg/gpo;

    const v1, 0xe8814a2

    const v2, 0xe8813d8

    const-string v3, "23.5.0"

    invoke-direct {v0, v1, v2, v3}, Lg/gpo;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
