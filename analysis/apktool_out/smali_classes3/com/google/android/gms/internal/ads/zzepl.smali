.class public final synthetic Lcom/google/android/gms/internal/ads/zzepl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lg/fro;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepp;

    iget-object v1, p1, Lg/fro;->a:Ljava/lang/String;

    iget p1, p1, Lg/fro;->b:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzepp;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
