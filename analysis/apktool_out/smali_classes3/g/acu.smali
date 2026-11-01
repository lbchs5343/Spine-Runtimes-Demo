.class public final Lg/acu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Landroid/content/Context;

.field public final e:J

.field public final f:Ljava/lang/Long;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lg/apu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/acu;->a:Z

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/acu;->d:Landroid/content/Context;

    iput-object p3, p0, Lg/acu;->f:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lg/acu;->j:Lg/apu;

    iget-object p1, p2, Lg/apu;->zzf:Ljava/lang/String;

    iput-object p1, p0, Lg/acu;->g:Ljava/lang/String;

    iget-object p1, p2, Lg/apu;->zze:Ljava/lang/String;

    iput-object p1, p0, Lg/acu;->i:Ljava/lang/String;

    iget-object p1, p2, Lg/apu;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lg/acu;->b:Ljava/lang/String;

    iget-boolean p1, p2, Lg/apu;->zzc:Z

    iput-boolean p1, p0, Lg/acu;->a:Z

    iget-wide v1, p2, Lg/apu;->zzb:J

    iput-wide v1, p0, Lg/acu;->e:J

    iget-object p1, p2, Lg/apu;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lg/acu;->h:Ljava/lang/String;

    iget-object p1, p2, Lg/apu;->zzg:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg/acu;->c:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
