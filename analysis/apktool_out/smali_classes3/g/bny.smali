.class public final Lg/bny;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lg/aqn;


# instance fields
.field private final allowNullValues:Z

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entrySet:Lg/cnb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cnb;"
        }
    .end annotation
.end field

.field final header:Lg/eqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eqr;"
        }
    .end annotation
.end field

.field private keySet:Lg/bzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bzw;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lg/eqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eqr;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aqn;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    sput-object v0, Lg/bny;->a:Lg/aqn;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/bny;->size:I

    iput v0, p0, Lg/bny;->modCount:I

    sget-object v0, Lg/bny;->a:Lg/aqn;

    iput-object v0, p0, Lg/bny;->comparator:Ljava/util/Comparator;

    iput-boolean p1, p0, Lg/bny;->allowNullValues:Z

    new-instance v0, Lg/eqr;

    invoke-direct {v0, p1}, Lg/eqr;-><init>(Z)V

    iput-object v0, p0, Lg/bny;->header:Lg/eqr;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is unsupported"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lg/eqr;Lg/eqr;)V
    .locals 2

    iget-object v0, p1, Lg/eqr;->f:Lg/eqr;

    const/4 v1, 0x0

    iput-object v1, p1, Lg/eqr;->f:Lg/eqr;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lg/eqr;->f:Lg/eqr;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lg/eqr;->h:Lg/eqr;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lg/eqr;->h:Lg/eqr;

    return-void

    :cond_1
    iput-object p2, v0, Lg/eqr;->c:Lg/eqr;

    return-void

    :cond_2
    iput-object p2, p0, Lg/bny;->root:Lg/eqr;

    return-void
.end method

.method public final c(Lg/eqr;)V
    .locals 5

    iget-object v0, p1, Lg/eqr;->h:Lg/eqr;

    iget-object v1, p1, Lg/eqr;->c:Lg/eqr;

    iget-object v2, v1, Lg/eqr;->h:Lg/eqr;

    iget-object v3, v1, Lg/eqr;->c:Lg/eqr;

    iput-object v2, p1, Lg/eqr;->c:Lg/eqr;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lg/eqr;->f:Lg/eqr;

    :cond_0
    invoke-virtual {p0, p1, v1}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    iput-object p1, v1, Lg/eqr;->h:Lg/eqr;

    iput-object v1, p1, Lg/eqr;->f:Lg/eqr;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lg/eqr;->g:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lg/eqr;->g:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/eqr;->g:I

    if-eqz v3, :cond_3

    iget v4, v3, Lg/eqr;->g:I

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lg/eqr;->g:I

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bny;->root:Lg/eqr;

    const/4 v0, 0x0

    iput v0, p0, Lg/bny;->size:I

    iget v0, p0, Lg/bny;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/bny;->modCount:I

    iget-object v0, p0, Lg/bny;->header:Lg/eqr;

    iput-object v0, v0, Lg/eqr;->e:Lg/eqr;

    iput-object v0, v0, Lg/eqr;->d:Lg/eqr;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lg/bny;->d(Ljava/lang/Object;Z)Lg/eqr;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final d(Ljava/lang/Object;Z)Lg/eqr;
    .locals 12

    iget-object v0, p0, Lg/bny;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lg/bny;->root:Lg/eqr;

    const/4 v2, 0x0

    sget-object v3, Lg/bny;->a:Lg/aqn;

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iget-object v5, v1, Lg/eqr;->i:Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    return-object v1

    :cond_2
    if-gez v5, :cond_3

    iget-object v6, v1, Lg/eqr;->h:Lg/eqr;

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lg/eqr;->c:Lg/eqr;

    :goto_2
    if-nez v6, :cond_4

    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v1, v6

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    iget-object v10, p0, Lg/bny;->header:Lg/eqr;

    const/4 p2, 0x1

    if-nez v8, :cond_9

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " is not Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_5
    new-instance v6, Lg/eqr;

    iget-boolean v7, p0, Lg/bny;->allowNullValues:Z

    iget-object v11, v10, Lg/eqr;->e:Lg/eqr;

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lg/eqr;-><init>(ZLg/eqr;Ljava/lang/Object;Lg/eqr;Lg/eqr;)V

    iput-object v6, p0, Lg/bny;->root:Lg/eqr;

    goto :goto_7

    :cond_9
    move-object v9, p1

    new-instance v6, Lg/eqr;

    iget-boolean v7, p0, Lg/bny;->allowNullValues:Z

    iget-object v11, v10, Lg/eqr;->e:Lg/eqr;

    invoke-direct/range {v6 .. v11}, Lg/eqr;-><init>(ZLg/eqr;Ljava/lang/Object;Lg/eqr;Lg/eqr;)V

    if-gez v5, :cond_a

    iput-object v6, v8, Lg/eqr;->h:Lg/eqr;

    goto :goto_6

    :cond_a
    iput-object v6, v8, Lg/eqr;->c:Lg/eqr;

    :goto_6
    invoke-virtual {p0, v8, p2}, Lg/bny;->f(Lg/eqr;Z)V

    :goto_7
    iget p1, p0, Lg/bny;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lg/bny;->size:I

    iget p1, p0, Lg/bny;->modCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lg/bny;->modCount:I

    return-object v6
.end method

.method public final e(Lg/eqr;)V
    .locals 5

    iget-object v0, p1, Lg/eqr;->h:Lg/eqr;

    iget-object v1, p1, Lg/eqr;->c:Lg/eqr;

    iget-object v2, v0, Lg/eqr;->h:Lg/eqr;

    iget-object v3, v0, Lg/eqr;->c:Lg/eqr;

    iput-object v3, p1, Lg/eqr;->h:Lg/eqr;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lg/eqr;->f:Lg/eqr;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    iput-object p1, v0, Lg/eqr;->c:Lg/eqr;

    iput-object v0, p1, Lg/eqr;->f:Lg/eqr;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lg/eqr;->g:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lg/eqr;->g:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lg/eqr;->g:I

    if-eqz v2, :cond_3

    iget v4, v2, Lg/eqr;->g:I

    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lg/eqr;->g:I

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/bny;->entrySet:Lg/cnb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/cnb;

    invoke-direct {v0, p0}, Lg/cnb;-><init>(Lg/bny;)V

    iput-object v0, p0, Lg/bny;->entrySet:Lg/cnb;

    return-object v0
.end method

.method public final f(Lg/eqr;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lg/eqr;->h:Lg/eqr;

    iget-object v1, p1, Lg/eqr;->c:Lg/eqr;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lg/eqr;->g:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lg/eqr;->g:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lg/eqr;->h:Lg/eqr;

    iget-object v3, v1, Lg/eqr;->c:Lg/eqr;

    if-eqz v3, :cond_2

    iget v3, v3, Lg/eqr;->g:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lg/eqr;->g:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lg/bny;->e(Lg/eqr;)V

    invoke-virtual {p0, p1}, Lg/bny;->c(Lg/eqr;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lg/bny;->c(Lg/eqr;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lg/eqr;->h:Lg/eqr;

    iget-object v3, v0, Lg/eqr;->c:Lg/eqr;

    if-eqz v3, :cond_7

    iget v3, v3, Lg/eqr;->g:I

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v1, :cond_8

    iget v2, v1, Lg/eqr;->g:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v0}, Lg/bny;->c(Lg/eqr;)V

    invoke-virtual {p0, p1}, Lg/bny;->e(Lg/eqr;)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lg/bny;->e(Lg/eqr;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lg/eqr;->g:I

    if-eqz p2, :cond_d

    goto :goto_9

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lg/eqr;->g:I

    if-nez p2, :cond_d

    goto :goto_9

    :cond_d
    iget-object p1, p1, Lg/eqr;->f:Lg/eqr;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method public final g(Lg/eqr;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object p2, p1, Lg/eqr;->e:Lg/eqr;

    iget-object v0, p1, Lg/eqr;->d:Lg/eqr;

    iput-object v0, p2, Lg/eqr;->d:Lg/eqr;

    iget-object v0, p1, Lg/eqr;->d:Lg/eqr;

    iput-object p2, v0, Lg/eqr;->e:Lg/eqr;

    :cond_0
    iget-object p2, p1, Lg/eqr;->h:Lg/eqr;

    iget-object v0, p1, Lg/eqr;->c:Lg/eqr;

    iget-object v1, p1, Lg/eqr;->f:Lg/eqr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget v1, p2, Lg/eqr;->g:I

    iget v4, v0, Lg/eqr;->g:I

    if-le v1, v4, :cond_1

    iget-object v0, p2, Lg/eqr;->c:Lg/eqr;

    :goto_0
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    iget-object v0, p2, Lg/eqr;->c:Lg/eqr;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lg/eqr;->h:Lg/eqr;

    :goto_1
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz v0, :cond_2

    iget-object p2, v0, Lg/eqr;->h:Lg/eqr;

    goto :goto_1

    :cond_2
    move-object v0, p2

    :cond_3
    invoke-virtual {p0, v0, v2}, Lg/bny;->g(Lg/eqr;Z)V

    iget-object p2, p1, Lg/eqr;->h:Lg/eqr;

    if-eqz p2, :cond_4

    iget v1, p2, Lg/eqr;->g:I

    iput-object p2, v0, Lg/eqr;->h:Lg/eqr;

    iput-object v0, p2, Lg/eqr;->f:Lg/eqr;

    iput-object v3, p1, Lg/eqr;->h:Lg/eqr;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object p2, p1, Lg/eqr;->c:Lg/eqr;

    if-eqz p2, :cond_5

    iget v2, p2, Lg/eqr;->g:I

    iput-object p2, v0, Lg/eqr;->c:Lg/eqr;

    iput-object v0, p2, Lg/eqr;->f:Lg/eqr;

    iput-object v3, p1, Lg/eqr;->c:Lg/eqr;

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lg/eqr;->g:I

    invoke-virtual {p0, p1, v0}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p2}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    iput-object v3, p1, Lg/eqr;->h:Lg/eqr;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, v0}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    iput-object v3, p1, Lg/eqr;->c:Lg/eqr;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, v3}, Lg/bny;->b(Lg/eqr;Lg/eqr;)V

    :goto_3
    invoke-virtual {p0, v1, v2}, Lg/bny;->f(Lg/eqr;Z)V

    iget p1, p0, Lg/bny;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/bny;->size:I

    iget p1, p0, Lg/bny;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/bny;->modCount:I

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lg/bny;->d(Ljava/lang/Object;Z)Lg/eqr;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lg/eqr;->a:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/bny;->keySet:Lg/bzw;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/bzw;

    invoke-direct {v0, p0}, Lg/bzw;-><init>(Lg/bny;)V

    iput-object v0, p0, Lg/bny;->keySet:Lg/bzw;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lg/bny;->allowNullValues:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/bny;->d(Ljava/lang/Object;Z)Lg/eqr;

    move-result-object p1

    iget-object v0, p1, Lg/eqr;->a:Ljava/lang/Object;

    iput-object p2, p1, Lg/eqr;->a:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lg/bny;->d(Ljava/lang/Object;Z)Lg/eqr;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lg/bny;->g(Lg/eqr;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p1, Lg/eqr;->a:Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/bny;->size:I

    return v0
.end method
