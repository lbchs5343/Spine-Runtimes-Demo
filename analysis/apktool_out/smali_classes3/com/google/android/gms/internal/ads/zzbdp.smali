.class public final Lcom/google/android/gms/internal/ads/zzbdp;
.super Lg/gwy;
.source "SourceFile"


# instance fields
.field public final a:Lg/gwy;

.field public final b:Lcom/google/android/gms/internal/ads/zzdsr;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/List;

.field public final e:Lcom/google/android/gms/internal/ads/zzbds;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbds;Lg/gwy;Lcom/google/android/gms/internal/ads/zzdsr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdp;->e:Lcom/google/android/gms/internal/ads/zzbds;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdp;->b:Lcom/google/android/gms/internal/ads/zzdsr;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjx:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdp;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/gwy;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/gwy;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onActivityResized(IILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lg/gwy;->onActivityResized(IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/gwy;->onMessageChannelReady(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/gwy;->onNavigationEvent(ILandroid/os/Bundle;)V

    :cond_0
    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object v0, p2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->e:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbds;->zzi(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdp;->d:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lg/ti;->v:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzju:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p1, v2

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzbds;->h:J

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbds;->e:Lcom/google/android/gms/internal/ads/zzbdq;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;-><init>(Lcom/google/android/gms/internal/ads/zzbds;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbds;->e:Lcom/google/android/gms/internal/ads/zzbdq;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->m()V

    new-instance p1, Landroid/util/Pair;

    const-string p2, "pe"

    const-string v0, "pact_reqpmc"

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/util/Pair;

    aput-object p1, p2, v1

    const-string p1, "pact_action"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->b:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-static {v0, p1, p2}, Lg/dzm;->z(Lcom/google/android/gms/internal/ads/zzdsr;Ljava/lang/String;[Landroid/util/Pair;)V

    :cond_2
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "gpa"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "pact_con"

    new-instance v3, Landroid/util/Pair;

    const-string v4, "pe"

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v1, v2, [Landroid/util/Pair;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pact_action"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdp;->b:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-static {v3, v2, v1}, Lg/dzm;->z(Lcom/google/android/gms/internal/ads/zzdsr;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdp;->e:Lcom/google/android/gms/internal/ads/zzbds;

    const-string v2, "paw_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbds;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lg/gwy;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->a:Lg/gwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/gwy;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final zza()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
