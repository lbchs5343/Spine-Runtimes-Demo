.class public final synthetic Lcom/google/android/gms/internal/ads/zzij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxg;


# instance fields
.field public final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzue;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzacl;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzue;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacw;)V

    return-object v1
.end method
