.class public final Lcom/google/android/gms/internal/ads/zzfqr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "os.arch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfxe;->zzu:Lcom/google/android/gms/internal/ads/zzfxe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "supported_abis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v2, "CPU_ABI:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";CPU_ABI2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v2, "ELF:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "dbg:"

    invoke-static {p0, p1, v1, v0}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    const/16 p0, 0xfa7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzb(ILjava/lang/String;)Lg/ci;

    return-void
.end method

.method public static zza(I)Z
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpp;)I
    .locals 14

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "lib"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/16 v1, 0x1399

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x3e8

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez p0, :cond_0

    const-string p0, "No lib/"

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzb(ILjava/lang/String;)Lg/ci;

    :goto_0
    const/16 p0, 0x3e8

    goto/16 :goto_7

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgcf;

    const-string v11, ".*\\.so$"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    array-length v0, p0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    aget-object p0, p0, v9

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x14

    :try_start_1
    new-array v1, p0, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-ne v11, p0, :cond_2

    new-array p0, v12, [B

    aput-byte v9, p0, v9

    aput-byte v9, p0, v10

    aget-byte v11, v1, v7

    if-ne v11, v12, :cond_3

    invoke-static {v1, v8, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const/4 p0, 0x1

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    const/16 v11, 0x13

    :try_start_3
    aget-byte v11, v1, v11

    aput-byte v11, p0, v9

    const/16 v11, 0x12

    aget-byte v11, v1, v11

    aput-byte v11, p0, v10

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    if-eq p0, v6, :cond_8

    const/16 v11, 0x28

    if-eq p0, v11, :cond_7

    const/16 v11, 0x3e

    if-eq p0, v11, :cond_6

    const/16 v11, 0xb7

    if-eq p0, v11, :cond_5

    const/16 v11, 0xf3

    if-eq p0, v11, :cond_4

    invoke-static {v1, v8, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/16 p0, 0x8

    goto :goto_7

    :cond_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x3

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x5

    goto :goto_7

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V

    goto :goto_2

    :cond_9
    :goto_6
    const-string p0, "No .so"

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzb(ILjava/lang/String;)Lg/ci;

    goto/16 :goto_0

    :goto_7
    if-ne p0, v5, :cond_16

    new-instance p0, Ljava/util/HashSet;

    const-string v0, "i686"

    const-string v1, "armv71"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfxe;->zzu:Lcom/google/android/gms/internal/ads/zzfxe;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfxe;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    :cond_a
    const-wide/16 v11, 0x0

    const/16 p0, 0x7e8

    :try_start_7
    const-class v5, Landroid/os/Build;

    const-string v13, "SUPPORTED_ABIS"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_b

    array-length v13, v5

    if-lez v13, :cond_b

    aget-object v5, v5, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_b

    :catch_1
    move-exception v5

    goto :goto_8

    :catch_2
    move-exception v5

    goto :goto_9

    :goto_8
    invoke-virtual {p1, p0, v11, v12, v5}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    goto :goto_a

    :goto_9
    invoke-virtual {p1, p0, v11, v12, v5}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    :cond_b
    :goto_a
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v5, :cond_c

    goto :goto_b

    :cond_c
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    :cond_d
    :goto_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "Empty dev arch"

    invoke-static {v8, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V

    :goto_c
    const/4 p0, 0x1

    goto :goto_d

    :cond_e
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "x86"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    const/4 p0, 0x5

    goto :goto_d

    :cond_10
    const-string p0, "x86_64"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x7

    goto :goto_d

    :cond_11
    const-string p0, "arm64-v8a"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x6

    goto :goto_d

    :cond_12
    const-string p0, "armeabi-v7a"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_13
    const/4 p0, 0x3

    goto :goto_d

    :cond_14
    const-string p0, "riscv64"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x8

    goto :goto_d

    :cond_15
    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->a([BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V

    goto :goto_c

    :cond_16
    :goto_d
    if-eq p0, v10, :cond_1c

    if-eq p0, v6, :cond_1b

    if-eq p0, v7, :cond_1a

    if-eq p0, v3, :cond_19

    if-eq p0, v2, :cond_18

    if-eq p0, v4, :cond_17

    const-string v0, "null"

    goto :goto_e

    :cond_17
    const-string v0, "RISCV64"

    goto :goto_e

    :cond_18
    const-string v0, "X86_64"

    goto :goto_e

    :cond_19
    const-string v0, "ARM64"

    goto :goto_e

    :cond_1a
    const-string v0, "X86"

    goto :goto_e

    :cond_1b
    const-string v0, "ARM7"

    goto :goto_e

    :cond_1c
    const-string v0, "UNSUPPORTED"

    :goto_e
    const/16 v1, 0x139a

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzb(ILjava/lang/String;)Lg/ci;

    return p0
.end method
