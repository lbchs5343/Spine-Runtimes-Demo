.class public final synthetic Lcom/google/android/gms/internal/ads/zzhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/gaz;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lg/gaz;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zza:Lg/gaz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zza:Lg/gaz;

    iget-object v0, v0, Lg/gaz;->b:Lg/gdw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    const-string v0, "Unknown focus change type: "

    const-string v2, "AudioFocusManager"

    invoke-static {v1, v0, v2}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lg/gdw;->h(I)V

    invoke-virtual {v0, v3}, Lg/gdw;->g(I)V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lg/gdw;->g(I)V

    invoke-virtual {v0}, Lg/gdw;->f()V

    invoke-virtual {v0, v3}, Lg/gdw;->h(I)V

    return-void

    :cond_2
    if-eq v1, v3, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/gdw;->h(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gdw;->g(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/gdw;->h(I)V

    return-void
.end method
