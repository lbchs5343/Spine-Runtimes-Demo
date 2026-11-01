.class public final Lg/edt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/edt;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzbcf;

.field public final c:Lcom/google/android/gms/internal/ads/zzbcg;

.field public final d:Lcom/google/android/gms/internal/ads/zzbcl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/edt;

    invoke-direct {v0}, Lg/edt;-><init>()V

    sput-object v0, Lg/edt;->a:Lg/edt;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbcl;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/edt;->b:Lcom/google/android/gms/internal/ads/zzbcf;

    iput-object v1, p0, Lg/edt;->c:Lcom/google/android/gms/internal/ads/zzbcg;

    iput-object v2, p0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    return-void
.end method
