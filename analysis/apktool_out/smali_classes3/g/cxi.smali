.class public final Lg/cxi;
.super Lg/acr;
.source "SourceFile"


# static fields
.field public static final ck:J

.field public static final cl:J

.field public static final cm:J

.field public static final cn:Lsun/misc/Unsafe;

.field public static final co:J

.field public static final cp:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lg/mz;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, Lg/dpw;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lg/cxi;->cm:J

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lg/cxi;->ck:J

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lg/cxi;->cl:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lg/cxi;->cp:J

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lg/cxi;->co:J

    sput-object v1, Lg/cxi;->cn:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bz(Lcom/google/android/gms/internal/ads/zzgcy;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lg/cxi;->cn:Lsun/misc/Unsafe;

    sget-wide v2, Lg/cxi;->cl:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgda;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ca(Lg/mz;Lg/mz;)V
    .locals 3

    sget-object v0, Lg/cxi;->cn:Lsun/misc/Unsafe;

    sget-wide v1, Lg/cxi;->co:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final cc(Lcom/google/android/gms/internal/ads/zzgcy;Lg/hcy;Lg/hcy;)Z
    .locals 6

    sget-object v0, Lg/cxi;->cn:Lsun/misc/Unsafe;

    sget-wide v2, Lg/cxi;->ck:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgda;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final cd(Lcom/google/android/gms/internal/ads/zzgcy;)Lg/mz;
    .locals 3

    sget-object v0, Lg/mz;->a:Lg/mz;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgcy;->v:Lg/mz;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lg/cxi;->ch(Lcom/google/android/gms/internal/ads/zzgcy;Lg/mz;Lg/mz;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final ch(Lcom/google/android/gms/internal/ads/zzgcy;Lg/mz;Lg/mz;)Z
    .locals 6

    sget-object v0, Lg/cxi;->cn:Lsun/misc/Unsafe;

    sget-wide v2, Lg/cxi;->cm:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgda;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ci(Lg/mz;Ljava/lang/Thread;)V
    .locals 3

    sget-object v0, Lg/cxi;->cn:Lsun/misc/Unsafe;

    sget-wide v1, Lg/cxi;->cp:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final cj(Lcom/google/android/gms/internal/ads/zzgcy;)Lg/hcy;
    .locals 3

    sget-object v0, Lg/hcy;->a:Lg/hcy;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgcy;->x:Lg/hcy;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lg/cxi;->cc(Lcom/google/android/gms/internal/ads/zzgcy;Lg/hcy;Lg/hcy;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method
