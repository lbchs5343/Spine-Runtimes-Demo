.class public Lcom/google/android/gms/internal/ads/zzhfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Lcom/google/android/gms/internal/ads/zzard;


# static fields
.field public static final b:Lg/epe;


# instance fields
.field public c:Lcom/google/android/gms/internal/ads/zzarc;

.field public d:J

.field public e:J

.field public f:Lcom/google/android/gms/internal/ads/zzaqz;

.field public g:Lcom/google/android/gms/internal/ads/zzhfj;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/epe;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfe;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfi;->b:Lg/epe;

    const-class v0, Lcom/google/android/gms/internal/ads/zzhfi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->e:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhfi;->b:Lg/epe;

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfi;->zzc()Lcom/google/android/gms/internal/ads/zzarc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfi;->zzc()Lcom/google/android/gms/internal/ads/zzarc;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzarc;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfi;->b:Lg/epe;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhfi;->e:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhfj;->zze(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->f:Lcom/google/android/gms/internal/ads/zzaqz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzb(Lcom/google/android/gms/internal/ads/zzhfj;Lcom/google/android/gms/internal/ads/zzard;)Lcom/google/android/gms/internal/ads/zzarc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catch_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfi;->b:Lg/epe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->c:Lcom/google/android/gms/internal/ads/zzarc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhfi;->b:Lg/epe;

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfo;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhfo;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhfj;JLcom/google/android/gms/internal/ads/zzaqz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhfj;->zze(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->e:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhfi;->f:Lcom/google/android/gms/internal/ads/zzaqz;

    return-void
.end method
