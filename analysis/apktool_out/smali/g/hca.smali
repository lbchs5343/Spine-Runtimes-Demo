.class public abstract Lg/hca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static c:Lg/gez;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    const-string v11, "com.codekk.designer.tools"

    const-string v12, "com.codekk.search.domain"

    const-string v1, "cn.trinea.android.developertools"

    const-string v2, "cn.trinea.android.developertools.pro"

    const-string v3, "cn.trinea.developer.options"

    const-string v4, "com.codekk.appviewer"

    const-string v5, "com.codekk.newsecond"

    const-string v6, "com.codekk.recordmore"

    const-string v7, "com.codekk.phone.info"

    const-string v8, "com.codekk.time.diary"

    const-string v9, "com.codekk.assistant"

    const-string v10, "com.codekk.salary.calculator"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/hca;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lg/hca;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    sput-object v0, Lg/hca;->c:Lg/gez;

    return-void
.end method

.method public static d([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lg/gez;
    .locals 2

    sget-object v0, Lg/hca;->c:Lg/gez;

    if-nez v0, :cond_1

    const-class v0, Lg/hca;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/hca;->c:Lg/gez;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lg/hca;->f(Landroid/content/Context;Ljava/lang/String;)Lg/gez;

    move-result-object p0

    sput-object p0, Lg/hca;->c:Lg/gez;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/hca;->c:Lg/gez;

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Lg/gez;
    .locals 7

    invoke-static {p0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p0

    const/16 v0, 0x1c

    invoke-static {v0}, Lg/dyd;->ar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    invoke-virtual {p0, v1, p1}, Lg/cwz;->d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    :cond_1
    move-object p0, p1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lg/agk;->q(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lg/agk;->n(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_1
    invoke-static {p0}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance p0, Lg/gez;

    invoke-direct {p0, v1}, Lg/gez;-><init>(Z)V

    return-object p0

    :cond_4
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_8

    aget-object v5, p0, v4

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    if-eqz v5, :cond_7

    array-length v6, v5

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lg/hca;->d([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance p0, Lg/gez;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/gez;-><init>(Z)V

    return-object p0

    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lg/gez;

    invoke-direct {p0, v1}, Lg/gez;-><init>(Z)V

    return-object p0

    :cond_9
    new-instance p0, Lg/gez;

    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lg/gez;-><init>(I)V

    iput-boolean v1, p0, Lg/gez;->g:Z

    iput-object p1, p0, Lg/gez;->e:Ljava/lang/Object;

    return-object p0

    :catch_0
    new-instance p0, Lg/gez;

    invoke-direct {p0, v1}, Lg/gez;-><init>(Z)V

    return-object p0
.end method

.method public static g(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lg/hca;->a:Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
