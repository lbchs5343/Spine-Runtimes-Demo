.class public final Lg/fnu;
.super Lg/bda;
.source "SourceFile"


# instance fields
.field public final a:Lg/nl;


# direct methods
.method public constructor <init>(Lg/nl;)V
    .locals 0

    invoke-direct {p0}, Lg/bda;-><init>()V

    iput-object p1, p0, Lg/fnu;->a:Lg/nl;

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/nl;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/nl;->c()V

    :cond_0
    return-void
.end method

.method public final zze(I)V
    .locals 0

    return-void
.end method

.method public final zzf(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/nl;->d(Lg/bfi;)V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/nl;->e()V

    :cond_0
    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/nl;->a()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    iget-object v0, p0, Lg/fnu;->a:Lg/nl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/nl;->b()V

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 0

    return-void
.end method
