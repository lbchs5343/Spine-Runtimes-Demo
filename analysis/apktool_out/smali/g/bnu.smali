.class public final Lg/bnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/Class;

.field public final c:[C

.field public final d:Ljava/lang/reflect/Field;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Ljava/lang/reflect/Method;

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bnu;->i:Ljava/lang/String;

    iput-object p2, p0, Lg/bnu;->b:Ljava/lang/Class;

    iput-object p3, p0, Lg/bnu;->a:Ljava/lang/reflect/Type;

    const/4 p3, 0x0

    iput-object p3, p0, Lg/bnu;->k:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    iput p5, p0, Lg/bnu;->l:I

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    iput-boolean p2, p0, Lg/bnu;->f:Z

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p4

    iput-boolean p2, p0, Lg/bnu;->g:Z

    invoke-static {p4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p4

    iput-boolean p4, p0, Lg/bnu;->h:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lg/bnu;->g:Z

    iput-boolean p5, p0, Lg/bnu;->h:Z

    :goto_0
    iput-boolean p5, p0, Lg/bnu;->j:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 v0, p4, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Lg/bnu;->c:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p5, v1, v0, p2}, Ljava/lang/String;->getChars(II[CI)V

    const/16 p1, 0x22

    aput-char p1, v0, p5

    add-int/lit8 p2, p4, 0x1

    aput-char p1, v0, p2

    add-int/lit8 p4, p4, 0x2

    const/16 p1, 0x3a

    aput-char p1, v0, p4

    iput-object p3, p0, Lg/bnu;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bnu;->i:Ljava/lang/String;

    iput-object p2, p0, Lg/bnu;->k:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    iput p6, p0, Lg/bnu;->l:I

    if-eqz p8, :cond_0

    move-object p7, p8

    :cond_0
    const/4 p6, 0x0

    if-eqz p7, :cond_1

    invoke-interface {p7}, Lg/btq;->format()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p8

    if-nez p8, :cond_2

    :cond_1
    move-object p7, p6

    :cond_2
    iput-object p7, p0, Lg/bnu;->e:Ljava/lang/String;

    const/4 p7, 0x1

    const/4 p8, 0x0

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    if-eqz p2, :cond_4

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lg/bnu;->g:Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lg/bnu;->h:Z

    goto :goto_3

    :cond_6
    iput-boolean p8, p0, Lg/bnu;->g:Z

    iput-boolean p8, p0, Lg/bnu;->h:Z

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    iput-object v1, p0, Lg/bnu;->c:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p8, v2, v1, p7}, Ljava/lang/String;->getChars(II[CI)V

    const/16 p1, 0x22

    aput-char p1, v1, p8

    add-int/lit8 v2, v0, 0x1

    aput-char p1, v1, v2

    add-int/lit8 v0, v0, 0x2

    const/16 p1, 0x3a

    aput-char p1, v1, v0

    const-class p1, Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length v0, p3

    const-class v1, Ljava/lang/Class;

    if-ne v0, p7, :cond_9

    aget-object p3, p3, p8

    if-eq p3, v1, :cond_8

    if-eq p3, p1, :cond_8

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, p8

    goto :goto_5

    :cond_8
    :goto_4
    move-object p1, p3

    :goto_5
    iput-boolean p8, p0, Lg/bnu;->j:Z

    goto :goto_7

    :cond_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v1, :cond_a

    move-object p1, p3

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_6
    iput-boolean p7, p0, Lg/bnu;->j:Z

    :goto_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    goto :goto_a

    :cond_b
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_d

    if-eq p2, p1, :cond_d

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_9

    :cond_d
    :goto_8
    move-object p1, p2

    :goto_9
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p3

    iput-boolean p3, p0, Lg/bnu;->j:Z

    move-object p3, p2

    :goto_a
    const-class p2, Ljava/lang/Object;

    if-ne p3, p2, :cond_12

    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_12

    move-object p2, p1

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    move-object v1, p4

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v3, v0, :cond_11

    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget-object v3, v0, v2

    if-ne v3, p2, :cond_f

    aget-object p6, v1, v2

    goto :goto_d

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    if-eqz p6, :cond_12

    invoke-static {p6}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lg/bnu;->b:Ljava/lang/Class;

    iput-object p6, p0, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lg/bnu;->f:Z

    return-void

    :cond_11
    invoke-static {v1}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_b

    :cond_12
    instance-of p2, p1, Ljava/lang/Class;

    if-nez p2, :cond_16

    if-eqz p5, :cond_13

    goto :goto_e

    :cond_13
    move-object p5, p4

    :goto_e
    invoke-static {p5, p4, p1}, Lg/bnu;->m(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eq p2, p1, :cond_14

    instance-of p1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_15

    invoke-static {p2}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    :cond_14
    :goto_f
    move-object p1, p2

    goto :goto_10

    :cond_15
    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_14

    invoke-static {p2}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    goto :goto_f

    :cond_16
    :goto_10
    iput-object p1, p0, Lg/bnu;->a:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lg/bnu;->b:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_11

    :cond_17
    const/4 p7, 0x0

    :goto_11
    iput-boolean p7, p0, Lg/bnu;->f:Z

    return-void
.end method

.method public static m(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lg/bnu;->m(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_1

    invoke-static {p0}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    :cond_2
    invoke-static {p0}, Lg/dtu;->k(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lg/dtu;->o(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v4

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p0, v4

    move-object p1, p0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_b

    if-eqz p0, :cond_b

    aget-object v6, v2, v3

    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_a

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    const/4 v7, 0x0

    :goto_3
    array-length v8, p1

    if-ge v7, v8, :cond_a

    aget-object v8, p1, v7

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    :cond_8
    aget-object v5, v4, v7

    aput-object v5, v2, v3

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    new-instance p0, Lg/cnn;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lg/cnn;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_c
    :goto_4
    return-object p2
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/bnu;

    invoke-virtual {p0, p1}, Lg/bnu;->n(Lg/bnu;)I

    move-result p1

    return p1
.end method

.method public final n(Lg/bnu;)I
    .locals 2

    iget v0, p1, Lg/bnu;->l:I

    iget v1, p0, Lg/bnu;->l:I

    if-ge v1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lg/bnu;->i:Ljava/lang/String;

    iget-object p1, p1, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bnu;->i:Ljava/lang/String;

    return-object v0
.end method
