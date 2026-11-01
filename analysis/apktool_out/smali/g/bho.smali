.class public final Lg/bho;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bho;


# instance fields
.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Lg/dnx;

.field public final f:Z

.field public final g:Ljava/util/Set;

.field public final h:Lg/im;

.field public final i:Z

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/bho;

    invoke-direct {v0}, Lg/bho;-><init>()V

    sput-object v0, Lg/bho;->a:Lg/bho;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lg/dnx;->NOT_REQUIRED:Lg/dnx;

    const-string v1, "requiredNetworkType"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/im;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/im;-><init>(Landroid/net/NetworkRequest;)V

    iput-object v1, p0, Lg/bho;->h:Lg/im;

    iput-object v0, p0, Lg/bho;->e:Lg/dnx;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bho;->i:Z

    iput-boolean v0, p0, Lg/bho;->c:Z

    iput-boolean v0, p0, Lg/bho;->d:Z

    iput-boolean v0, p0, Lg/bho;->f:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg/bho;->j:J

    iput-wide v0, p0, Lg/bho;->b:J

    sget-object v0, Lg/gpk;->a:Lg/gpk;

    iput-object v0, p0, Lg/bho;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lg/bho;)V
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lg/bho;->i:Z

    iput-boolean v0, p0, Lg/bho;->i:Z

    iget-boolean v0, p1, Lg/bho;->c:Z

    iput-boolean v0, p0, Lg/bho;->c:Z

    iget-object v0, p1, Lg/bho;->h:Lg/im;

    iput-object v0, p0, Lg/bho;->h:Lg/im;

    iget-object v0, p1, Lg/bho;->e:Lg/dnx;

    iput-object v0, p0, Lg/bho;->e:Lg/dnx;

    iget-boolean v0, p1, Lg/bho;->d:Z

    iput-boolean v0, p0, Lg/bho;->d:Z

    iget-boolean v0, p1, Lg/bho;->f:Z

    iput-boolean v0, p0, Lg/bho;->f:Z

    iget-object v0, p1, Lg/bho;->g:Ljava/util/Set;

    iput-object v0, p0, Lg/bho;->g:Ljava/util/Set;

    iget-wide v0, p1, Lg/bho;->j:J

    iput-wide v0, p0, Lg/bho;->j:J

    iget-wide v0, p1, Lg/bho;->b:J

    iput-wide v0, p0, Lg/bho;->b:J

    return-void
.end method

.method public constructor <init>(Lg/im;Lg/dnx;ZZZZJJLjava/util/Set;)V
    .locals 1

    const-string v0, "requiredNetworkType"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bho;->h:Lg/im;

    iput-object p2, p0, Lg/bho;->e:Lg/dnx;

    iput-boolean p3, p0, Lg/bho;->i:Z

    iput-boolean p4, p0, Lg/bho;->c:Z

    iput-boolean p5, p0, Lg/bho;->d:Z

    iput-boolean p6, p0, Lg/bho;->f:Z

    iput-wide p7, p0, Lg/bho;->j:J

    iput-wide p9, p0, Lg/bho;->b:J

    iput-object p11, p0, Lg/bho;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-class v1, Lg/bho;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/bho;

    iget-boolean v1, p0, Lg/bho;->i:Z

    iget-boolean v2, p1, Lg/bho;->i:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lg/bho;->c:Z

    iget-boolean v2, p1, Lg/bho;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lg/bho;->d:Z

    iget-boolean v2, p1, Lg/bho;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lg/bho;->f:Z

    iget-boolean v2, p1, Lg/bho;->f:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-wide v1, p0, Lg/bho;->j:J

    iget-wide v3, p1, Lg/bho;->j:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    return v0

    :cond_6
    iget-wide v1, p0, Lg/bho;->b:J

    iget-wide v3, p1, Lg/bho;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p1}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lg/bho;->e:Lg/dnx;

    iget-object v2, p1, Lg/bho;->e:Lg/dnx;

    if-eq v1, v2, :cond_9

    return v0

    :cond_9
    iget-object v0, p0, Lg/bho;->g:Ljava/util/Set;

    iget-object p1, p1, Lg/bho;->g:Ljava/util/Set;

    invoke-static {v0, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lg/bho;->e:Lg/dnx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/bho;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/bho;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/bho;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/bho;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/bho;->j:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/bho;->b:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/bho;->g:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final k()Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lg/bho;->h:Lg/im;

    iget-object v0, v0, Lg/im;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lg/bho;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraints{requiredNetworkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bho;->e:Lg/dnx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/bho;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/bho;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresBatteryNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/bho;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresStorageNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/bho;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerUpdateDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/bho;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerMaxDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/bho;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentUriTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bho;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
