.class public final Lg/alu;
.super Lg/grh;
.source "SourceFile"


# instance fields
.field public final a:Lg/df;

.field public final b:Lcom/google/android/gms/internal/ads/zzbml;


# direct methods
.method public constructor <init>(Lg/df;Lcom/google/android/gms/internal/ads/zzbml;)V
    .locals 0

    invoke-direct {p0}, Lg/grh;-><init>()V

    iput-object p1, p0, Lg/alu;->a:Lg/df;

    iput-object p2, p0, Lg/alu;->b:Lcom/google/android/gms/internal/ads/zzbml;

    return-void
.end method


# virtual methods
.method public final zzb(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lg/alu;->a:Lg/df;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/df;->c(Lg/bfi;)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lg/alu;->a:Lg/df;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/alu;->b:Lcom/google/android/gms/internal/ads/zzbml;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lg/df;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
