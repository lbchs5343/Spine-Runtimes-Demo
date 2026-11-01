.class public final Lg/zf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/zf;

.field public static final b:Lg/zf;

.field public static final c:Lg/zf;

.field public static final d:Lg/zf;


# instance fields
.field public final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lg/eic;

    invoke-static {v1}, Lg/zf;->f([Lg/eic;)Lg/zf;

    move-result-object v1

    sput-object v1, Lg/zf;->c:Lg/zf;

    sget-object v1, Lg/eic;->ALLOW_WIDER:Lg/eic;

    const/4 v2, 0x1

    new-array v3, v2, [Lg/eic;

    aput-object v1, v3, v0

    invoke-static {v3}, Lg/zf;->f([Lg/eic;)Lg/zf;

    move-result-object v3

    sput-object v3, Lg/zf;->d:Lg/zf;

    const/4 v3, 0x2

    new-array v4, v3, [Lg/eic;

    aput-object v1, v4, v0

    sget-object v5, Lg/eic;->IGNORE_SAME:Lg/eic;

    aput-object v5, v4, v2

    invoke-static {v4}, Lg/zf;->f([Lg/eic;)Lg/zf;

    move-result-object v4

    sput-object v4, Lg/zf;->a:Lg/zf;

    const/4 v4, 0x3

    new-array v4, v4, [Lg/eic;

    aput-object v1, v4, v0

    sget-object v0, Lg/eic;->KEEP_GENERICS:Lg/eic;

    aput-object v0, v4, v2

    sget-object v0, Lg/eic;->IGNORE_UNKNOWN:Lg/eic;

    aput-object v0, v4, v3

    invoke-static {v4}, Lg/zf;->f([Lg/eic;)Lg/zf;

    move-result-object v0

    sput-object v0, Lg/zf;->b:Lg/zf;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/zf;->e:Ljava/util/Set;

    return-void
.end method

.method public static varargs f([Lg/eic;)Lg/zf;
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    const-class p0, Lg/eic;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_1
    new-instance v0, Lg/zf;

    invoke-direct {v0, p0}, Lg/zf;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/zf;->e:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
