.class public abstract Lg/cto;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioTrack;Lg/fqp;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/fqp;->a:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p0, p1}, Lg/fnh;->ad(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
