.class public final Lg/hj;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lg/hj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxv;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/hj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/hj;->a:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/hj;->b:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzgxv;->b:Lg/hj;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final declared-synchronized ag()Ljava/lang/String;
    .locals 5

    const-string v0, "LruCache[maxSize=20,hits="

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lg/hj;->e:I

    iget v2, p0, Lg/hj;->a:I

    add-int/2addr v2, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lg/hj;->e:I

    iget v3, p0, Lg/hj;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",misses="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hitRate="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final f(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public aa(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgxv;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzd(I)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgxv;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzgxv;->a:I

    invoke-interface {p2, p1, p0, p3}, Lg/ah;->l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzy(I)V

    iget p1, v0, Lcom/google/android/gms/internal/ads/zzgxv;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzgxv;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzz(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ab(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public ac(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 5

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/ayh;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/ayh;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-static {p1}, Lg/hj;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v4, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public ad(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 3

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lg/hj;->a:I

    :cond_3
    return-void
.end method

.method public ae(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/ayh;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/ayh;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public af(I)V
    .locals 1

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 5

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zza()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zza()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lg/hj;->a:I

    :cond_3
    :goto_0
    return-void
.end method

.method public i(Lcom/google/android/gms/internal/ads/zzgzj;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_0
    invoke-interface {p2}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lg/hj;->aa(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-interface {p2, v2}, Lg/ah;->g(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lg/hj;->a:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v2

    if-eq v2, v1, :cond_0

    iput v2, p0, Lg/hj;->a:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public k(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/ayh;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/ayh;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public l(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 3

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lg/hj;->a:I

    return-void

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public n(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 3

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lg/hj;->a:I

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v2, v1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v1

    if-lt v1, v2, :cond_3

    :cond_4
    return-void
.end method

.method public o(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 6

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-static {p1}, Lg/hj;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int v5, v2, p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result p1

    if-lt p1, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v4, :cond_8

    if-ne v1, v3, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_6

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    return-void

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v2, v1

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v1

    if-lt v1, v2, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public p(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/ayh;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/ayh;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public q(Lcom/google/android/gms/internal/ads/zzgzj;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_0
    invoke-interface {p2}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lg/hj;->w(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-interface {p2, v2}, Lg/ah;->g(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lg/hj;->a:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v2

    if-eq v2, v1, :cond_0

    iput v2, p0, Lg/hj;->a:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()V
    .locals 3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/hj;->d:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/hj;->d:I

    if-nez v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    iget v0, p0, Lg/hj;->d:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lg/hj;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/hj;->d:I

    monitor-exit p0

    goto :goto_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lg/hj;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()I
    .locals 2

    iget v0, p0, Lg/hj;->a:I

    if-eqz v0, :cond_0

    iput v0, p0, Lg/hj;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lg/hj;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v0

    iput v0, p0, Lg/hj;->d:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lg/hj;->e:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public t()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg/hj;->v(I)V

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzv()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/hj;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lg/hj;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lg/hj;->af(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p0, v1}, Lg/hj;->af(I)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public v(I)V
    .locals 1

    iget v0, p0, Lg/hj;->d:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 2

    iget v0, p0, Lg/hj;->e:I

    iget v1, p0, Lg/hj;->d:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lg/hj;->e:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lg/ah;->l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V

    iget p1, p0, Lg/hj;->d:I

    iget p2, p0, Lg/hj;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lg/hj;->e:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lg/hj;->e:I

    throw p1
.end method

.method public x(Lcom/google/android/gms/internal/ads/zzgzj;Z)V
    .locals 4

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgzu;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzu;

    :cond_1
    invoke-virtual {p0}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzb()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p2

    iget v1, p0, Lg/hj;->d:I

    if-eq p2, v1, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, v2}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzx()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzw()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v3, p0, Lg/hj;->d:I

    if-eq v1, v3, :cond_2

    move p2, v1

    :goto_2
    iput p2, p0, Lg/hj;->a:I

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 6

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/uo;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lg/uo;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-static {p1}, Lg/hj;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int v5, v2, p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/uo;->zzi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result p1

    if-lt p1, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v4, :cond_8

    if-ne v1, v3, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_6

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    return-void

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v2, v1

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v1

    if-lt v1, v2, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public z(Lcom/google/android/gms/internal/ads/zzgzj;)V
    .locals 5

    iget-object v0, p0, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    instance-of v1, p1, Lg/ayh;

    const-string v2, "Protocol message tag had invalid wire type."

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lg/ayh;

    iget p1, p0, Lg/hj;->d:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result p1

    invoke-static {p1}, Lg/hj;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ayh;->zzg(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result p1

    iget v2, p0, Lg/hj;->d:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lg/hj;->d:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v4, :cond_7

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v1

    invoke-static {v1}, Lg/hj;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    add-int/2addr v1, v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_5

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzA()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzl()I

    move-result v1

    iget v2, p0, Lg/hj;->d:I

    if-eq v1, v2, :cond_7

    move p1, v1

    :goto_0
    iput p1, p0, Lg/hj;->a:I

    :cond_8
    :goto_1
    return-void
.end method
