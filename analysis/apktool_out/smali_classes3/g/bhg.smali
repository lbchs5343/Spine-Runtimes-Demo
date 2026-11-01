.class public final Lg/bhg;
.super Lcom/google/android/gms/internal/ads/zzfw;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgy;


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzgx;

.field public final c:Ljava/util/ArrayDeque;

.field public d:J

.field public e:I

.field public f:Ljava/io/InputStream;

.field public final g:I

.field public final h:J

.field public final i:I

.field public j:J

.field public k:J

.field public l:Z

.field public m:Lcom/google/android/gms/internal/ads/zzgi;

.field public n:Ljava/net/HttpURLConnection;

.field public o:J

.field public final p:J

.field public final q:Ljava/lang/String;

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg/bhg;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzces;IIJJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lg/bhg;->q:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgx;-><init>()V

    iput-object p1, p0, Lg/bhg;->b:Lcom/google/android/gms/internal/ads/zzgx;

    iput p3, p0, Lg/bhg;->g:I

    iput p4, p0, Lg/bhg;->i:I

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lg/bhg;->c:Ljava/util/ArrayDeque;

    iput-wide p5, p0, Lg/bhg;->p:J

    iput-wide p7, p0, Lg/bhg;->h:J

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfw;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final aa()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lg/bhg;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/bhg;->n:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final z(IJJ)Ljava/net/HttpURLConnection;
    .locals 9

    const-string v1, "Unable to connect to "

    iget-object v0, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v3, p0, Lg/bhg;->g:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v3, p0, Lg/bhg;->i:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v3, p0, Lg/bhg;->b:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zza()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    move v7, p1

    :goto_1
    move-object v5, p2

    goto/16 :goto_4

    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Range"

    invoke-virtual {v0, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "User-Agent"

    iget-object p3, p0, Lg/bhg;->q:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept-Encoding"

    const-string p3, "identity"

    invoke-virtual {v0, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GET"

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    iget-object p2, p0, Lg/bhg;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    iget-object p2, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    iput p3, p0, Lg/bhg;->e:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 p2, 0xc8

    const/16 p4, 0x7d0

    if-lt p3, p2, :cond_2

    const/16 p2, 0x12b

    if-gt p3, p2, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iget-object p3, p0, Lg/bhg;->f:Ljava/io/InputStream;

    if-eqz p3, :cond_1

    new-instance p3, Ljava/io/SequenceInputStream;

    iget-object p5, p0, Lg/bhg;->f:Ljava/io/InputStream;

    invoke-direct {p3, p5, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object p2, p3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_3

    :cond_1
    :goto_2
    iput-object p2, p0, Lg/bhg;->f:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :goto_3
    invoke-virtual {p0}, Lg/bhg;->aa()V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object p5, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-direct {p3, p2, p5, p4, p1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw p3

    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {p0}, Lg/bhg;->aa()V

    new-instance p2, Lg/fjf;

    iget p3, p0, Lg/bhg;->e:I

    iget-object p5, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    const-string v0, "Response code: "

    invoke-static {p3, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p5, p4, p1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw p2

    :catch_2
    move-exception v0

    move-object p3, v0

    move-object v4, p3

    invoke-virtual {p0}, Lg/bhg;->aa()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v5, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw v2

    :catch_3
    move-exception v0

    move v7, p1

    move-object p2, v0

    goto/16 :goto_1

    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v6, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v8, v7

    const/16 v7, 0x7d0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw v3
.end method

.method public final zza([BII)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-wide v2, v1, Lg/bhg;->d:J

    iget-wide v4, v1, Lg/bhg;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    cmp-long v9, v2, v6

    if-nez v9, :cond_1

    return v8

    :cond_1
    iget-wide v2, v1, Lg/bhg;->o:J

    add-long/2addr v2, v4

    int-to-long v9, v0

    iget-wide v4, v1, Lg/bhg;->h:J

    add-long/2addr v2, v9

    add-long/2addr v2, v4

    iget-wide v6, v1, Lg/bhg;->j:J

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    cmp-long v0, v2, v13

    if-lez v0, :cond_2

    iget-wide v2, v1, Lg/bhg;->r:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    iget-wide v6, v1, Lg/bhg;->p:J

    add-long/2addr v6, v13

    sub-long/2addr v6, v4

    const-wide/16 v4, -0x1

    add-long/2addr v6, v4

    add-long v15, v13, v9

    add-long/2addr v4, v15

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const/4 v2, 0x2

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lg/bhg;->z(IJJ)Ljava/net/HttpURLConnection;

    iput-wide v5, v1, Lg/bhg;->j:J

    move-wide v6, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    add-long/2addr v6, v11

    iget-wide v2, v1, Lg/bhg;->o:J

    sub-long/2addr v6, v2

    iget-wide v2, v1, Lg/bhg;->k:J

    sub-long/2addr v6, v2

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, v1, Lg/bhg;->f:Ljava/io/InputStream;

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v8, :cond_3

    iget-wide v2, v1, Lg/bhg;->k:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lg/bhg;->k:J

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfw;->zzg(I)V

    return v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v3, v1, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    const/16 v4, 0x7d0

    const/4 v5, 0x2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgi;)J
    .locals 11

    iput-object p1, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/bhg;->k:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    iget-wide v2, p0, Lg/bhg;->p:J

    const-wide/16 v8, -0x1

    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v4

    add-long v6, v2, v8

    iput-wide v4, p0, Lg/bhg;->o:J

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg/bhg;->z(IJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v2, Lg/bhg;->n:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Range"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lg/bhg;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    iput-wide v6, v2, Lg/bhg;->d:J

    iget-wide v0, v2, Lg/bhg;->o:J

    add-long/2addr v0, v6

    add-long/2addr v0, v8

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lg/bhg;->r:J

    goto :goto_1

    :cond_1
    iget-wide v6, v2, Lg/bhg;->o:J

    sub-long v6, v0, v6

    iput-wide v6, v2, Lg/bhg;->d:J

    add-long/2addr v0, v8

    iput-wide v0, v2, Lg/bhg;->r:J

    :goto_1
    iput-wide v4, v2, Lg/bhg;->j:J

    iput-boolean v3, v2, Lg/bhg;->l:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfw;->y(Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-wide v0, v2, Lg/bhg;->d:J

    return-wide v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected Content-Range ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->d(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lg/fjf;

    const-string v4, "Invalid content range: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7d0

    invoke-direct {v1, v0, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg/bhg;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg/bhg;->f:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v4, p0, Lg/bhg;->m:Lcom/google/android/gms/internal/ads/zzgi;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgi;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lg/bhg;->f:Ljava/io/InputStream;

    invoke-virtual {p0}, Lg/bhg;->aa()V

    iget-boolean v1, p0, Lg/bhg;->l:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lg/bhg;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfw;->w()V

    :cond_1
    return-void

    :goto_1
    iput-object v1, p0, Lg/bhg;->f:Ljava/io/InputStream;

    invoke-virtual {p0}, Lg/bhg;->aa()V

    iget-boolean v1, p0, Lg/bhg;->l:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lg/bhg;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfw;->w()V

    :cond_2
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lg/bhg;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
