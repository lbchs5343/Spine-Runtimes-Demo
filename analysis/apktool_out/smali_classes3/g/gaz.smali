.class public final Lg/gaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Lg/gdw;


# direct methods
.method public constructor <init>(Lg/gdw;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gaz;->b:Lg/gdw;

    iput-object p2, p0, Lg/gaz;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(Lg/gaz;I)V

    iget-object p1, p0, Lg/gaz;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
