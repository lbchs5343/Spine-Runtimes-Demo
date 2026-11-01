.class public final Lg/cnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdl;


# instance fields
.field public a:Landroid/os/Message;


# virtual methods
.method public final zza()V
    .locals 1

    iget-object v0, p0, Lg/cnz;->a:Landroid/os/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cnz;->a:Landroid/os/Message;

    invoke-static {p0}, Lg/em;->c(Lg/cnz;)V

    return-void
.end method
