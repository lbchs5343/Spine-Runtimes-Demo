.class public final Lg/cht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ffs;


# instance fields
.field public final a:I

.field public final b:I

.field public final h:Lg/fwt;

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:J


# direct methods
.method public constructor <init>(Lg/fwt;Ljava/lang/String;IIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cht;->h:Lg/fwt;

    iput-object p2, p0, Lg/cht;->j:Ljava/lang/String;

    iput p3, p0, Lg/cht;->a:I

    iput p4, p0, Lg/cht;->b:I

    iput p5, p0, Lg/cht;->k:I

    iput-wide p6, p0, Lg/cht;->i:J

    iput-wide p8, p0, Lg/cht;->l:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lg/cht;->l:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lg/cht;->i:J

    return-wide v0
.end method

.method public final e()[B
    .locals 5

    iget-object v0, p0, Lg/cht;->h:Lg/fwt;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lg/fwt;->i:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lg/fwt;->n(Lg/cht;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lg/cht;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :try_start_1
    iget-object v1, v0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    invoke-static {v1, p0}, Lg/gs;->an(Ljava/nio/ByteBuffer;Lg/cht;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0, p0, v1}, Lg/fwt;->s(Lg/cht;Ljava/lang/Exception;)V

    invoke-virtual {v0, p0}, Lg/fwt;->t(Lg/cht;)Lg/ffs;

    move-result-object v1

    invoke-interface {v1}, Lg/ffs;->e()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, v0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iget v2, p0, Lg/cht;->b:I

    iget-wide v3, p0, Lg/cht;->l:J

    long-to-int v4, v3

    new-array v3, v4, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v3

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lg/cht;->h:Lg/fwt;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lg/fwt;->i:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lg/fwt;->n(Lg/cht;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget v1, p0, Lg/cht;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :try_start_1
    iget-object v1, v0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iget v2, p0, Lg/cht;->b:I

    iget-wide v3, p0, Lg/cht;->i:J

    long-to-int v4, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v2, Lg/fvc;

    invoke-direct {v2, v1}, Lg/fvc;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v2, v1, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0, p0, v1}, Lg/fwt;->s(Lg/cht;Ljava/lang/Exception;)V

    invoke-virtual {v0, p0}, Lg/fwt;->t(Lg/cht;)Lg/ffs;

    move-result-object v1

    invoke-interface {v1}, Lg/ffs;->g()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, v0, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    iget v2, p0, Lg/cht;->b:I

    iget-wide v3, p0, Lg/cht;->l:J

    long-to-int v4, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v3, Lg/fvc;

    invoke-direct {v3, v1}, Lg/fvc;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_1
    iget-boolean v1, v0, Lg/fwt;->m:Z

    if-eqz v1, :cond_2

    new-instance v1, Lg/cwf;

    iget-wide v4, p0, Lg/cht;->l:J

    invoke-direct {v1, v4, v5, v3}, Lg/cwf;-><init>(JLjava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0

    return-object v3

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cht;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final isDirectory()Z
    .locals 2

    iget-object v0, p0, Lg/cht;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/cht;->h:Lg/fwt;

    iget-object v1, v1, Lg/fwt;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cht;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
