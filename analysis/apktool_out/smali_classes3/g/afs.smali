.class public final Lg/afs;
.super Lg/cpj;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/gkf;


# direct methods
.method public synthetic constructor <init>(Lg/gkf;)V
    .locals 0

    iput-object p1, p0, Lg/afs;->a:Lg/gkf;

    invoke-direct {p0}, Lg/cpj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg(Lg/aeh;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/afs;->zzh(Lg/aeh;I)V

    return-void
.end method

.method public final zzh(Lg/aeh;I)V
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    sget-object p1, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance p2, Lg/aku;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
