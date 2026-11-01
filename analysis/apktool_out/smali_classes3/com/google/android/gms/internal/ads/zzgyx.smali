.class public abstract Lcom/google/android/gms/internal/ads/zzgyx;
.super Lcom/google/android/gms/internal/ads/zzgwy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgyx<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgyr<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgwy<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:I = -0x80000000

.field private static final zzb:I = 0x7fffffff

.field private static zzc:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzgyx<",
            "**>;>;"
        }
    .end annotation
.end field

.field static final zzr:I = 0x7fffffff

.field static final zzs:I


# instance fields
.field private zzd:I

.field protected zzt:Lcom/google/android/gms/internal/ads/zzhbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzc:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->zzc()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    return-void
.end method

.method public static bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    :try_start_0
    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgxv;->b:Lg/hj;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/hj;

    invoke-direct {v1, p1}, Lg/hj;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lg/ah;->l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-interface {v0, p0}, Lg/ah;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzhbm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgzm;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzm;

    throw p0

    :cond_1
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgzm;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzm;

    throw p0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzm;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_3
    throw p0
.end method

.method public static bn(Lcom/google/android/gms/internal/ads/zzgzj;)Lcom/google/android/gms/internal/ads/zzgzj;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzf(I)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object p0

    return-object p0
.end method

.method public static bo(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->cd(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static bp(Lcom/google/android/gms/internal/ads/zzgyx;[BLcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    array-length v0, p1

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bq(Lcom/google/android/gms/internal/ads/zzgyx;[BILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static bq(Lcom/google/android/gms/internal/ads/zzgyx;[BILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 6

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v1

    :try_start_0
    sget-object p0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    new-instance v5, Lg/fse;

    invoke-direct {v5, p3}, Lg/fse;-><init>(Lcom/google/android/gms/internal/ads/zzgyh;)V

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lg/ah;->d(Ljava/lang/Object;[BIILg/fse;)V

    invoke-interface {v0, v1}, Lg/ah;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzhbm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgzm;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzm;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzm;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    throw p0
.end method

.method public static br(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cd(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static final bs(Lcom/google/android/gms/internal/ads/zzgyx;Z)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zza:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    invoke-interface {v0, p0}, Lg/ah;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgyw;->zzb:Lcom/google/android/gms/internal/ads/zzgyw;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static bt(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lg/gbc;->t(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbi()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyx;->zzc:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static bu(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzl()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzy(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static bv(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static bw(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzG(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static bx(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cf(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    return-object p0
.end method

.method public static by(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bu(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static varargs bz(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzgyx;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ca(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bv(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    return-object p0
.end method

.method public static cb(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyx;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyx;->cn()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cc(Lcom/google/android/gms/internal/ads/zzgyx;[B)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2

    array-length v0, p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v1, Lg/gxd;->a:Lg/gxd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->bq(Lcom/google/android/gms/internal/ads/zzgyx;[BILcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static cd(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzE(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lg/bfo;

    invoke-direct {v1, p1, v0}, Lg/bfo;-><init>(Ljava/io/InputStream;I)V

    const/16 p1, 0x1000

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzG(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzy(I)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzm;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    throw p0
.end method

.method public static ce(Lcom/google/android/gms/internal/ads/zzgyx;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbm;-><init>(Lcom/google/android/gms/internal/ads/zzhai;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static cf(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->c(I[BI)Lg/aez;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lg/gbc;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lg/dff;

    invoke-direct {v0, p1}, Lg/dff;-><init>(Ljava/nio/ByteBuffer;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->c(I[BI)Lg/aez;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyx;->bv(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static cg(Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzh(I)Lcom/google/android/gms/internal/ads/zzgzf;

    move-result-object p0

    return-object p0
.end method

.method public static ch(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzG(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bm(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ce(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p0
.end method

.method public static zzbe(Lcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzgzc;ILcom/google/android/gms/internal/ads/zzhca;ZLjava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgyv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzhai;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/android/gms/internal/ads/zzhai;",
            "Lcom/google/android/gms/internal/ads/zzgzc;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzhca;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzgyv<",
            "TContainingType;TType;>;"
        }
    .end annotation

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgyv;

    new-instance p6, Lg/dmd;

    const/4 v0, 0x1

    invoke-direct {p6, p3, p4, v0, p5}, Lg/dmd;-><init>(ILcom/google/android/gms/internal/ads/zzhca;ZZ)V

    invoke-direct {p2, p0, p1, p6}, Lcom/google/android/gms/internal/ads/zzgyv;-><init>(Lcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzhai;Lg/dmd;)V

    return-object p2
.end method

.method public static zzbf(Lcom/google/android/gms/internal/ads/zzhai;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzgzc;ILcom/google/android/gms/internal/ads/zzhca;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgyv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzhai;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/android/gms/internal/ads/zzhai;",
            "Lcom/google/android/gms/internal/ads/zzgzc;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzhca;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzgyv<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyv;

    new-instance p3, Lg/dmd;

    const/4 p6, 0x0

    invoke-direct {p3, p4, p5, p6, p6}, Lg/dmd;-><init>(ILcom/google/android/gms/internal/ads/zzhca;ZZ)V

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgyv;-><init>(Lcom/google/android/gms/internal/ads/zzhai;Lcom/google/android/gms/internal/ads/zzhai;Lg/dmd;)V

    return-object p1
.end method


# virtual methods
.method public final bk()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final bl(Lg/ah;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v0, p1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object p1

    invoke-interface {p1, p0}, Lg/ah;->j(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lg/ah;->j(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serialized size must be non-negative, was "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->bk()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->bk()I

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v0, p1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object p1

    invoke-interface {p1, p0}, Lg/ah;->j(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-interface {p1, p0}, Lg/ah;->j(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyx;->cj(I)V

    return p1
.end method

.method public abstract c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;
.end method

.method public final ci(Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->cl()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbj(Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object v0
.end method

.method public final cj(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serialized size must be non-negative, was "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ck()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cl()Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zze:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyr;

    return-object v0
.end method

.method public final cm()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zzd:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0
.end method

.method public final cn()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzd:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v1, v0}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-interface {v0, p0, p1}, Lg/ah;->f(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    invoke-interface {v0, p0}, Lg/ah;->e(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzq:I

    if-nez v0, :cond_1

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    invoke-interface {v0, p0}, Lg/ah;->e(Lcom/google/android/gms/internal/ads/zzgyx;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzq:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzq:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/d;->a:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/d;->d(Lcom/google/android/gms/internal/ads/zzgyx;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzaO()Lcom/google/android/gms/internal/ads/zzhan;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Lite does not support the mutable API."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzaY()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bl(Lg/ah;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic zzbM()Lcom/google/android/gms/internal/ads/zzhah;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbc()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    return-object v0
.end method

.method public final zzbN()Lcom/google/android/gms/internal/ads/zzhaq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhaq<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zzg:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhaq;

    return-object v0
.end method

.method public final zzbb()Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zze:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyr;

    return-object v0
.end method

.method public final zzbc()Lcom/google/android/gms/internal/ads/zzgyr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zze:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbj(Lcom/google/android/gms/internal/ads/zzgyx;)Lcom/google/android/gms/internal/ads/zzgyr;

    return-object v0
.end method

.method public final zzbi()Lcom/google/android/gms/internal/ads/zzgyx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyw;->zzf:Lcom/google/android/gms/internal/ads/zzgyw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;->c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    return-object v0
.end method

.method public bridge synthetic zzbt()Lcom/google/android/gms/internal/ads/zzhai;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbi()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0
.end method

.method public final zzbw()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bs(Lcom/google/android/gms/internal/ads/zzgyx;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic zzcZ()Lcom/google/android/gms/internal/ads/zzhah;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->zzbb()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    return-object v0
.end method

.method public zzda(Lcom/google/android/gms/internal/ads/zzgyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgyc;->c:Lg/eub;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/eub;

    invoke-direct {v1, p1}, Lg/eub;-><init>(Lcom/google/android/gms/internal/ads/zzgyc;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lg/ah;->i(Ljava/lang/Object;Lg/gli;)V

    return-void
.end method
