.class public final Lg/xe;
.super Lcom/google/android/gms/internal/ads/zzbzd;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/emg;


# direct methods
.method public constructor <init>(Lg/emg;)V
    .locals 0

    iput-object p1, p0, Lg/xe;->a:Lg/emg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/xe;->a:Lg/emg;

    invoke-virtual {v0, p1}, Lg/emg;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Lg/emr;

    new-instance p3, Lg/fwk;

    invoke-direct {p3, p1}, Lg/fwk;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xe

    invoke-direct {p2, p1, p3}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lg/xe;->a:Lg/emg;

    invoke-virtual {p1, p2}, Lg/emg;->e(Lg/emr;)V

    return-void
.end method
