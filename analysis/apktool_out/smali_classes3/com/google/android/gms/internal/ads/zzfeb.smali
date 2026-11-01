.class public final synthetic Lcom/google/android/gms/internal/ads/zzfeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/no;

.field public final synthetic zzb:Lg/abz;


# direct methods
.method public synthetic constructor <init>(Lg/no;Lg/abz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zza:Lg/no;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Lg/abz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zza:Lg/no;

    iget-object v0, v0, Lg/no;->c:Lcom/google/android/gms/internal/ads/zzfeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeg;->b:Lcom/google/android/gms/internal/ads/zzfdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfeb;->zzb:Lg/abz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdw;->zzdB(Lg/abz;)V

    return-void
.end method
