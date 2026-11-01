.class public final Lg/cbq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cbq;


# instance fields
.field public final b:Lg/gqc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cbq;

    invoke-direct {v0}, Lg/cbq;-><init>()V

    sput-object v0, Lg/cbq;->a:Lg/cbq;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/gqc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/gqc;-><init>(I)V

    iput-object v0, p0, Lg/cbq;->b:Lg/gqc;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lg/eyg;->c:Lg/eyg;

    invoke-virtual {v0, v1, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Lg/eyg;->j:Lg/eyg;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/eyg;->e:Lg/eyg;

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/eyg;->a:Lg/eyg;

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v2, Lg/eyg;->i:Lg/eyg;

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v0, v3, v2}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/lang/String;

    sget-object v3, Lg/eyg;->f:Lg/eyg;

    invoke-virtual {v0, v2, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, [Ljava/lang/Object;

    sget-object v3, Lg/eyg;->h:Lg/eyg;

    invoke-virtual {v0, v2, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/Currency;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/TimeZone;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/net/URI;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/net/URL;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v2, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v1}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Lg/duf;
    .locals 9

    sget-object v0, Lg/eyg;->j:Lg/eyg;

    iget-object v1, p0, Lg/cbq;->b:Lg/gqc;

    invoke-virtual {v1, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/duf;

    if-nez v2, :cond_15

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lg/oz;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lg/oz;-><init>(I)V

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    new-instance v0, Lg/oz;

    invoke-direct {v0, v3}, Lg/oz;-><init>(I)V

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lg/eyg;->d:Lg/eyg;

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    sget-object v4, Lg/gvz;->a:Lg/gvz;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    const-class v2, Lg/aeu;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    const-class v2, Lg/cko;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    const-class v2, Lg/fpk;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_7

    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_7

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v2

    new-instance v3, Lg/ecr;

    invoke-direct {v3, v0, v2}, Lg/ecr;-><init>(Ljava/lang/Class;Lg/duf;)V

    invoke-virtual {v1, p1, v3}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_8
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lg/wt;

    invoke-direct {v0, p1}, Lg/wt;-><init>(Ljava/lang/Class;)V

    iget v2, v0, Lg/wt;->g:I

    sget-object v3, Lg/gar;->WriteClassName:Lg/gar;

    iget v3, v3, Lg/gar;->mask:I

    or-int/2addr v2, v3

    iput v2, v0, Lg/wt;->g:I

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_9
    const-class v2, Ljava/util/TimeZone;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    const-class v2, Ljava/nio/charset/Charset;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    const-class v2, Ljava/util/Enumeration;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1, p1, v4}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_10

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_10
    const/4 v3, 0x0

    :cond_11
    :goto_1
    if-nez v3, :cond_13

    if-eqz v5, :cond_12

    goto :goto_2

    :cond_12
    new-instance v0, Lg/wt;

    invoke-direct {v0, p1}, Lg/wt;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_4

    :cond_13
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object v0

    :cond_14
    :goto_3
    new-instance v0, Lg/oz;

    invoke-direct {v0, v5}, Lg/oz;-><init>(I)V

    invoke-virtual {v1, p1, v0}, Lg/gqc;->bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v1, p1}, Lg/gqc;->as(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/duf;

    return-object p1

    :cond_15
    return-object v2
.end method
