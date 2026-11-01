.class public final Lcom/google/android/gms/internal/ads/zzazq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzazs;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazq;->b:Lcom/google/android/gms/internal/ads/zzazs;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazq;->a:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Landroid/util/Base64OutputStream;

    invoke-direct {v3, v0, v4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v4, Ljava/util/PriorityQueue;

    new-instance v5, Lg/aqn;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lg/aqn;-><init>(I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzazq;->a:I

    invoke-direct {v4, v6, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v5, 0x0

    :goto_1
    array-length v7, p1

    if-ge v5, v7, :cond_3

    aget-object v7, p1, v5

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzazr;->zzb(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_2

    const/4 v8, 0x6

    invoke-static {v7, v6, v8, v4}, Lcom/google/android/gms/internal/ads/zzazv;->zzc([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzazu;

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzazq;->b:Lcom/google/android/gms/internal/ads/zzazs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazu;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzazs;->zzb(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const-string p1, "HashManager: Unable to convert to Base64."

    :try_start_1
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-static {p1, v2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    invoke-static {p1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-object v1
.end method
