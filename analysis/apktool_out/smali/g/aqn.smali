.class public final Lg/aqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lg/aqn;

.field public static final b:Lg/aqn;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aqn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    sput-object v0, Lg/aqn;->b:Lg/aqn;

    new-instance v0, Lg/aqn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    sput-object v0, Lg/aqn;->a:Lg/aqn;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/aqn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    iget v0, p0, Lg/aqn;->c:I

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lg/bah;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzazu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzazu;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzazu;->c:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzazu;->c:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzazu;->a:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzazu;->a:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, [B

    check-cast p2, [B

    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/fnx;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lg/fnx;

    iget-boolean v0, p1, Lg/fnx;->c:Z

    iget-boolean v1, p2, Lg/fnx;->c:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget p1, p1, Lg/fnx;->b:I

    iget p2, p2, Lg/fnx;->b:I

    sub-int v3, p1, p2

    :cond_2
    :goto_1
    return v3

    :pswitch_3
    check-cast p1, Lg/db;

    check-cast p2, Lg/db;

    iget p1, p1, Lg/db;->a:I

    iget p2, p2, Lg/db;->a:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_4
    check-cast p1, Lg/buo;

    check-cast p2, Lg/buo;

    iget p1, p1, Lg/buo;->d:I

    iget p2, p2, Lg/buo;->d:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_5
    check-cast p1, Lg/he;

    check-cast p2, Lg/he;

    invoke-virtual {p1}, Lg/he;->getArea()I

    move-result v0

    invoke-virtual {p2}, Lg/he;->getArea()I

    move-result v1

    if-le v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lg/he;->b(Lg/he;)I

    move-result v0

    invoke-static {p2}, Lg/he;->b(Lg/he;)I

    move-result v1

    if-le v0, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lg/he;->b(Lg/he;)I

    move-result v0

    invoke-static {p2}, Lg/he;->b(Lg/he;)I

    move-result v1

    if-ge v0, v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lg/he;->a(Lg/he;)I

    move-result v0

    invoke-static {p2}, Lg/he;->a(Lg/he;)I

    move-result v1

    if-le v0, v1, :cond_7

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lg/he;->a(Lg/he;)I

    move-result p1

    invoke-static {p2}, Lg/he;->a(Lg/he;)I

    move-result p2

    if-ge p1, p2, :cond_8

    :goto_3
    const/4 v2, -0x1

    :cond_8
    :goto_4
    return v2

    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :pswitch_7
    check-cast p1, Lg/aug;

    check-cast p2, Lg/aug;

    iget-object p1, p1, Lg/aug;->a:Ljava/lang/String;

    iget-object p2, p2, Lg/aug;->a:Ljava/lang/String;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Lg/aug;

    check-cast p2, Lg/aug;

    iget-object p1, p1, Lg/aug;->a:Ljava/lang/String;

    iget-object p2, p2, Lg/aug;->a:Ljava/lang/String;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_9
    invoke-static {p1}, Lg/dkx;->o(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-static {p2}, Lg/dkx;->o(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-static {p1}, Lg/dkx;->p(Landroid/content/pm/ShortcutInfo;)J

    move-result-wide v0

    invoke-static {p2}, Lg/dkx;->p(Landroid/content/pm/ShortcutInfo;)J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p1}, Lg/dkx;->p(Landroid/content/pm/ShortcutInfo;)J

    move-result-wide v0

    invoke-static {p2}, Lg/dkx;->p(Landroid/content/pm/ShortcutInfo;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, -0x1

    :goto_5
    return v2

    :pswitch_a
    check-cast p1, Lg/crb;

    check-cast p2, Lg/crb;

    iget p1, p1, Lg/crb;->k:I

    iget p2, p2, Lg/crb;->k:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_b
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_c
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_d
    check-cast p1, Lg/he;

    check-cast p2, Lg/he;

    invoke-virtual {p1}, Lg/he;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Lg/he;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_6
    return v0

    :pswitch_e
    check-cast p1, Lg/lj;

    check-cast p2, Lg/lj;

    iget-object v0, p1, Lg/lj;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    iget-object v5, p2, Lg/lj;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    if-eq v1, v5, :cond_10

    if-nez v0, :cond_11

    goto :goto_9

    :cond_10
    iget-boolean v0, p1, Lg/lj;->c:Z

    iget-boolean v1, p2, Lg/lj;->c:Z

    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_12

    :cond_11
    const/4 v2, -0x1

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_13
    iget v0, p2, Lg/lj;->d:I

    iget v1, p1, Lg/lj;->d:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_14

    move v2, v0

    goto :goto_a

    :cond_14
    iget p1, p1, Lg/lj;->e:I

    iget p2, p2, Lg/lj;->e:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_15

    move v2, p1

    :cond_15
    :goto_a
    return v2

    :pswitch_f
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg/cd;->m(Landroid/view/View;)F

    move-result p1

    invoke-static {p2}, Lg/cd;->m(Landroid/view/View;)F

    move-result p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_16

    const/4 v2, -0x1

    goto :goto_b

    :cond_16
    cmpg-float p1, p1, p2

    if-gez p1, :cond_17

    const/4 v2, 0x1

    :cond_17
    :goto_b
    return v2

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    const-string v0, "a"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    :goto_c
    if-ge v1, v0, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_18

    invoke-static {v5, v6}, Lg/bff;->ad(II)I

    move-result p1

    if-gez p1, :cond_1a

    goto :goto_d

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_1b

    if-ge p1, p2, :cond_1a

    :goto_d
    const/4 v2, -0x1

    goto :goto_e

    :cond_1a
    const/4 v2, 0x1

    :cond_1b
    :goto_e
    return v2

    :pswitch_11
    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_12
    check-cast p1, Lg/fgh;

    check-cast p2, Lg/fgh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
