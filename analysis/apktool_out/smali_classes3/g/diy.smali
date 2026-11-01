.class public abstract Lg/diy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Lsun/misc/Unsafe;

.field public static final d:J

.field public static final e:Ljava/lang/Class;

.field public static final f:Lg/frx;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v1, Ljava/lang/Class;

    invoke-static {}, Lg/diy;->n()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lg/diy;->c:Lsun/misc/Unsafe;

    invoke-static {}, Lg/dgm;->b()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lg/diy;->e:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lg/diy;->i(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/diy;->i(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v6, Lg/asx;

    invoke-direct {v6, v0, v7}, Lg/asx;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    new-instance v6, Lg/asx;

    invoke-direct {v6, v0, v8}, Lg/asx;-><init>(Lsun/misc/Unsafe;I)V

    :cond_2
    :goto_0
    sput-object v6, Lg/diy;->f:Lg/frx;

    const/4 v3, 0x2

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    const-string v9, "logMissingMethod"

    const-string v10, "com.google.protobuf.UnsafeUtil"

    const-class v11, Lg/diy;

    const-string v12, "getLong"

    const-string v13, "objectFieldOffset"

    const-class v14, Ljava/lang/reflect/Field;

    const-class v15, Ljava/lang/Object;

    if-nez v6, :cond_3

    :goto_1
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lg/frx;->i:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v14, v6, v8

    invoke-virtual {v0, v13, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v15, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {v0, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lg/diy;->p()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    const/16 v16, 0x0

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v10, v9, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    sput-boolean v8, Lg/diy;->a:Z

    sget-object v0, Lg/diy;->f:Lg/frx;

    if-nez v0, :cond_5

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_5
    iget-object v0, v0, Lg/frx;->i:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v14, v6, v16

    invoke-virtual {v0, v13, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v1, v6, v16

    const-string v8, "arrayBaseOffset"

    invoke-virtual {v0, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v1, v6, v16

    const-string v1, "arrayIndexScale"

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v15, v1, v16

    aput-object v2, v1, v7

    const-string v6, "getInt"

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v15, v6, v16

    aput-object v2, v6, v7

    aput-object v4, v6, v3

    const-string v4, "putInt"

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v7

    invoke-virtual {v0, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v7

    aput-object v2, v4, v3

    const-string v6, "putLong"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v7

    const-string v6, "getObject"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v15, v1, v16

    aput-object v2, v1, v7

    aput-object v15, v1, v3

    const-string v2, "putObject"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v10, v9, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_4
    sput-boolean v0, Lg/diy;->b:Z

    const-class v0, [B

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lg/diy;->d:J

    const-class v0, [Z

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lg/diy;->k(Ljava/lang/Class;)I

    invoke-static {v0}, Lg/diy;->m(Ljava/lang/Class;)V

    invoke-static {}, Lg/diy;->p()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lg/diy;->f:Lg/frx;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lg/frx;->n(Ljava/lang/reflect/Field;)V

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    sput-boolean v7, Lg/diy;->g:Z

    return-void
.end method

.method public static h(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0, p1, p2, p3}, Lg/frx;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    sget v1, Lg/dgm;->a:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lg/diy;->e:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v7, "peekLong"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v3, v7, v4

    const-string v8, "pokeLong"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v7, v8, v6

    aput-object v3, v8, v4

    const-string v9, "pokeInt"

    invoke-virtual {v2, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v3, v8, v6

    const-string v3, "peekInt"

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object p0, v3, v1

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v6

    const-string v8, "pokeByte"

    invoke-virtual {v2, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object p0, v3, v1

    const-string v8, "peekByte"

    invoke-virtual {v2, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v0, v8, v6

    aput-object v7, v8, v4

    aput-object v7, v8, v5

    const-string v9, "pokeByteArray"

    invoke-virtual {v2, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object p0, v3, v1

    aput-object v0, v3, v6

    aput-object v7, v3, v4

    aput-object v7, v3, v5

    const-string p0, "peekByteArray"

    invoke-virtual {v2, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v1
.end method

.method public static j(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p0}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v3

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lg/frx;->m(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static k(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lg/diy;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0}, Lg/frx;->j(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lg/diy;->c:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static m(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lg/diy;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0}, Lg/frx;->q(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static n()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lg/asa;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bridge synthetic o(JLjava/lang/Object;)Z
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p()Ljava/lang/reflect/Field;
    .locals 4

    sget v0, Lg/dgm;->a:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public static bridge synthetic q(JLjava/lang/Object;)Z
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int p0, p2, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p0}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v3

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lg/frx;->m(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static s(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0, p1, p2, p3}, Lg/frx;->m(Ljava/lang/Object;JI)V

    return-void
.end method
