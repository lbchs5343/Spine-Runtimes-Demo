.class public final Lg/bkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# instance fields
.field public final synthetic a:I

.field public final b:Lg/ja;


# direct methods
.method public synthetic constructor <init>(Lg/ja;I)V
    .locals 0

    iput p2, p0, Lg/bkj;->a:I

    iput-object p1, p0, Lg/bkj;->b:Lg/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 12

    iget v3, p0, Lg/bkj;->a:I

    iget-object v4, p0, Lg/bkj;->b:Lg/ja;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    iget-object v3, p2, Lg/ri;->b:Ljava/lang/reflect/Type;

    iget-object v8, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_3

    :cond_0
    const-class v6, Ljava/util/Properties;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v3, v6, :cond_1

    new-array v3, v10, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    aput-object v5, v3, v11

    goto :goto_0

    :cond_1
    instance-of v6, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_2

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v7

    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    invoke-static {v6}, Lg/ckd;->ba(Z)V

    invoke-static {v3, v8, v9}, Lg/acr;->bv(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v8, v6, v9}, Lg/acr;->bp(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-array v3, v10, [Ljava/lang/reflect/Type;

    aput-object v5, v3, v7

    aput-object v5, v3, v11

    :goto_0
    aget-object v5, v3, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Lg/ri;

    invoke-direct {v6, v5}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v6}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v5, Lg/foc;->x:Lg/ddu;

    :goto_2
    aget-object v6, v3, v11

    new-instance v8, Lg/ri;

    invoke-direct {v8, v6}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v8}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v6

    invoke-virtual {v4, p2}, Lg/ja;->j(Lg/ri;)Lg/gtx;

    new-instance v0, Lg/apk;

    move-object v4, v3

    aget-object v3, v4, v7

    aget-object v4, v4, v11

    move-object v1, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lg/apk;-><init>(Lg/bkj;Lg/eem;Ljava/lang/reflect/Type;Lg/bke;Ljava/lang/reflect/Type;Lg/bke;)V

    move-object v6, v0

    :goto_3
    return-object v6

    :pswitch_0
    iget-object v1, p2, Lg/ri;->b:Ljava/lang/reflect/Type;

    iget-object v3, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    instance-of v6, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_7

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v7

    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    invoke-static {v6}, Lg/ckd;->ba(Z)V

    invoke-static {v1, v3, v8}, Lg/acr;->bv(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v3, v6, v8}, Lg/acr;->bp(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_8

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v5, v1, v7

    :cond_8
    new-instance v1, Lg/ri;

    invoke-direct {v1, v5}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v1

    invoke-virtual {v4, p2}, Lg/ja;->j(Lg/ri;)Lg/gtx;

    new-instance v6, Lg/apk;

    invoke-direct {v6, v5, p1, v1}, Lg/apk;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    :goto_4
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
