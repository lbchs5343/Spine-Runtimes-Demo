.class public final Lg/dpq;
.super Lg/bke;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11

    const/4 v0, 0x1

    iput v0, p0, Lg/dpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpq;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpq;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpq;->b:Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lg/dcd;

    invoke-direct {v0, p1}, Lg/dcd;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lg/dw;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lg/dw;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lg/dw;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lg/dw;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    iget-object v10, p0, Lg/dpq;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lg/dpq;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lg/dpq;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lg/dpq;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dpq;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dpq;->e:Ljava/lang/Object;

    iput-object p1, p0, Lg/dpq;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/dpq;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/Enum;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dpq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Lg/fwg;->s(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dpq;->e:Ljava/lang/Object;

    check-cast v0, Lg/bke;

    iget-object v1, p0, Lg/dpq;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    if-eqz p2, :cond_2

    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eq v2, v1, :cond_7

    iget-object v1, p0, Lg/dpq;->d:Ljava/lang/Object;

    check-cast v1, Lg/eem;

    new-instance v3, Lg/ri;

    invoke-direct {v3, v2}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v3}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v1

    instance-of v2, v1, Lg/dls;

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v2, v0

    :goto_2
    instance-of v3, v2, Lg/buu;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lg/buu;

    invoke-virtual {v3}, Lg/buu;->b()Lg/bke;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    :goto_3
    instance-of v2, v2, Lg/dls;

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v0, v1

    :cond_7
    :goto_5
    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
