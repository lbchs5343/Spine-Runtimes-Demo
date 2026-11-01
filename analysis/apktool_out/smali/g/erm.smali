.class public final Lg/erm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:Lg/bev;


# instance fields
.field public final c:Lg/cmv;

.field public final d:Lg/gkr;

.field public final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/erm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/erm;->a:Lg/dba;

    new-instance v0, Lg/bev;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/bev;-><init>(I)V

    sput-object v0, Lg/erm;->b:Lg/bev;

    return-void
.end method

.method public constructor <init>(Lg/cmv;Lg/gkr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lg/zz;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lg/erm;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lg/erm;->c:Lg/cmv;

    iput-object p2, p0, Lg/erm;->d:Lg/gkr;

    return-void
.end method


# virtual methods
.method public final f(Lg/gqc;Ljava/util/function/Predicate;)Lg/geg;
    .locals 9

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lg/geg;->a:Lg/geg;

    return-object p1

    :cond_0
    new-instance v1, Lg/geg;

    invoke-direct {v1}, Lg/geg;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p1}, Lg/gqc;->bc()I

    move-result v4

    iget v5, p1, Lg/gqc;->ab:I

    add-int/2addr v5, v4

    :try_start_0
    iget-object v4, p0, Lg/erm;->e:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lg/eug;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p0}, Lg/eug;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v6, v7}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/zz;

    if-eqz v4, :cond_1

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Lg/zz;->u:Lg/tj;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lg/erm;->c:Lg/cmv;

    invoke-interface {v6, v7, p1}, Lg/tj;->c(Lg/cmv;Lg/gqc;)Lg/azo;

    move-result-object v6

    iget-object v7, v1, Lg/geg;->b:[Lg/azo;

    iget v4, v4, Lg/zz;->s:I

    aput-object v6, v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    :goto_1
    iput v5, p1, Lg/gqc;->ab:I

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v6, Lg/erm;->a:Lg/dba;

    const-string v7, "Failed to parse attribute: {}"

    iget-object v8, p0, Lg/erm;->d:Lg/gkr;

    invoke-virtual {v8, v3}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v7, v4}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_4
    iput v5, p1, Lg/gqc;->ab:I

    throw p2

    :cond_2
    return-object v1
.end method

.method public final g(Lg/gqc;Lg/zz;)Lg/azo;
    .locals 8

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v2

    invoke-virtual {p1}, Lg/gqc;->bc()I

    move-result v3

    iget v4, p1, Lg/gqc;->ab:I

    add-int/2addr v4, v3

    :try_start_0
    iget-object v3, p0, Lg/erm;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lg/eug;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lg/eug;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v5, v6}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/zz;

    if-ne v3, p2, :cond_0

    iget-object v3, v3, Lg/zz;->u:Lg/tj;

    iget-object v5, p0, Lg/erm;->c:Lg/cmv;

    invoke-interface {v3, v5, p1}, Lg/tj;->c(Lg/cmv;Lg/gqc;)Lg/azo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v4, p1, Lg/gqc;->ab:I

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_1
    iput v4, p1, Lg/gqc;->ab:I

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v5, Lg/erm;->a:Lg/dba;

    const-string v6, "Failed to parse attribute: {}"

    iget-object v7, p0, Lg/erm;->d:Lg/gkr;

    invoke-virtual {v7, v2}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v6, v3}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_4
    iput v4, p1, Lg/gqc;->ab:I

    throw p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
