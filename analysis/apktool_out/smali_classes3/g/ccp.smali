.class public final Lg/ccp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/kq;
.implements Lcom/google/android/gms/internal/ads/zzpx;


# instance fields
.field public final synthetic b:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/ccp;->b:I

    iput-object p2, p0, Lg/ccp;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lg/hcu;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v1, [Lg/kq;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lg/kq;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lg/kq;->a(Ljava/lang/Class;)Lg/hcu;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v2, [Lg/kq;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lg/kq;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e()Lg/bgm;
    .locals 2

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    return-object v0
.end method

.method public zza(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lg/ccp;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get offline buffered ping database: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxv;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxv;->c:Lcom/google/android/gms/internal/ads/zzecl;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecl;->zzi(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(J)V
    .locals 1

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v0, :cond_0

    check-cast v0, Lg/fge;

    iget-object v0, v0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpm;->zzv(J)V

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/ccp;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    return-void

    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiv;->zza(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error executing function on offline buffered ping database: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfff;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdxv;->c:Lcom/google/android/gms/internal/ads/zzecl;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfew;->zzf:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzecl;->zzi(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxv;->c:Lcom/google/android/gms/internal/ads/zzecl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzfew;->zzg:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzecl;->zzj(J)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzc(JJJJ)V
    .locals 6

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bg()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v3

    const-string v0, "Spurious audio timestamp (frame position mismatch): "

    const-string v5, ", "

    invoke-static {p1, p2, v0, v5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzd(JJJJ)V
    .locals 6

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bg()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v3

    const-string v0, "Spurious audio timestamp (system clock mismatch): "

    const-string v5, ", "

    invoke-static {p1, p2, v0, v5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zze(IJ)V
    .locals 11

    iget-object v0, p0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqw;->aj:J

    sub-long v9, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    check-cast v0, Lg/fge;

    iget-object v0, v0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    move v6, p1

    move-wide v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzpm;->zzx(IJJ)V

    :cond_0
    return-void
.end method
