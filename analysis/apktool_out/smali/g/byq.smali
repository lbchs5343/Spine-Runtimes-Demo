.class public final Lg/byq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Lg/gwf;Ljava/lang/String;ZLjava/text/Collator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/byq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/byq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/byq;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/byq;->e:Z

    iput-object p4, p0, Lg/byq;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLg/cuf;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/byq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/byq;->a:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/byq;->b:Ljava/lang/Object;

    iput-boolean p1, p0, Lg/byq;->e:Z

    iput-object p2, p0, Lg/byq;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    iget v0, p0, Lg/byq;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/byq;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lg/byq;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lg/byq;->c:Ljava/lang/Object;

    check-cast v2, Lg/cuf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/fnz;

    invoke-virtual {p1, v0}, Lg/fnz;->i(Landroid/graphics/Rect;)V

    check-cast p2, Lg/fnz;

    invoke-virtual {p2, v1}, Lg/fnz;->i(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget-boolean v2, p0, Lg/byq;->e:Z

    if-ge p1, p2, :cond_2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    if-le p1, p2, :cond_5

    goto :goto_1

    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_6

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_6
    if-le p1, p2, :cond_9

    if-eqz v2, :cond_8

    :cond_7
    :goto_0
    const/4 p1, -0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_0
    check-cast p1, Lg/auj;

    check-cast p2, Lg/auj;

    iget-object v0, p0, Lg/byq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/text/Collator;

    iget-object v1, p0, Lg/byq;->c:Ljava/lang/Object;

    check-cast v1, Lg/gwf;

    iget-object v2, p0, Lg/byq;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lg/auj;->j:Ljava/lang/String;

    const/4 v4, -0x1

    const/16 v5, -0x64

    if-nez v3, :cond_a

    iget-object v1, p2, Lg/auj;->j:Ljava/lang/String;

    if-nez v1, :cond_f

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    iget-object v3, p2, Lg/auj;->j:Ljava/lang/String;

    const/4 v6, 0x1

    if-nez v3, :cond_b

    const/4 v4, 0x1

    goto :goto_4

    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p1, Lg/auj;->j:Ljava/lang/String;

    iget-object v7, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p1, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v3, :cond_c

    if-ltz v7, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    :cond_c
    if-gez v7, :cond_d

    goto :goto_3

    :cond_d
    const/16 v4, -0x64

    :goto_3
    if-ne v4, v5, :cond_f

    iget-object v3, v1, Lg/gwf;->b:Lg/fc;

    iget-object v4, p1, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lg/fc;->t(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    iget-object v1, v1, Lg/gwf;->b:Lg/fc;

    iget-object v6, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lg/fc;->t(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    goto :goto_4

    :cond_e
    const/16 v4, -0x64

    :cond_f
    :goto_4
    if-ne v4, v5, :cond_11

    iget-boolean v1, p0, Lg/byq;->e:Z

    if-eqz v1, :cond_10

    iget-object p1, p1, Lg/auj;->j:Ljava/lang/String;

    iget-object p2, p2, Lg/auj;->j:Ljava/lang/String;

    new-instance v1, Lg/ens;

    invoke-direct {v1}, Lg/ens;-><init>()V

    iput-object v0, v1, Lg/ens;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Lg/ens;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    :cond_10
    iget-object p1, p1, Lg/auj;->j:Ljava/lang/String;

    iget-object p2, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_11
    :goto_5
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
