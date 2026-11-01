.class public final Lg/fsy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Lg/gyk;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/ph;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg/ph;->d:Ljava/lang/Object;

    sget-object v2, Lg/gyk;->ATTEMPT_MIGRATION:Lg/gyk;

    invoke-virtual {v0, v2}, Lg/ph;->j(Lg/gyk;)V

    iput-object v1, v0, Lg/ph;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/ph;->i()Lg/fsy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/gyk;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fsy;->d:Ljava/lang/String;

    iput-object p2, p0, Lg/fsy;->f:Lg/gyk;

    iput-object p3, p0, Lg/fsy;->g:Ljava/lang/String;

    iput-object p4, p0, Lg/fsy;->b:Ljava/lang/String;

    iput-wide p5, p0, Lg/fsy;->c:J

    iput-wide p7, p0, Lg/fsy;->e:J

    iput-object p9, p0, Lg/fsy;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/fsy;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lg/fsy;

    iget-object v1, p0, Lg/fsy;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lg/fsy;->d:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p1, Lg/fsy;->f:Lg/gyk;

    iget-object v3, p1, Lg/fsy;->h:Ljava/lang/String;

    iget-object v4, p1, Lg/fsy;->b:Ljava/lang/String;

    iget-object v5, p1, Lg/fsy;->g:Ljava/lang/String;

    iget-object v6, p0, Lg/fsy;->f:Lg/gyk;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg/fsy;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez v5, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lg/fsy;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v4, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v4, p0, Lg/fsy;->c:J

    iget-wide v6, p1, Lg/fsy;->c:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    iget-wide v4, p0, Lg/fsy;->e:J

    iget-wide v6, p1, Lg/fsy;->e:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    iget-object p1, p0, Lg/fsy;->h:Ljava/lang/String;

    if-nez p1, :cond_4

    if-nez v3, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lg/fsy;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int v1, v1, v2

    iget-object v3, p0, Lg/fsy;->f:Lg/gyk;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v2

    iget-object v3, p0, Lg/fsy;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int v1, v1, v2

    iget-object v3, p0, Lg/fsy;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v1, v3

    mul-int v1, v1, v2

    iget-wide v3, p0, Lg/fsy;->c:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v4, v3

    xor-int/2addr v1, v4

    mul-int v1, v1, v2

    iget-wide v3, p0, Lg/fsy;->e:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    xor-int/2addr v1, v4

    mul-int v1, v1, v2

    iget-object v2, p0, Lg/fsy;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Lg/ph;
    .locals 3

    new-instance v0, Lg/ph;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lg/fsy;->d:Ljava/lang/String;

    iput-object v1, v0, Lg/ph;->c:Ljava/lang/Object;

    iget-object v1, p0, Lg/fsy;->f:Lg/gyk;

    iput-object v1, v0, Lg/ph;->e:Ljava/lang/Object;

    iget-object v1, p0, Lg/fsy;->g:Ljava/lang/String;

    iput-object v1, v0, Lg/ph;->f:Ljava/lang/Object;

    iget-object v1, p0, Lg/fsy;->b:Ljava/lang/String;

    iput-object v1, v0, Lg/ph;->a:Ljava/lang/Object;

    iget-wide v1, p0, Lg/fsy;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg/ph;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lg/fsy;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg/ph;->d:Ljava/lang/Object;

    iget-object v1, p0, Lg/fsy;->h:Ljava/lang/String;

    iput-object v1, v0, Lg/ph;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fsy;->f:Lg/gyk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fsy;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fsy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/fsy;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/fsy;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fsy;->h:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
