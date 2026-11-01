.class public final Lg/mh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/mh;


# instance fields
.field public final b:Lg/gqc;

.field public final c:Lg/gqc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/mh;

    invoke-direct {v0}, Lg/mh;-><init>()V

    sput-object v0, Lg/mh;->a:Lg/mh;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/gqc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/gqc;-><init>(I)V

    iput-object v0, p0, Lg/mh;->b:Lg/gqc;

    new-instance v1, Lg/gqc;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lg/gqc;-><init>(I)V

    iput-object v1, p0, Lg/mh;->c:Lg/gqc;

    sget-object v1, Lg/eyg;->j:Lg/eyg;

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/Date;

    sget-object v3, Lg/gvz;->a:Lg/gvz;

    invoke-virtual {v0, v2, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/xq;->b:Lg/xq;

    const-class v3, Ljava/util/Map;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/TreeMap;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/eyg;->d:Lg/eyg;

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/xq;->a:Lg/xq;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/String;

    sget-object v4, Lg/eyg;->f:Lg/eyg;

    invoke-virtual {v0, v3, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v0, v3, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v3, Lg/eyg;->a:Lg/eyg;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Lg/eyg;->e:Lg/eyg;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v5, Ljava/lang/Long;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Lg/eyg;->i:Lg/eyg;

    const-class v5, Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v5, Ljava/math/BigDecimal;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Lg/eyg;->c:Lg/eyg;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Class;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Lg/eyg;->h:Lg/eyg;

    const-class v5, [C

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/util/UUID;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/util/TimeZone;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/util/Locale;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/util/Currency;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/net/URI;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/net/URL;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v0, v4, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v3, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v0, v1, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/reflect/Type;)Lg/cma;
    .locals 2

    iget-object v0, p0, Lg/mh;->b:Lg/gqc;

    invoke-virtual {v0, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cma;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lg/xq;->a:Lg/xq;

    return-object p1
.end method

.method public final e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;
    .locals 5

    sget-object v0, Lg/eyg;->d:Lg/eyg;

    iget-object v1, p0, Lg/mh;->b:Lg/gqc;

    invoke-virtual {v1, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cma;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    invoke-virtual {v1, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cma;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Boolean;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Character;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Byte;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Short;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Long;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Float;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/Double;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/math/BigInteger;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/math/BigDecimal;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/lang/String;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/util/Date;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/sql/Date;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/sql/Time;

    if-eq p2, v3, :cond_4

    const-class v3, Ljava/sql/Timestamp;

    if-ne p2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-class v3, Lg/ecz;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lg/ecz;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lg/ecz;->mappingTo()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v3, v3}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    instance-of v3, p1, Ljava/lang/reflect/WildcardType;

    if-nez v3, :cond_5

    instance-of v3, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_5

    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v1, p2}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cma;

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v1, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cma;

    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lg/hev;

    invoke-direct {v0, p2}, Lg/hev;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lg/eyg;->h:Lg/eyg;

    goto :goto_1

    :cond_a
    const-class v2, Ljava/util/Set;

    if-eq p2, v2, :cond_f

    const-class v2, Ljava/util/HashSet;

    if-eq p2, v2, :cond_f

    const-class v2, Ljava/util/Collection;

    if-eq p2, v2, :cond_f

    const-class v3, Ljava/util/List;

    if-eq p2, v3, :cond_f

    const-class v3, Ljava/util/ArrayList;

    if-ne p2, v3, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lg/xq;->b:Lg/xq;

    goto :goto_1

    :cond_d
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lg/dso;

    invoke-direct {v0, p0, p2, p2}, Lg/dhm;-><init>(Lg/mh;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_e
    new-instance v0, Lg/dhm;

    invoke-direct {v0, p0, p2, p1}, Lg/dhm;-><init>(Lg/mh;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    :cond_f
    :goto_1
    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object v0
.end method
