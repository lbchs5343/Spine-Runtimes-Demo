.class public final Lcom/google/android/gms/internal/ads/zzcvw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffg;

.field public final b:Lcom/google/android/gms/internal/ads/zzcvo;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ads/zzefg;

.field public final e:Lcom/google/android/gms/internal/ads/zzffo;

.field public final f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvu;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvu;->e:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->e:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvu;->f:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->f:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvu;->a:Lcom/google/android/gms/internal/ads/zzffg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->a:Lcom/google/android/gms/internal/ads/zzffg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvu;->b:Lcom/google/android/gms/internal/ads/zzcvo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvw;->b:Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvu;->d:Lcom/google/android/gms/internal/ads/zzefg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->d:Lcom/google/android/gms/internal/ads/zzefg;

    return-void
.end method


# virtual methods
.method public final g()Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->e:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->b:Lcom/google/android/gms/internal/ads/zzcvo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzg(Lcom/google/android/gms/internal/ads/zzcvo;)Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvw;->d:Lcom/google/android/gms/internal/ads/zzefg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvu;->zzd(Lcom/google/android/gms/internal/ads/zzefg;)Lcom/google/android/gms/internal/ads/zzcvu;

    return-object v0
.end method
