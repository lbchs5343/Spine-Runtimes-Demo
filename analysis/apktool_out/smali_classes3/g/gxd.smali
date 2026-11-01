.class public final Lg/gxd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gxd;


# instance fields
.field public final b:Lg/gtu;

.field public final c:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gxd;

    invoke-direct {v0}, Lg/gxd;-><init>()V

    sput-object v0, Lg/gxd;->a:Lg/gxd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/gxd;->c:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lg/gtu;

    invoke-direct {v0}, Lg/gtu;-><init>()V

    iput-object v0, p0, Lg/gxd;->b:Lg/gtu;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lg/ah;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lg/gxd;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ah;

    if-nez v1, :cond_3

    iget-object v1, p0, Lg/gxd;->b:Lg/gtu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    iget-object v1, v1, Lg/gtu;->b:Lg/ecv;

    invoke-virtual {v1, p1}, Lg/ecv;->e(Ljava/lang/Class;)Lg/cyk;

    move-result-object v1

    iget v2, v1, Lg/cyk;->a:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    sget-object v3, Lg/erw;->a:Lcom/google/android/gms/internal/ads/i;

    iget-object v1, v1, Lg/cyk;->b:Lcom/google/android/gms/internal/ads/zzhai;

    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/zzhai;)V

    goto :goto_1

    :cond_0
    sget v2, Lg/epa;->a:I

    sget v2, Lg/bdy;->a:I

    sget-object v2, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-virtual {v1}, Lg/cyk;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    sget-object v3, Lg/erw;->a:Lcom/google/android/gms/internal/ads/i;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget v4, Lg/adx;->a:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/aj;->y(Lg/cyk;Lcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/i;)Lcom/google/android/gms/internal/ads/aj;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ah;

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    return-object p1

    :cond_3
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "messageType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
