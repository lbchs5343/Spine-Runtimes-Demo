.class public final Lg/fzg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[I

.field public static final c:[Z

.field public static final d:Ljava/lang/ThreadLocal;

.field public static final e:[I

.field public static final f:[Z

.field public static final g:Z


# instance fields
.field public h:I

.field public final i:Ljava/util/Locale;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public l:C

.field public m:Ljava/util/Calendar;

.field public n:I

.field public o:I

.field public p:[C

.field public final q:Ljava/lang/String;

.field public r:I

.field public s:Z

.field public t:I

.field public final u:Ljava/util/TimeZone;

.field public final v:Z

.field public final w:I

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lg/fzg;->g:Z

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lg/fzg;->d:Ljava/lang/ThreadLocal;

    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lg/fzg;->e:[I

    const/16 v1, 0x30

    const/16 v2, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v2, v5, :cond_1

    sget-object v5, Lg/fzg;->e:[I

    add-int/lit8 v6, v2, -0x30

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v2, 0x61

    const/16 v6, 0x61

    :goto_3
    const/16 v7, 0x66

    if-gt v6, v7, :cond_2

    sget-object v7, Lg/fzg;->e:[I

    add-int/lit8 v8, v6, -0x57

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v6, 0x41

    const/16 v7, 0x41

    :goto_4
    const/16 v8, 0x46

    if-gt v7, v8, :cond_3

    sget-object v8, Lg/fzg;->e:[I

    add-int/lit8 v9, v7, -0x37

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    sput-object v7, Lg/fzg;->a:[C

    const/16 v8, 0x100

    new-array v9, v8, [I

    sput-object v9, Lg/fzg;->b:[I

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    array-length v0, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v0, :cond_4

    sget-object v9, Lg/fzg;->b:[I

    sget-object v10, Lg/fzg;->a:[C

    aget-char v10, v10, v7

    aput v7, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    sget-object v0, Lg/fzg;->b:[I

    const/16 v7, 0x3d

    aput v3, v0, v7

    new-array v0, v8, [Z

    sput-object v0, Lg/fzg;->c:[Z

    const/4 v0, 0x0

    :goto_6
    sget-object v7, Lg/fzg;->c:[Z

    array-length v9, v7

    const/16 v10, 0x5f

    const/16 v11, 0x7a

    const/16 v12, 0x5a

    if-ge v0, v9, :cond_8

    if-lt v0, v6, :cond_5

    if-gt v0, v12, :cond_5

    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_5
    if-lt v0, v2, :cond_6

    if-gt v0, v11, :cond_6

    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_6
    if-ne v0, v10, :cond_7

    aput-boolean v4, v7, v0

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_8
    new-array v0, v8, [Z

    sput-object v0, Lg/fzg;->f:[Z

    :goto_8
    sget-object v0, Lg/fzg;->f:[Z

    array-length v7, v0

    if-ge v3, v7, :cond_d

    if-lt v3, v6, :cond_9

    if-gt v3, v12, :cond_9

    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_9
    if-lt v3, v2, :cond_a

    if-gt v3, v11, :cond_a

    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_a
    if-ne v3, v10, :cond_b

    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_b
    if-lt v3, v1, :cond_c

    if-gt v3, v5, :cond_c

    aput-boolean v4, v0, v3

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_8

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lg/ex;->a:I

    invoke-direct {p0, p1, v0}, Lg/fzg;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lg/ex;->a:I

    iput v0, p0, Lg/fzg;->w:I

    sget-object v0, Lg/ex;->d:Ljava/util/TimeZone;

    iput-object v0, p0, Lg/fzg;->u:Ljava/util/TimeZone;

    sget-object v0, Lg/ex;->e:Ljava/util/Locale;

    iput-object v0, p0, Lg/fzg;->i:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fzg;->m:Ljava/util/Calendar;

    const/4 v1, 0x0

    iput v1, p0, Lg/fzg;->r:I

    sget-object v2, Lg/fzg;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lg/fzg;->p:[C

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [C

    iput-object v2, p0, Lg/fzg;->p:[C

    :cond_0
    iput p2, p0, Lg/fzg;->w:I

    iput-object p1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lg/fzg;->j:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lg/fzg;->n:I

    if-lt v3, v2, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    iput-char p1, p0, Lg/fzg;->l:C

    const v2, 0xfeff

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lg/fzg;->ag()C

    :cond_2
    sget-object p1, Lg/cbj;->InitStringFieldAsEmpty:Lg/cbj;

    iget p1, p1, Lg/cbj;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const-string v0, ""

    :cond_3
    iput-object v0, p0, Lg/fzg;->q:Ljava/lang/String;

    sget-object p1, Lg/cbj;->DisableCircularReferenceDetect:Lg/cbj;

    iget p1, p1, Lg/cbj;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lg/fzg;->v:Z

    return-void
.end method

.method public static aa([CI)Ljava/lang/String;
    .locals 16

    move/from16 v0, p1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    aget-char v5, p0, v3

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput-char v5, v1, v4

    move v4, v6

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aget-char v8, p0, v5

    const/16 v9, 0x22

    if-eq v8, v9, :cond_8

    const/16 v9, 0x27

    if-eq v8, v9, :cond_7

    const/16 v9, 0x46

    if-eq v8, v9, :cond_6

    if-eq v8, v6, :cond_5

    const/16 v6, 0x62

    if-eq v8, v6, :cond_4

    const/16 v6, 0x66

    if-eq v8, v6, :cond_6

    const/16 v6, 0x6e

    if-eq v8, v6, :cond_3

    const/16 v6, 0x72

    if-eq v8, v6, :cond_2

    const/16 v6, 0x78

    const/16 v9, 0x10

    if-eq v8, v6, :cond_1

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    new-instance v0, Lg/bfj;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xb

    aput-char v6, v1, v4

    :goto_1
    move v4, v3

    move v3, v5

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 v5, v4, 0x1

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v12, v3, 0x2

    aget-char v12, p0, v12

    add-int/lit8 v13, v3, 0x3

    aget-char v13, p0, v13

    add-int/lit8 v14, v3, 0x4

    aget-char v14, p0, v14

    add-int/lit8 v3, v3, 0x5

    aget-char v15, p0, v3

    new-array v6, v6, [C

    aput-char v12, v6, v2

    aput-char v13, v6, v7

    aput-char v14, v6, v11

    aput-char v15, v6, v10

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v1, v4

    :goto_2
    move v4, v5

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x9

    aput-char v6, v1, v4

    goto :goto_1

    :pswitch_3
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x7

    aput-char v6, v1, v4

    goto :goto_1

    :pswitch_4
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x6

    aput-char v6, v1, v4

    goto :goto_1

    :pswitch_5
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x5

    aput-char v6, v1, v4

    goto :goto_1

    :pswitch_6
    add-int/lit8 v3, v4, 0x1

    aput-char v6, v1, v4

    goto :goto_1

    :pswitch_7
    add-int/lit8 v3, v4, 0x1

    aput-char v10, v1, v4

    goto :goto_1

    :pswitch_8
    add-int/lit8 v3, v4, 0x1

    aput-char v11, v1, v4

    goto :goto_1

    :pswitch_9
    add-int/lit8 v3, v4, 0x1

    aput-char v7, v1, v4

    goto :goto_1

    :pswitch_a
    add-int/lit8 v3, v4, 0x1

    aput-char v2, v1, v4

    goto :goto_1

    :pswitch_b
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x2f

    aput-char v6, v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, 0x2

    aget-char v6, p0, v6

    sget-object v8, Lg/fzg;->e:[I

    aget v6, v8, v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v3, v3, 0x3

    aget-char v9, p0, v3

    aget v8, v8, v9

    add-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xd

    aput-char v6, v1, v4

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xa

    aput-char v6, v1, v4

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x8

    aput-char v6, v1, v4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v3, v4, 0x1

    aput-char v6, v1, v4

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xc

    aput-char v6, v1, v4

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v3, v4, 0x1

    aput-char v9, v1, v4

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v3, v4, 0x1

    aput-char v9, v1, v4

    goto/16 :goto_1

    :goto_3
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(CCCCCCII)Z
    .locals 4

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/16 v2, 0x31

    if-eq p0, v2, :cond_0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p4, p0, :cond_5

    if-lt p5, v2, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v1

    :cond_5
    if-ne p4, v2, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v2, :cond_6

    if-eq p5, v0, :cond_6

    return v1

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v2, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v1

    :cond_8
    if-eq p6, v2, :cond_b

    if-ne p6, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x33

    if-ne p6, p1, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v2, :cond_c

    :cond_a
    return v1

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v1
.end method

.method public static z(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_b

    if-lt p1, v2, :cond_b

    const/16 p0, 0x34

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x36

    const/16 p1, 0x35

    if-lt p2, v2, :cond_6

    if-gt p2, p1, :cond_6

    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p2, p0, :cond_b

    if-eq p3, v2, :cond_7

    return v1

    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, p1, :cond_9

    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p4, p0, :cond_b

    if-eq p5, v2, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v1
.end method


# virtual methods
.method public final ab([C)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v1

    iget-object v2, p0, Lg/fzg;->q:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return-object v2

    :cond_0
    array-length p1, p1

    iget v1, p0, Lg/fzg;->n:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    const-string p1, "unclosed str, "

    iget v4, p0, Lg/fzg;->j:I

    if-ge v1, v4, :cond_10

    iget-object v5, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    const/4 v7, -0x1

    if-eq v1, v6, :cond_1

    iput v7, p0, Lg/fzg;->r:I

    return-object v2

    :cond_1
    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, v3

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-eq v8, v7, :cond_f

    sget-boolean p1, Lg/fzg;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sub-int p1, v8, v1

    iget v9, p0, Lg/fzg;->n:I

    add-int/2addr v9, v3

    invoke-virtual {p0, v9, p1}, Lg/fzg;->ai(II)[C

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9, v0, p1}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v10

    :goto_0
    const/16 v9, 0x5c

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v7, :cond_6

    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x0

    :goto_2
    if-ltz v10, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_5

    sub-int v1, v8, v1

    iget v6, p0, Lg/fzg;->n:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v1}, Lg/fzg;->ai(II)[C

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-static {v3, v1}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_6

    invoke-static {v3, v1}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v0, v8, 0x1

    const/16 v1, 0x1a

    if-lt v0, v4, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v3, 0x10

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_9

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lg/fzg;->n:I

    if-lt v8, v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    iput-char v1, p0, Lg/fzg;->l:C

    const/4 v0, 0x3

    iput v0, p0, Lg/fzg;->r:I

    iput v3, p0, Lg/fzg;->o:I

    return-object p1

    :cond_9
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_e

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8}, Lg/fzg;->bk(I)C

    move-result v0

    if-ne v0, v6, :cond_a

    iput v3, p0, Lg/fzg;->o:I

    iput v8, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_6

    :cond_a
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_b

    const/16 v0, 0xf

    iput v0, p0, Lg/fzg;->o:I

    iput v8, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_6

    :cond_b
    if-ne v0, v4, :cond_c

    const/16 v0, 0xd

    iput v0, p0, Lg/fzg;->o:I

    iput v8, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_6

    :cond_c
    if-ne v0, v1, :cond_d

    const/16 v0, 0x14

    iput v0, p0, Lg/fzg;->o:I

    iput v8, p0, Lg/fzg;->n:I

    iput-char v1, p0, Lg/fzg;->l:C

    :goto_6
    const/4 v0, 0x4

    iput v0, p0, Lg/fzg;->r:I

    return-object p1

    :cond_d
    iput v7, p0, Lg/fzg;->r:I

    return-object v2

    :cond_e
    iput v7, p0, Lg/fzg;->r:I

    return-object v2

    :cond_f
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ad()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lg/fzg;->bk(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    sget-boolean v5, Lg/fzg;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    sub-int v5, v3, v0

    iget v7, p0, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7, v5}, Lg/fzg;->ai(II)[C

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v6, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v8

    :goto_0
    const/16 v7, 0x5c

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_3

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ltz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    sub-int v0, v3, v0

    iget v2, p0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Lg/fzg;->ai(II)[C

    move-result-object v2

    invoke-static {v2, v0}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lg/fzg;->n:I

    iget v0, p0, Lg/fzg;->j:I

    if-lt v3, v0, :cond_4

    const/16 v0, 0x1a

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lg/fzg;->l:C

    return-object v5

    :cond_5
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unclosed str, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final af(CCCCCCCC)V
    .locals 2

    iget-object v0, p0, Lg/fzg;->u:Ljava/util/TimeZone;

    iget-object v1, p0, Lg/fzg;->i:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lg/fzg;->m:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p2, p1

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p3, p2

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p4, p3

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p6, p5

    const/4 p1, 0x1

    sub-int/2addr p6, p1

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p8, p7

    invoke-virtual {v0, p1, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lg/fzg;->m:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p6}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lg/fzg;->m:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p8}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final ag()C
    .locals 2

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fzg;->n:I

    iget v1, p0, Lg/fzg;->j:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lg/fzg;->l:C

    return v0
.end method

.method public final ah([C)J
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lg/fzg;->r:I

    invoke-virtual/range {p0 .. p1}, Lg/fzg;->be([C)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_0
    move-object/from16 v2, p1

    array-length v2, v2

    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    iget-object v7, v0, Lg/fzg;->k:Ljava/lang/String;

    iget v8, v0, Lg/fzg;->j:I

    const/16 v9, 0x1a

    if-lt v5, v8, :cond_1

    const/16 v5, 0x1a

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    const/16 v10, 0x22

    const/4 v11, 0x1

    if-ne v5, v10, :cond_3

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v6

    if-lt v1, v8, :cond_2

    const/16 v5, 0x1a

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v5, v1

    :goto_1
    move v6, v2

    const/4 v1, 0x1

    :cond_3
    const/16 v2, 0x30

    const/4 v12, -0x1

    if-lt v5, v2, :cond_15

    const/16 v13, 0x39

    if-gt v5, v13, :cond_15

    sub-int/2addr v5, v2

    int-to-long v14, v5

    :goto_2
    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v5, v6

    if-lt v5, v8, :cond_4

    const/16 v5, 0x1a

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_3
    if-lt v5, v2, :cond_5

    if-gt v5, v13, :cond_5

    const-wide/16 v17, 0xa

    mul-long v14, v14, v17

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v14, v5

    move/from16 v6, v16

    goto :goto_2

    :cond_5
    const/16 v2, 0x2e

    if-ne v5, v2, :cond_6

    iput v12, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_6
    if-ne v5, v10, :cond_9

    if-nez v1, :cond_7

    iput v12, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_7
    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x2

    add-int v1, v1, v16

    if-lt v1, v8, :cond_8

    const/16 v5, 0x1a

    goto :goto_4

    :cond_8
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v5, v1

    :goto_4
    move/from16 v16, v6

    :cond_9
    cmp-long v1, v14, v3

    if-gez v1, :cond_a

    iput v12, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_a
    const/16 v1, 0x10

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_c

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v16, v16, -0x1

    add-int v16, v16, v2

    add-int/lit8 v2, v16, 0x1

    iput v2, v0, Lg/fzg;->n:I

    if-lt v2, v8, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, v0, Lg/fzg;->l:C

    const/4 v2, 0x3

    iput v2, v0, Lg/fzg;->r:I

    iput v1, v0, Lg/fzg;->o:I

    return-wide v14

    :cond_c
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_14

    iget v5, v0, Lg/fzg;->n:I

    add-int v5, v5, v16

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    if-ne v5, v2, :cond_e

    iput v1, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int v1, v1, v16

    add-int/2addr v1, v11

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v8, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, v0, Lg/fzg;->l:C

    goto :goto_9

    :cond_e
    const/16 v1, 0x5d

    if-ne v5, v1, :cond_10

    const/16 v1, 0xf

    iput v1, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int v1, v1, v16

    add-int/2addr v1, v11

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v8, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_7
    iput-char v9, v0, Lg/fzg;->l:C

    goto :goto_9

    :cond_10
    if-ne v5, v6, :cond_12

    const/16 v1, 0xd

    iput v1, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int v1, v1, v16

    add-int/2addr v1, v11

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v8, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_8
    iput-char v9, v0, Lg/fzg;->l:C

    goto :goto_9

    :cond_12
    if-ne v5, v9, :cond_13

    const/16 v1, 0x14

    iput v1, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int v1, v1, v16

    iput v1, v0, Lg/fzg;->n:I

    iput-char v9, v0, Lg/fzg;->l:C

    :goto_9
    const/4 v1, 0x4

    iput v1, v0, Lg/fzg;->r:I

    return-wide v14

    :cond_13
    iput v12, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_14
    iput v12, v0, Lg/fzg;->r:I

    return-wide v3

    :cond_15
    iput v12, v0, Lg/fzg;->r:I

    return-wide v3
.end method

.method public final ai(II)[C
    .locals 4

    iget-object v0, p0, Lg/fzg;->p:[C

    array-length v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lg/fzg;->k:Ljava/lang/String;

    if-ge p2, v1, :cond_0

    add-int/2addr p2, p1

    invoke-virtual {v3, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lg/fzg;->p:[C

    return-object p1

    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lg/fzg;->p:[C

    add-int/2addr p2, p1

    invoke-virtual {v3, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public final aj()V
    .locals 3

    :goto_0
    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lg/fzg;->as()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ak()V
    .locals 12

    iget-char v0, p0, Lg/fzg;->l:C

    iget v1, p0, Lg/fzg;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    sub-int v1, v4, v1

    iget v5, p0, Lg/fzg;->n:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5, v1}, Lg/fzg;->ai(II)[C

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x5c

    if-lez v1, :cond_4

    add-int/lit8 v9, v1, -0x1

    aget-char v9, v5, v9

    if-ne v9, v8, :cond_4

    add-int/lit8 v9, v1, -0x2

    const/4 v10, 0x1

    :goto_1
    if-ltz v9, :cond_0

    aget-char v11, v5, v9

    if-ne v11, v8, :cond_0

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_0
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    sub-int v8, v7, v4

    add-int/2addr v8, v1

    array-length v9, v5

    if-lt v8, v9, :cond_3

    array-length v9, v5

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    if-ge v9, v8, :cond_2

    move v9, v8

    :cond_2
    new-array v9, v9, [C

    array-length v10, v5

    invoke-static {v5, v6, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v9

    :cond_3
    invoke-virtual {v3, v4, v7, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v7

    move v1, v8

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v7, :cond_6

    :goto_3
    if-ge v6, v1, :cond_6

    aget-char v0, v5, v6

    if-ne v0, v8, :cond_5

    const/4 v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iput-object v5, p0, Lg/fzg;->p:[C

    iput v1, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    iput v0, p0, Lg/fzg;->h:I

    iput-boolean v7, p0, Lg/fzg;->s:Z

    add-int/2addr v4, v2

    iput v4, p0, Lg/fzg;->n:I

    iget v0, p0, Lg/fzg;->j:I

    if-lt v4, v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lg/fzg;->l:C

    const/4 v0, 0x4

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_8
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unclosed str, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final al([C)Z
    .locals 5

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lg/fzg;->n:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lg/fzg;->n:I

    iget p1, p0, Lg/fzg;->j:I

    if-ge v0, p1, :cond_5

    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lg/fzg;->l:C

    const/16 v2, 0x7b

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v4

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, p0, Lg/fzg;->l:C

    const/16 p1, 0xc

    iput p1, p0, Lg/fzg;->o:I

    goto :goto_2

    :cond_2
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_4

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v4

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    iput-char v3, p0, Lg/fzg;->l:C

    const/16 p1, 0xe

    iput p1, p0, Lg/fzg;->o:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lg/fzg;->az()V

    :goto_2
    return v4

    :cond_5
    new-instance p1, Lg/bfj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unclosed str, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final am(Z)Z
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lg/fzg;->n:I

    sub-int v9, v2, v3

    const/16 v10, 0x2b

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/16 v13, 0xd

    const/16 v14, 0x39

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v2, 0x30

    if-nez p1, :cond_5

    if-le v9, v13, :cond_5

    const-string v5, "/Date("

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_5

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v9

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_5

    const/4 v1, -0x1

    const/4 v3, 0x6

    const/4 v5, -0x1

    :goto_0
    if-ge v3, v9, :cond_2

    iget v6, v0, Lg/fzg;->n:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lg/fzg;->bk(I)C

    move-result v6

    if-ne v6, v10, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    if-lt v6, v2, :cond_2

    if-le v6, v14, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ne v5, v1, :cond_4

    :cond_3
    :goto_3
    const/16 v28, 0x0

    goto/16 :goto_b

    :cond_4
    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v11

    sub-int/2addr v5, v1

    invoke-virtual {v0, v1, v5}, Lg/fzg;->bc(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, v0, Lg/fzg;->u:Ljava/util/TimeZone;

    iget-object v4, v0, Lg/fzg;->i:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iput v15, v0, Lg/fzg;->o:I

    return v16

    :cond_5
    const/16 v1, 0x11

    const/16 v3, 0x8

    const/16 v17, 0x3

    const/16 v7, 0xe

    const/16 v8, 0xa

    if-eq v9, v3, :cond_6

    if-eq v9, v7, :cond_6

    if-ne v9, v1, :cond_7

    :cond_6
    const/16 v10, 0xc

    const/4 v11, 0x0

    const/16 v12, 0xb

    const/16 v14, 0xe

    const/16 v18, 0x6

    const/16 v19, 0x8

    const/16 v21, 0x11

    const/16 v32, 0xa

    goto/16 :goto_a

    :cond_7
    if-ge v9, v8, :cond_8

    goto :goto_3

    :cond_8
    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v18, 0x6

    const/16 v11, 0x2d

    if-eq v1, v11, :cond_9

    goto :goto_3

    :cond_9
    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    if-eq v1, v11, :cond_a

    goto :goto_3

    :cond_a
    iget v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v2

    const/16 v19, 0x8

    iget v3, v0, Lg/fzg;->n:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v3}, Lg/fzg;->bk(I)C

    move-result v3

    iget v4, v0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Lg/fzg;->bk(I)C

    move-result v4

    iget v5, v0, Lg/fzg;->n:I

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    iget v6, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v0, v6}, Lg/fzg;->bk(I)C

    move-result v6

    iget v7, v0, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v0, v7}, Lg/fzg;->bk(I)C

    move-result v7

    iget v8, v0, Lg/fzg;->n:I

    add-int/lit8 v8, v8, 0x9

    invoke-virtual {v0, v8}, Lg/fzg;->bk(I)C

    move-result v8

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-static/range {v19 .. v26}, Lg/fzg;->y(CCCCCCII)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_3

    :cond_b
    move/from16 v1, v19

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/16 v12, 0xb

    const/16 v14, 0xe

    const/16 v21, 0x11

    const/16 v32, 0xa

    invoke-virtual/range {v0 .. v8}, Lg/fzg;->af(CCCCCCCC)V

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v2, 0x54

    const/16 v3, 0x1a

    const/16 v4, 0x22

    if-eq v1, v2, :cond_e

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    if-eq v1, v4, :cond_d

    if-ne v1, v3, :cond_3

    :cond_d
    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v11}, Ljava/util/Calendar;->set(II)V

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iput-char v1, v0, Lg/fzg;->l:C

    iput v15, v0, Lg/fzg;->o:I

    return v16

    :cond_e
    :goto_4
    const/16 v1, 0x13

    if-ge v9, v1, :cond_f

    goto/16 :goto_3

    :cond_f
    iget v2, v0, Lg/fzg;->n:I

    add-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v2

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_10

    goto/16 :goto_3

    :cond_10
    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v2

    if-eq v2, v5, :cond_11

    goto/16 :goto_3

    :cond_11
    iget v2, v0, Lg/fzg;->n:I

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v24

    iget v2, v0, Lg/fzg;->n:I

    add-int/2addr v2, v10

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v25

    iget v2, v0, Lg/fzg;->n:I

    add-int/2addr v2, v14

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v26

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v27

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x11

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v28

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x12

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v29

    invoke-static/range {v24 .. v29}, Lg/fzg;->z(CCCCCC)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v2, 0x30

    add-int/lit8 v24, v24, -0x30

    mul-int/lit8 v24, v24, 0xa

    add-int/lit8 v25, v25, -0x30

    add-int v6, v25, v24

    add-int/lit8 v26, v26, -0x30

    mul-int/lit8 v26, v26, 0xa

    add-int/lit8 v27, v27, -0x30

    add-int v7, v27, v26

    add-int/lit8 v28, v28, -0x30

    mul-int/lit8 v28, v28, 0xa

    add-int/lit8 v29, v29, -0x30

    add-int v8, v29, v28

    const/16 p1, 0x13

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v10, v7}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v8}, Ljava/util/Calendar;->set(II)V

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x13

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v6, 0x2e

    const/16 v7, 0x5a

    if-ne v1, v6, :cond_25

    const/16 v1, 0x17

    if-ge v9, v1, :cond_13

    goto/16 :goto_3

    :cond_13
    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    if-lt v1, v2, :cond_3

    const/16 v6, 0x39

    if-le v1, v6, :cond_14

    goto/16 :goto_3

    :cond_14
    sget-object v8, Lg/fzg;->e:[I

    aget v1, v8, v1

    iget v9, v0, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x15

    invoke-virtual {v0, v9}, Lg/fzg;->bk(I)C

    move-result v9

    if-lt v9, v2, :cond_15

    if-gt v9, v6, :cond_15

    mul-int/lit8 v1, v1, 0xa

    aget v6, v8, v9

    add-int/2addr v1, v6

    const/4 v6, 0x2

    :goto_5
    const/4 v9, 0x2

    goto :goto_6

    :cond_15
    const/4 v6, 0x1

    goto :goto_5

    :goto_6
    if-ne v6, v9, :cond_16

    iget v9, v0, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x16

    invoke-virtual {v0, v9}, Lg/fzg;->bk(I)C

    move-result v9

    if-lt v9, v2, :cond_16

    const/16 v10, 0x39

    if-gt v9, v10, :cond_16

    mul-int/lit8 v1, v1, 0xa

    aget v6, v8, v9

    add-int/2addr v1, v6

    const/4 v6, 0x3

    :cond_16
    iget-object v9, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v9, v14, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v9, 0x2b

    if-eq v1, v9, :cond_1a

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_17

    goto :goto_7

    :cond_17
    if-ne v1, v7, :cond_19

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v11}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_18

    aget-object v1, v1, v11

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_18
    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_1a
    :goto_7
    iget v7, v0, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x14

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lg/fzg;->bk(I)C

    move-result v7

    if-lt v7, v2, :cond_3

    const/16 v9, 0x31

    if-le v7, v9, :cond_1b

    goto/16 :goto_3

    :cond_1b
    iget v9, v0, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x14

    add-int/2addr v9, v6

    const/16 v22, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v0, v9}, Lg/fzg;->bk(I)C

    move-result v9

    if-lt v9, v2, :cond_3

    const/16 v10, 0x39

    if-le v9, v10, :cond_1c

    goto/16 :goto_3

    :cond_1c
    iget v10, v0, Lg/fzg;->n:I

    add-int/lit8 v10, v10, 0x14

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10}, Lg/fzg;->bk(I)C

    move-result v10

    if-ne v10, v5, :cond_1f

    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    if-eq v5, v2, :cond_1d

    goto/16 :goto_3

    :cond_1d
    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    if-eq v5, v2, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v17, 0x6

    goto :goto_8

    :cond_1f
    if-ne v10, v2, :cond_21

    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    if-eq v5, v2, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v17, 0x5

    :cond_21
    :goto_8
    aget v2, v8, v7

    mul-int/lit8 v2, v2, 0xa

    aget v5, v8, v9

    add-int/2addr v2, v5

    const v5, 0x36ee80

    mul-int v2, v2, v5

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_22

    neg-int v2, v2

    :cond_22
    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v2, :cond_23

    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_23

    aget-object v1, v1, v11

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_23
    :goto_9
    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x14

    add-int v6, v6, v17

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    if-eq v1, v3, :cond_24

    if-eq v1, v4, :cond_24

    goto/16 :goto_3

    :cond_24
    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v6

    iput v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iput-char v1, v0, Lg/fzg;->l:C

    iput v15, v0, Lg/fzg;->o:I

    return v16

    :cond_25
    iget-object v2, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v14, v11}, Ljava/util/Calendar;->set(II)V

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x13

    iput v2, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v2

    iput-char v2, v0, Lg/fzg;->l:C

    iput v15, v0, Lg/fzg;->o:I

    if-ne v1, v7, :cond_26

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {v11}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_26

    aget-object v1, v1, v11

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_26
    return v16

    :goto_a
    if-eqz p1, :cond_27

    goto/16 :goto_3

    :cond_27
    iget v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iget v3, v0, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lg/fzg;->bk(I)C

    move-result v25

    iget v3, v0, Lg/fzg;->n:I

    const/16 v22, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lg/fzg;->bk(I)C

    move-result v3

    iget v4, v0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Lg/fzg;->bk(I)C

    move-result v4

    iget v5, v0, Lg/fzg;->n:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Lg/fzg;->bk(I)C

    move-result v5

    iget v6, v0, Lg/fzg;->n:I

    add-int/2addr v6, v15

    invoke-virtual {v0, v6}, Lg/fzg;->bk(I)C

    move-result v29

    iget v6, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v0, v6}, Lg/fzg;->bk(I)C

    move-result v30

    iget v6, v0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x7

    invoke-virtual {v0, v6}, Lg/fzg;->bk(I)C

    move-result v31

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    invoke-static/range {v24 .. v31}, Lg/fzg;->y(CCCCCCII)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_3

    :cond_28
    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    const/16 v11, 0x8

    const/16 v15, 0x30

    const/16 v28, 0x0

    invoke-virtual/range {v0 .. v8}, Lg/fzg;->af(CCCCCCCC)V

    if-eq v9, v11, :cond_2f

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v2

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v3

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v4

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v5

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v6

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v7

    invoke-static/range {v2 .. v7}, Lg/fzg;->z(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_b

    :cond_29
    const/16 v1, 0x11

    if-ne v9, v1, :cond_2e

    iget v1, v0, Lg/fzg;->n:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iget v8, v0, Lg/fzg;->n:I

    add-int/lit8 v8, v8, 0xf

    invoke-virtual {v0, v8}, Lg/fzg;->bk(I)C

    move-result v8

    iget v9, v0, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lg/fzg;->bk(I)C

    move-result v9

    if-lt v1, v15, :cond_2d

    const/16 v11, 0x39

    if-le v1, v11, :cond_2a

    goto :goto_b

    :cond_2a
    if-lt v8, v15, :cond_2d

    if-le v8, v11, :cond_2b

    goto :goto_b

    :cond_2b
    if-lt v9, v15, :cond_2d

    if-le v9, v11, :cond_2c

    goto :goto_b

    :cond_2c
    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v1

    sub-int/2addr v9, v15

    add-int v1, v9, v8

    goto :goto_c

    :cond_2d
    :goto_b
    return v28

    :cond_2e
    const/4 v1, 0x0

    :goto_c
    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v3, v15

    add-int/2addr v2, v3

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, v15

    add-int/2addr v4, v5

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v3, v7, v6

    move/from16 v33, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v33

    goto :goto_d

    :cond_2f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    iget-object v5, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v12, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v4, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v4, v10, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    iput v1, v0, Lg/fzg;->o:I

    return v16
.end method

.method public final an(Lg/cbj;)Z
    .locals 1

    iget v0, p0, Lg/fzg;->w:I

    iget p1, p1, Lg/cbj;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ao()[B
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lg/fzg;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, v0, Lg/fzg;->x:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-array v1, v4, [B

    return-object v1

    :cond_0
    add-int v5, v1, v3

    sub-int/2addr v5, v2

    :goto_0
    iget-object v6, v0, Lg/fzg;->k:Ljava/lang/String;

    sget-object v7, Lg/fzg;->b:[I

    if-ge v1, v5, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget v8, v7, v8

    if-gez v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget v8, v7, v8

    if-gez v8, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_3

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    sub-int v9, v5, v1

    add-int/2addr v9, v2

    const/16 v10, 0x4c

    if-le v3, v10, :cond_6

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0xd

    if-ne v3, v10, :cond_5

    div-int/lit8 v3, v9, 0x4e

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    shl-int/2addr v3, v2

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0x6

    shr-int/lit8 v9, v9, 0x3

    sub-int/2addr v9, v8

    new-array v10, v9, [B

    div-int/lit8 v11, v9, 0x3

    mul-int/lit8 v11, v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v12, v11, :cond_8

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v15, v7, v15

    shl-int/lit8 v15, v15, 0x12

    const/16 v16, 0x1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget v14, v7, v14

    shl-int/lit8 v14, v14, 0xc

    or-int/2addr v14, v15

    add-int/lit8 v15, v1, 0x3

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v7, v2

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v14

    add-int/lit8 v14, v1, 0x4

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v15, v7, v15

    or-int/2addr v2, v15

    add-int/lit8 v15, v12, 0x1

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v10, v12

    add-int/lit8 v4, v12, 0x2

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, v10, v15

    add-int/lit8 v12, v12, 0x3

    int-to-byte v0, v2

    aput-byte v0, v10, v4

    if-lez v3, :cond_7

    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x13

    if-ne v13, v0, :cond_7

    add-int/lit8 v1, v1, 0x6

    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    move v1, v14

    :goto_6
    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v16, 0x1

    if-ge v12, v9, :cond_a

    const/4 v4, 0x0

    const/16 v17, 0x0

    :goto_7
    sub-int v0, v5, v8

    if-gt v1, v0, :cond_9

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v7, v1

    mul-int/lit8 v2, v17, 0x6

    rsub-int/lit8 v2, v2, 0x12

    shl-int/2addr v1, v2

    or-int/2addr v4, v1

    add-int/lit8 v17, v17, 0x1

    move v1, v0

    goto :goto_7

    :cond_9
    const/16 v0, 0x10

    :goto_8
    if-ge v12, v9, :cond_a

    add-int/lit8 v1, v12, 0x1

    shr-int v2, v4, v0

    int-to-byte v2, v2

    aput-byte v2, v10, v12

    add-int/lit8 v0, v0, -0x8

    move v12, v1

    goto :goto_8

    :cond_a
    return-object v10
.end method

.method public final ap([C)Z
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return v0

    :cond_0
    array-length p1, p1

    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lg/fzg;->k:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x5

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, p1

    const-string v6, "true"

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/2addr p1, v3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, p1

    const-string v6, "\"false\""

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_3
    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, p1

    const-string v6, "\"true\""

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 p1, p1, 0x6

    goto :goto_1

    :goto_2
    iget v6, p0, Lg/fzg;->n:I

    add-int/lit8 v7, p1, 0x1

    add-int/2addr v6, p1

    invoke-virtual {p0, v6}, Lg/fzg;->bk(I)C

    move-result v6

    const/16 v8, 0x10

    const/16 v9, 0x2c

    iget v10, p0, Lg/fzg;->j:I

    const/16 v11, 0x1a

    if-ne v6, v9, :cond_5

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, p1

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_3
    iput-char v11, p0, Lg/fzg;->l:C

    const/4 p1, 0x3

    iput p1, p0, Lg/fzg;->r:I

    iput v8, p0, Lg/fzg;->o:I

    return v1

    :cond_5
    const/16 v12, 0x7d

    if-ne v6, v12, :cond_d

    iget v6, p0, Lg/fzg;->n:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lg/fzg;->bk(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    iput v8, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr p1, v5

    add-int/2addr p1, v0

    add-int/2addr p1, v5

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_4
    iput-char v11, p0, Lg/fzg;->l:C

    goto :goto_7

    :cond_7
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_9

    const/16 v0, 0xf

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr p1, v5

    add-int/2addr p1, v0

    add-int/2addr p1, v5

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v10, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, p0, Lg/fzg;->l:C

    goto :goto_7

    :cond_9
    if-ne v6, v12, :cond_b

    const/16 v0, 0xd

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr p1, v5

    add-int/2addr p1, v0

    add-int/2addr p1, v5

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    iput-char v11, p0, Lg/fzg;->l:C

    goto :goto_7

    :cond_b
    if-ne v6, v11, :cond_c

    const/16 v0, 0x14

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr p1, v5

    add-int/2addr p1, v0

    iput p1, p0, Lg/fzg;->n:I

    iput-char v11, p0, Lg/fzg;->l:C

    :goto_7
    iput v3, p0, Lg/fzg;->r:I

    return v1

    :cond_c
    iput v4, p0, Lg/fzg;->r:I

    return v0

    :cond_d
    iput v4, p0, Lg/fzg;->r:I

    return v0

    :cond_e
    iput v4, p0, Lg/fzg;->r:I

    return v0
.end method

.method public final aq()J
    .locals 15

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->h:I

    iget-char v1, p0, Lg/fzg;->l:C

    const/16 v2, 0x2d

    iget-object v3, p0, Lg/fzg;->k:Ljava/lang/String;

    iget v4, p0, Lg/fzg;->j:I

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    iput v5, p0, Lg/fzg;->h:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lg/fzg;->l:C

    const-wide/high16 v0, -0x8000000000000000L

    move-wide v1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide/16 v6, 0x0

    :goto_1
    iget-char v8, p0, Lg/fzg;->l:C

    const/16 v9, 0x30

    if-lt v8, v9, :cond_5

    const/16 v9, 0x39

    if-gt v8, v9, :cond_5

    add-int/lit8 v8, v8, -0x30

    const-wide v9, -0xcccccccccccccccL

    const-string v11, ", "

    const-string v12, "error long value, "

    cmp-long v13, v6, v9

    if-ltz v13, :cond_4

    const-wide/16 v9, 0xa

    mul-long v6, v6, v9

    int-to-long v8, v8

    add-long v13, v1, v8

    cmp-long v10, v6, v13

    if-ltz v10, :cond_3

    sub-long/2addr v6, v8

    iget v8, p0, Lg/fzg;->h:I

    add-int/2addr v8, v5

    iput v8, p0, Lg/fzg;->h:I

    iget v8, p0, Lg/fzg;->n:I

    add-int/2addr v8, v5

    iput v8, p0, Lg/fzg;->n:I

    if-lt v8, v4, :cond_2

    const/16 v8, 0x1a

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    iput-char v8, p0, Lg/fzg;->l:C

    goto :goto_1

    :cond_3
    new-instance v0, Lg/bfj;

    invoke-static {v6, v7, v12, v11}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lg/bfj;

    invoke-static {v6, v7, v12, v11}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    neg-long v0, v6

    return-wide v0

    :cond_6
    return-wide v6
.end method

.method public final ar()V
    .locals 2

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/fzg;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fzg;->s:Z

    :goto_0
    iget v0, p0, Lg/fzg;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    iget-char v0, p0, Lg/fzg;->l:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_3
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_5
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_7
    const/16 v0, 0x12

    iput v0, p0, Lg/fzg;->o:I

    return-void
.end method

.method public final as()V
    .locals 4

    invoke-virtual {p0}, Lg/fzg;->ag()C

    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lg/fzg;->ag()C

    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/fzg;->ag()C

    return-void

    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lg/fzg;->ag()C

    :cond_2
    :goto_0
    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lg/fzg;->ag()C

    iget-char v0, p0, Lg/fzg;->l:C

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lg/fzg;->ag()C

    return-void

    :cond_3
    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lg/bfj;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final at(Lg/gqc;)Ljava/lang/String;
    .locals 5

    iget-char v0, p0, Lg/fzg;->l:C

    sget-object v1, Lg/fzg;->c:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/bfj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal identifier : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lg/fzg;->l:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v1, p0, Lg/fzg;->n:I

    iput v1, p0, Lg/fzg;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lg/fzg;->x:I

    :goto_1
    invoke-virtual {p0}, Lg/fzg;->ag()C

    move-result v2

    sget-object v3, Lg/fzg;->f:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-boolean v3, v3, v2

    if-nez v3, :cond_3

    iget v1, p0, Lg/fzg;->n:I

    invoke-virtual {p0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iput-char v1, p0, Lg/fzg;->l:C

    const/16 v1, 0x12

    iput v1, p0, Lg/fzg;->o:I

    iget v1, p0, Lg/fzg;->x:I

    const/4 v2, 0x4

    iget-object v3, p0, Lg/fzg;->k:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    const-string v1, "null"

    iget v2, p0, Lg/fzg;->h:I

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget v1, p0, Lg/fzg;->h:I

    iget v2, p0, Lg/fzg;->x:I

    invoke-virtual {p1, v3, v1, v2, v0}, Lg/gqc;->az(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget v2, p0, Lg/fzg;->x:I

    add-int/2addr v2, v1

    iput v2, p0, Lg/fzg;->x:I

    goto :goto_1
.end method

.method public final au([C)D
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return-wide v1

    :cond_0
    array-length v0, p1

    iget v3, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lg/fzg;->bk(I)C

    move-result v0

    const/4 v3, -0x1

    const/16 v5, 0x30

    if-lt v0, v5, :cond_e

    const/16 v6, 0x39

    if-gt v0, v6, :cond_e

    :goto_0
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v5, :cond_2

    if-gt v0, v6, :cond_2

    :goto_1
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    move v4, v7

    goto :goto_1

    :cond_2
    iput v3, p0, Lg/fzg;->r:I

    return-wide v1

    :cond_3
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4

    const/16 v4, 0x45

    if-ne v0, v4, :cond_7

    :cond_4
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_6

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v4

    goto :goto_4

    :cond_6
    :goto_3
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    :goto_4
    if-lt v0, v5, :cond_7

    if-gt v0, v6, :cond_7

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    goto :goto_2

    :cond_7
    iget v4, p0, Lg/fzg;->n:I

    array-length p1, p1

    add-int/2addr p1, v4

    add-int/2addr v4, v7

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, p1, v4}, Lg/fzg;->bc(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/16 p1, 0x10

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_8

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v7, v0

    iput v7, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    const/4 v0, 0x3

    iput v0, p0, Lg/fzg;->r:I

    iput p1, p0, Lg/fzg;->o:I

    return-wide v4

    :cond_8
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-ne v0, v6, :cond_9

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_5

    :cond_9
    const/16 p1, 0x5d

    if-ne v0, p1, :cond_a

    const/16 p1, 0xf

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_5

    :cond_a
    if-ne v0, v8, :cond_b

    const/16 p1, 0xd

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_5

    :cond_b
    const/16 p1, 0x1a

    if-ne v0, p1, :cond_c

    const/16 v0, 0x14

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v7

    iput v0, p0, Lg/fzg;->n:I

    iput-char p1, p0, Lg/fzg;->l:C

    :goto_5
    const/4 p1, 0x4

    iput p1, p0, Lg/fzg;->r:I

    return-wide v4

    :cond_c
    iput v3, p0, Lg/fzg;->r:I

    return-wide v1

    :cond_d
    iput v3, p0, Lg/fzg;->r:I

    return-wide v1

    :cond_e
    iput v3, p0, Lg/fzg;->r:I

    return-wide v1
.end method

.method public final av([C)F
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return v1

    :cond_0
    array-length v0, p1

    iget v2, p0, Lg/fzg;->n:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lg/fzg;->bk(I)C

    move-result v0

    const/4 v2, -0x1

    const/16 v4, 0x30

    if-lt v0, v4, :cond_a

    const/16 v5, 0x39

    if-gt v0, v5, :cond_a

    :goto_0
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_3

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    :goto_1
    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-lt v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    move v3, v6

    goto :goto_1

    :cond_2
    iput v2, p0, Lg/fzg;->r:I

    return v1

    :cond_3
    iget v3, p0, Lg/fzg;->n:I

    array-length p1, p1

    add-int/2addr p1, v3

    add-int/2addr v3, v6

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, v3}, Lg/fzg;->bc(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_4

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v0

    iput v6, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    const/4 v0, 0x3

    iput v0, p0, Lg/fzg;->r:I

    iput v3, p0, Lg/fzg;->o:I

    return p1

    :cond_4
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_9

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    if-ne v0, v4, :cond_5

    iput v3, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v6

    iput v0, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_5
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_6

    const/16 v0, 0xf

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v6

    iput v0, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_6
    if-ne v0, v5, :cond_7

    const/16 v0, 0xd

    iput v0, p0, Lg/fzg;->o:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v6

    iput v0, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_7
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_8

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v6

    iput v0, p0, Lg/fzg;->n:I

    const/16 v0, 0x14

    iput v0, p0, Lg/fzg;->o:I

    iput-char v3, p0, Lg/fzg;->l:C

    :goto_2
    const/4 v0, 0x4

    iput v0, p0, Lg/fzg;->r:I

    return p1

    :cond_8
    iput v2, p0, Lg/fzg;->r:I

    return v1

    :cond_9
    iput v2, p0, Lg/fzg;->r:I

    return v1

    :cond_a
    iput v2, p0, Lg/fzg;->r:I

    return v1
.end method

.method public final aw()V
    .locals 3

    iget-object v0, p0, Lg/fzg;->p:[C

    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    sget-object v1, Lg/fzg;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/fzg;->p:[C

    return-void
.end method

.method public final ax(Lg/gqc;C)Ljava/lang/String;
    .locals 11

    iget v0, p0, Lg/fzg;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v2, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    sub-int v0, v3, v0

    iget v4, p0, Lg/fzg;->n:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4, v0}, Lg/fzg;->ai(II)[C

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x5c

    if-lez v0, :cond_4

    add-int/lit8 v8, v0, -0x1

    aget-char v8, v4, v8

    if-ne v8, v7, :cond_4

    add-int/lit8 v8, v0, -0x2

    const/4 v9, 0x1

    :goto_1
    if-ltz v8, :cond_0

    aget-char v10, v4, v8

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, p2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v7, v6, v3

    add-int/2addr v7, v0

    array-length v8, v4

    if-lt v7, v8, :cond_3

    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v7, :cond_2

    move v8, v7

    :cond_2
    new-array v8, v8, [C

    array-length v9, v4

    invoke-static {v4, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    :cond_3
    invoke-virtual {v2, v3, v6, v4, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v6

    move v0, v7

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v6, :cond_d

    const/4 p2, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge p2, v0, :cond_6

    aget-char v9, v4, p2

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    if-ne v9, v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {v4, v0}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_7
    const/16 p2, 0x14

    if-ge v0, p2, :cond_c

    iget p2, p1, Lg/gqc;->ab:I

    and-int/2addr p2, v8

    iget-object p1, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, [Lg/dsg;

    aget-object v6, p1, p2

    if-eqz v6, :cond_b

    iget-object p1, v6, Lg/dsg;->b:Ljava/lang/Object;

    check-cast p1, [C

    iget p2, v6, Lg/dsg;->d:I

    if-ne v8, p2, :cond_a

    array-length p2, p1

    if-ne v0, p2, :cond_a

    const/4 p2, 0x0

    :goto_4
    if-ge p2, v0, :cond_9

    aget-char v7, v4, p2

    aget-char v8, p1, p2

    if-eq v7, v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, v6, Lg/dsg;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_a
    :goto_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lg/dsg;

    invoke-direct {v4, v0, v8}, Lg/dsg;-><init>(Ljava/lang/String;I)V

    aput-object v4, p1, p2

    move-object p1, v0

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :cond_d
    invoke-static {v4, v0}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object p1

    :goto_6
    add-int/2addr v3, v1

    iput v3, p0, Lg/fzg;->n:I

    iget p2, p0, Lg/fzg;->j:I

    if-lt v3, p2, :cond_e

    const/16 p2, 0x1a

    goto :goto_7

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_7
    iput-char p2, p0, Lg/fzg;->l:C

    return-object p1

    :cond_f
    new-instance p1, Lg/bfj;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unclosed str, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ay()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg/fzg;->h:I

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lg/fzg;->x:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v0, p0, Lg/fzg;->h:I

    invoke-virtual {p0, v0, v1}, Lg/fzg;->bc(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final az()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lg/fzg;->x:I

    :goto_0
    iget v2, v0, Lg/fzg;->n:I

    iput v2, v0, Lg/fzg;->t:I

    iget-char v3, v0, Lg/fzg;->l:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lg/fzg;->as()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lg/fzg;->ak()V

    return-void

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lg/fzg;->bm()V

    return-void

    :cond_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    invoke-virtual {v0}, Lg/fzg;->ag()C

    const/16 v1, 0x10

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_5
    const/16 v5, 0xc

    if-eq v3, v5, :cond_20

    const/16 v6, 0xd

    if-eq v3, v6, :cond_20

    const/16 v7, 0x20

    if-eq v3, v7, :cond_20

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1f

    const/16 v9, 0x5b

    iget v10, v0, Lg/fzg;->j:I

    const/4 v11, 0x1

    iget-object v12, v0, Lg/fzg;->k:Ljava/lang/String;

    const/16 v13, 0x1a

    if-eq v3, v9, :cond_1d

    const/16 v9, 0x5d

    if-eq v3, v9, :cond_1c

    const/16 v14, 0x66

    const/16 v8, 0x9

    const/16 v15, 0xa

    const/16 v5, 0x7d

    if-eq v3, v14, :cond_19

    const/16 v14, 0x6e

    if-eq v3, v14, :cond_14

    const/16 v14, 0x7b

    if-eq v3, v14, :cond_12

    if-eq v3, v5, :cond_10

    const/16 v14, 0x53

    if-eq v3, v14, :cond_f

    const/16 v14, 0x54

    if-eq v3, v14, :cond_f

    const/16 v14, 0x74

    if-eq v3, v14, :cond_c

    const/16 v4, 0x75

    if-eq v3, v4, :cond_f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eq v2, v10, :cond_9

    if-ne v3, v13, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x1f

    if-le v3, v2, :cond_8

    const/16 v2, 0x7f

    if-ne v3, v2, :cond_7

    goto :goto_1

    :cond_7
    iput v11, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :cond_8
    :goto_1
    invoke-virtual {v0}, Lg/fzg;->ag()C

    goto/16 :goto_0

    :cond_9
    :goto_2
    iget v2, v0, Lg/fzg;->o:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_a

    iput v3, v0, Lg/fzg;->o:I

    iput v1, v0, Lg/fzg;->n:I

    iput v1, v0, Lg/fzg;->t:I

    return-void

    :cond_a
    new-instance v1, Lg/bfj;

    const-string v2, "EOF error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lg/fzg;->ag()C

    const/16 v1, 0xb

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :pswitch_1
    invoke-virtual {v0}, Lg/fzg;->ag()C

    iput v15, v0, Lg/fzg;->o:I

    return-void

    :pswitch_2
    sget-object v1, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    iget v2, v0, Lg/fzg;->w:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lg/fzg;->ak()V

    return-void

    :cond_b
    new-instance v1, Lg/bfj;

    const-string v2, "Feature.AllowSingleQuotes is false"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const-string v1, "true"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iput-char v1, v0, Lg/fzg;->l:C

    if-eq v1, v7, :cond_d

    if-eq v1, v4, :cond_d

    if-eq v1, v5, :cond_d

    if-eq v1, v9, :cond_d

    if-eq v1, v15, :cond_d

    if-eq v1, v6, :cond_d

    if-eq v1, v8, :cond_d

    if-eq v1, v13, :cond_d

    const/16 v2, 0xc

    if-eq v1, v2, :cond_d

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_e

    :cond_d
    const/4 v1, 0x6

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_e
    new-instance v1, Lg/bfj;

    const-string v2, "scan true error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-virtual {v0}, Lg/fzg;->ar()V

    return-void

    :cond_10
    add-int/2addr v2, v11

    iput v2, v0, Lg/fzg;->n:I

    if-lt v2, v10, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_3
    iput-char v13, v0, Lg/fzg;->l:C

    iput v6, v0, Lg/fzg;->o:I

    return-void

    :cond_12
    add-int/2addr v2, v11

    iput v2, v0, Lg/fzg;->n:I

    if-lt v2, v10, :cond_13

    goto :goto_4

    :cond_13
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_4
    iput-char v13, v0, Lg/fzg;->l:C

    const/16 v2, 0xc

    iput v2, v0, Lg/fzg;->o:I

    return-void

    :cond_14
    const-string v3, "null"

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lg/fzg;->n:I

    const/16 v1, 0x8

    goto :goto_5

    :cond_15
    const-string v2, "new"

    iget v3, v0, Lg/fzg;->n:I

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lg/fzg;->n:I

    const/16 v1, 0x9

    :cond_16
    :goto_5
    if-eqz v1, :cond_18

    iget v2, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v2}, Lg/fzg;->bk(I)C

    move-result v2

    iput-char v2, v0, Lg/fzg;->l:C

    if-eq v2, v7, :cond_17

    if-eq v2, v4, :cond_17

    if-eq v2, v5, :cond_17

    if-eq v2, v9, :cond_17

    if-eq v2, v15, :cond_17

    if-eq v2, v6, :cond_17

    if-eq v2, v8, :cond_17

    if-eq v2, v13, :cond_17

    const/16 v3, 0xc

    if-eq v2, v3, :cond_17

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    :cond_17
    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_18
    new-instance v1, Lg/bfj;

    const-string v2, "scan null/new error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-string v1, "false"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lg/fzg;->n:I

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    iput-char v1, v0, Lg/fzg;->l:C

    if-eq v1, v7, :cond_1a

    if-eq v1, v4, :cond_1a

    if-eq v1, v5, :cond_1a

    if-eq v1, v9, :cond_1a

    if-eq v1, v15, :cond_1a

    if-eq v1, v6, :cond_1a

    if-eq v1, v8, :cond_1a

    if-eq v1, v13, :cond_1a

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x7

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_1b
    new-instance v1, Lg/bfj;

    const-string v2, "scan false error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-virtual {v0}, Lg/fzg;->ag()C

    const/16 v1, 0xf

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_1d
    add-int/2addr v2, v11

    iput v2, v0, Lg/fzg;->n:I

    if-lt v2, v10, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_6
    iput-char v13, v0, Lg/fzg;->l:C

    const/16 v1, 0xe

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_1f
    invoke-virtual {v0}, Lg/fzg;->ag()C

    const/16 v1, 0x11

    iput v1, v0, Lg/fzg;->o:I

    return-void

    :cond_20
    :pswitch_3
    invoke-virtual {v0}, Lg/fzg;->ag()C

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ba()J
    .locals 13

    iget v0, p0, Lg/fzg;->h:I

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v5, v2

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    add-int/lit8 v3, v0, 0x1

    iget v9, p0, Lg/fzg;->j:I

    if-lt v0, v9, :cond_2

    const/16 v0, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/16 v9, 0xa

    mul-long v7, v7, v9

    int-to-long v9, v0

    add-long v11, v5, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_4

    sub-long/2addr v7, v9

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move v0, v3

    :cond_7
    if-eqz v2, :cond_9

    iget v1, p0, Lg/fzg;->h:I

    add-int/2addr v1, v4

    if-le v0, v1, :cond_8

    return-wide v7

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v7

    return-wide v0
.end method

.method public final bb()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/fzg;->o:I

    invoke-static {v0}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bc(II)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/fzg;->p:[C

    array-length v1, v0

    iget-object v2, p0, Lg/fzg;->k:Ljava/lang/String;

    const/4 v3, 0x0

    if-ge p2, v1, :cond_0

    add-int v1, p1, p2

    invoke-virtual {v2, p1, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lg/fzg;->p:[C

    invoke-direct {p1, v0, v3, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    new-array v0, p2, [C

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public final bd()I
    .locals 9

    iget v0, p0, Lg/fzg;->h:I

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const v2, -0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v8, v5

    move v5, v0

    move v0, v8

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_6

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    const/16 v7, 0x4c

    if-eq v0, v7, :cond_5

    const/16 v7, 0x53

    if-eq v0, v7, :cond_5

    const/16 v7, 0x42

    if-ne v0, v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x30

    const v7, -0xccccccc

    if-lt v5, v7, :cond_4

    mul-int/lit8 v5, v5, 0xa

    add-int v7, v2, v0

    if-lt v5, v7, :cond_3

    sub-int/2addr v5, v0

    move v0, v6

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    move v0, v6

    :cond_6
    if-eqz v3, :cond_8

    iget v1, p0, Lg/fzg;->h:I

    add-int/2addr v1, v4

    if-le v0, v1, :cond_7

    return v5

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    neg-int v0, v5

    return v0
.end method

.method public final be([C)Z
    .locals 6

    array-length v0, p1

    iget v1, p0, Lg/fzg;->n:I

    add-int/2addr v1, v0

    iget v2, p0, Lg/fzg;->j:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p1, v1

    iget v4, p0, Lg/fzg;->n:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final bf()Ljava/lang/Number;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lg/fzg;->h:I

    iget v2, v0, Lg/fzg;->x:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Lg/fzg;->bk(I)C

    move-result v3

    const/16 v4, 0x53

    const/16 v5, 0x4c

    const/16 v6, 0x42

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    const/16 v3, 0x20

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x53

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x4c

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x42

    :goto_0
    iget v7, v0, Lg/fzg;->h:I

    invoke-virtual {v0, v7}, Lg/fzg;->bk(I)C

    move-result v7

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v7, -0x8000000000000000L

    move-wide v10, v7

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v1, v2, :cond_4

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v12, v1

    :goto_2
    move v1, v8

    goto :goto_3

    :cond_4
    const-wide/16 v12, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v12, v14

    if-gez v16, :cond_5

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_5
    const-wide/16 v14, 0xa

    mul-long v12, v12, v14

    int-to-long v14, v1

    add-long v16, v10, v14

    cmp-long v1, v12, v16

    if-gez v1, :cond_6

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_6
    sub-long/2addr v12, v14

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_c

    iget v2, v0, Lg/fzg;->h:I

    add-int/2addr v2, v9

    if-le v1, v2, :cond_b

    const-wide/32 v1, -0x80000000

    cmp-long v7, v12, v1

    if-ltz v7, :cond_a

    if-eq v3, v5, :cond_a

    if-ne v3, v4, :cond_8

    long-to-int v1, v12

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_8
    if-ne v3, v6, :cond_9

    long-to-int v1, v12

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_9
    long-to-int v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    neg-long v1, v12

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v1, v7

    if-gtz v9, :cond_f

    if-eq v3, v5, :cond_f

    if-ne v3, v4, :cond_d

    long-to-int v2, v1

    int-to-short v1, v2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_d
    if-ne v3, v6, :cond_e

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_e
    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public final bg(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lg/fzg;->x:I

    :goto_0
    const/4 v2, 0x2

    const/16 v5, 0x22

    const/16 v7, 0x9

    const/16 v8, 0xa

    const/16 v9, 0x20

    const/16 v10, 0xe

    const/16 v11, 0x5b

    const/16 v12, 0xd

    const/16 v13, 0x7b

    const/16 v14, 0xc

    if-eq v1, v2, :cond_15

    const/4 v2, 0x4

    iget-object v15, v0, Lg/fzg;->k:Ljava/lang/String;

    iget v3, v0, Lg/fzg;->j:I

    const/16 v4, 0x1a

    if-eq v1, v2, :cond_11

    if-eq v1, v14, :cond_d

    const/16 v2, 0x12

    if-eq v1, v2, :cond_8

    const/16 v2, 0x14

    if-eq v1, v2, :cond_7

    const/16 v5, 0xf

    const/16 v6, 0x5d

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-char v10, v0, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_1

    const/16 v1, 0x10

    iput v1, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_1
    const/16 v11, 0x7d

    if-ne v10, v11, :cond_3

    iput v12, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_3
    if-ne v10, v6, :cond_5

    iput v5, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_5
    if-ne v10, v4, :cond_19

    iput v2, v0, Lg/fzg;->o:I

    return-void

    :pswitch_1
    iget-char v3, v0, Lg/fzg;->l:C

    if-ne v3, v6, :cond_7

    iput v5, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :pswitch_2
    iget-char v2, v0, Lg/fzg;->l:C

    if-ne v2, v11, :cond_6

    iput v10, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :cond_6
    if-ne v2, v13, :cond_19

    iput v14, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :cond_7
    iget-char v3, v0, Lg/fzg;->l:C

    if-ne v3, v4, :cond_19

    iput v2, v0, Lg/fzg;->o:I

    return-void

    :cond_8
    :goto_4
    iget-char v1, v0, Lg/fzg;->l:C

    if-gt v1, v9, :cond_a

    if-eq v1, v9, :cond_9

    if-eq v1, v8, :cond_9

    if-eq v1, v12, :cond_9

    if-eq v1, v7, :cond_9

    if-eq v1, v14, :cond_9

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    :cond_9
    invoke-virtual {v0}, Lg/fzg;->ag()C

    goto :goto_4

    :cond_a
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_c

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lg/fzg;->az()V

    return-void

    :cond_c
    :goto_5
    invoke-virtual {v0}, Lg/fzg;->ar()V

    return-void

    :cond_d
    iget-char v2, v0, Lg/fzg;->l:C

    if-ne v2, v13, :cond_f

    iput v14, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_f
    if-ne v2, v11, :cond_19

    iput v10, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_7
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_11
    iget-char v2, v0, Lg/fzg;->l:C

    if-ne v2, v5, :cond_12

    iget v1, v0, Lg/fzg;->n:I

    iput v1, v0, Lg/fzg;->t:I

    invoke-virtual {v0}, Lg/fzg;->ak()V

    return-void

    :cond_12
    const/16 v5, 0x30

    if-lt v2, v5, :cond_13

    const/16 v5, 0x39

    if-gt v2, v5, :cond_13

    iget v1, v0, Lg/fzg;->n:I

    iput v1, v0, Lg/fzg;->t:I

    invoke-virtual {v0}, Lg/fzg;->bm()V

    return-void

    :cond_13
    if-ne v2, v13, :cond_19

    iput v14, v0, Lg/fzg;->o:I

    iget v1, v0, Lg/fzg;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/fzg;->n:I

    if-lt v1, v3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_8
    iput-char v4, v0, Lg/fzg;->l:C

    return-void

    :cond_15
    iget-char v2, v0, Lg/fzg;->l:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_16

    const/16 v3, 0x39

    if-gt v2, v3, :cond_16

    iget v1, v0, Lg/fzg;->n:I

    iput v1, v0, Lg/fzg;->t:I

    invoke-virtual {v0}, Lg/fzg;->bm()V

    return-void

    :cond_16
    if-ne v2, v5, :cond_17

    iget v1, v0, Lg/fzg;->n:I

    iput v1, v0, Lg/fzg;->t:I

    invoke-virtual {v0}, Lg/fzg;->ak()V

    return-void

    :cond_17
    if-ne v2, v11, :cond_18

    iput v10, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :cond_18
    if-ne v2, v13, :cond_19

    iput v14, v0, Lg/fzg;->o:I

    invoke-virtual {v0}, Lg/fzg;->ag()C

    return-void

    :cond_19
    :goto_9
    iget-char v2, v0, Lg/fzg;->l:C

    if-eq v2, v9, :cond_1b

    if-eq v2, v8, :cond_1b

    if-eq v2, v12, :cond_1b

    if-eq v2, v7, :cond_1b

    if-eq v2, v14, :cond_1b

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-virtual {v0}, Lg/fzg;->az()V

    return-void

    :cond_1b
    :goto_a
    invoke-virtual {v0}, Lg/fzg;->ag()C

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bh([CLg/gqc;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return-object v2

    :cond_0
    array-length v1, p1

    iget v3, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v3, 0x22

    const/4 v5, -0x1

    if-eq v1, v3, :cond_1

    iput v5, p0, Lg/fzg;->r:I

    return-object v2

    :cond_1
    :goto_0
    iget v1, p0, Lg/fzg;->n:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    if-ne v1, v3, :cond_9

    iget v1, p0, Lg/fzg;->n:I

    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v6

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {p2, v3, p1, v1, v0}, Lg/gqc;->az(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v0, v4, 0x2

    add-int/2addr p2, v6

    invoke-virtual {p0, p2}, Lg/fzg;->bk(I)C

    move-result p2

    const/16 v1, 0x2c

    const/16 v6, 0x1a

    if-ne p2, v1, :cond_3

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lg/fzg;->n:I

    iget p2, p0, Lg/fzg;->j:I

    if-lt v4, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1
    iput-char v6, p0, Lg/fzg;->l:C

    const/4 p2, 0x3

    iput p2, p0, Lg/fzg;->r:I

    return-object p1

    :cond_3
    const/16 v3, 0x7d

    if-ne p2, v3, :cond_8

    iget p2, p0, Lg/fzg;->n:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lg/fzg;->bk(I)C

    move-result p2

    if-ne p2, v1, :cond_4

    const/16 p2, 0x10

    iput p2, p0, Lg/fzg;->o:I

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iput v4, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_4
    const/16 v0, 0x5d

    if-ne p2, v0, :cond_5

    const/16 p2, 0xf

    iput p2, p0, Lg/fzg;->o:I

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iput v4, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_5
    if-ne p2, v3, :cond_6

    const/16 p2, 0xd

    iput p2, p0, Lg/fzg;->o:I

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iput v4, p0, Lg/fzg;->n:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_2

    :cond_6
    if-ne p2, v6, :cond_7

    const/16 p2, 0x14

    iput p2, p0, Lg/fzg;->o:I

    iget p2, p0, Lg/fzg;->n:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iput v4, p0, Lg/fzg;->n:I

    iput-char v6, p0, Lg/fzg;->l:C

    :goto_2
    const/4 p2, 0x4

    iput p2, p0, Lg/fzg;->r:I

    return-object p1

    :cond_7
    iput v5, p0, Lg/fzg;->r:I

    return-object v2

    :cond_8
    iput v5, p0, Lg/fzg;->r:I

    return-object v2

    :cond_9
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_a

    iput v5, p0, Lg/fzg;->r:I

    return-object v2

    :cond_a
    move v4, v6

    goto/16 :goto_0
.end method

.method public final bi()Ljava/lang/Number;
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lg/fzg;->n:I

    const/4 v2, 0x0

    iput v2, v1, Lg/fzg;->h:I

    iget-char v3, v1, Lg/fzg;->l:C

    iget v5, v1, Lg/fzg;->j:I

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_1

    iput v7, v1, Lg/fzg;->h:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v5, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, v1, Lg/fzg;->l:C

    const-wide/high16 v9, -0x8000000000000000L

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_2
    iget-char v14, v1, Lg/fzg;->l:C

    const/16 v15, 0x39

    const/16 v4, 0x30

    if-lt v14, v4, :cond_5

    if-gt v14, v15, :cond_5

    add-int/lit8 v14, v14, -0x30

    const-wide v16, -0xcccccccccccccccL

    cmp-long v4, v11, v16

    if-gez v4, :cond_2

    const/4 v13, 0x1

    :cond_2
    const-wide/16 v16, 0xa

    mul-long v11, v11, v16

    int-to-long v14, v14

    add-long v16, v9, v14

    cmp-long v4, v11, v16

    if-gez v4, :cond_3

    const/4 v13, 0x1

    :cond_3
    sub-long/2addr v11, v14

    iget v4, v1, Lg/fzg;->h:I

    add-int/2addr v4, v7

    iput v4, v1, Lg/fzg;->h:I

    iget v4, v1, Lg/fzg;->n:I

    add-int/2addr v4, v7

    iput v4, v1, Lg/fzg;->n:I

    if-lt v4, v5, :cond_4

    const/16 v4, 0x1a

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    iput-char v4, v1, Lg/fzg;->l:C

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    neg-long v11, v11

    :cond_6
    const/16 v3, 0x4c

    const/16 v9, 0x44

    const/16 v10, 0x46

    if-ne v14, v3, :cond_7

    iget v3, v1, Lg/fzg;->h:I

    add-int/2addr v3, v7

    iput v3, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4

    :cond_7
    const/16 v3, 0x53

    if-ne v14, v3, :cond_8

    iget v3, v1, Lg/fzg;->h:I

    add-int/2addr v3, v7

    iput v3, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    long-to-int v3, v11

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/16 v3, 0x42

    if-ne v14, v3, :cond_9

    iget v3, v1, Lg/fzg;->h:I

    add-int/2addr v3, v7

    iput v3, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    long-to-int v3, v11

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    goto :goto_4

    :cond_9
    if-ne v14, v10, :cond_a

    iget v3, v1, Lg/fzg;->h:I

    add-int/2addr v3, v7

    iput v3, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    long-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_4

    :cond_a
    if-ne v14, v9, :cond_b

    iget v3, v1, Lg/fzg;->h:I

    add-int/2addr v3, v7

    iput v3, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    long-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    iget-char v2, v1, Lg/fzg;->l:C

    const/16 v16, 0x1

    const/16 v7, 0x2e

    if-ne v2, v7, :cond_f

    iget v2, v1, Lg/fzg;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lg/fzg;->h:I

    iget v2, v1, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lg/fzg;->n:I

    if-lt v2, v5, :cond_c

    const/16 v2, 0x1a

    goto :goto_5

    :cond_c
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    iput-char v2, v1, Lg/fzg;->l:C

    :goto_6
    iget-char v2, v1, Lg/fzg;->l:C

    if-lt v2, v4, :cond_e

    if-gt v2, v15, :cond_e

    iget v2, v1, Lg/fzg;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lg/fzg;->h:I

    iget v2, v1, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lg/fzg;->n:I

    if-lt v2, v5, :cond_d

    const/16 v2, 0x1a

    goto :goto_7

    :cond_d
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_7
    iput-char v2, v1, Lg/fzg;->l:C

    goto :goto_6

    :cond_e
    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    iget-char v7, v1, Lg/fzg;->l:C

    const/16 v14, 0x65

    if-eq v7, v14, :cond_11

    const/16 v14, 0x45

    if-ne v7, v14, :cond_10

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_10

    :cond_11
    :goto_9
    iget v7, v1, Lg/fzg;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->h:I

    iget v7, v1, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->n:I

    if-lt v7, v5, :cond_12

    const/16 v7, 0x1a

    goto :goto_a

    :cond_12
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v1, Lg/fzg;->l:C

    const/16 v14, 0x2b

    if-eq v7, v14, :cond_13

    if-ne v7, v8, :cond_15

    :cond_13
    iget v7, v1, Lg/fzg;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->h:I

    iget v7, v1, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->n:I

    if-lt v7, v5, :cond_14

    const/16 v7, 0x1a

    goto :goto_b

    :cond_14
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_b
    iput-char v7, v1, Lg/fzg;->l:C

    :cond_15
    :goto_c
    iget-char v14, v1, Lg/fzg;->l:C

    if-lt v14, v4, :cond_17

    if-gt v14, v15, :cond_17

    iget v7, v1, Lg/fzg;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->h:I

    iget v7, v1, Lg/fzg;->n:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/fzg;->n:I

    if-lt v7, v5, :cond_16

    const/16 v7, 0x1a

    goto :goto_d

    :cond_16
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_d
    iput-char v7, v1, Lg/fzg;->l:C

    goto :goto_c

    :cond_17
    if-eq v14, v9, :cond_19

    if-ne v14, v10, :cond_18

    goto :goto_e

    :cond_18
    const/4 v14, 0x0

    goto :goto_f

    :cond_19
    :goto_e
    iget v4, v1, Lg/fzg;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lg/fzg;->h:I

    invoke-virtual {v1}, Lg/fzg;->ag()C

    :goto_f
    move v4, v14

    const/4 v7, 0x1

    :goto_10
    if-nez v2, :cond_1d

    if-nez v7, :cond_1d

    if-eqz v13, :cond_1a

    iget v2, v1, Lg/fzg;->n:I

    sub-int v3, v2, v0

    new-array v3, v3, [C

    const/4 v14, 0x0

    invoke-virtual {v6, v0, v2, v3, v14}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_1a
    if-nez v3, :cond_1c

    const-wide/32 v2, -0x80000000

    cmp-long v0, v11, v2

    if-lez v0, :cond_1b

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v11, v2

    if-gez v0, :cond_1b

    long-to-int v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1c
    return-object v3

    :cond_1d
    iget v2, v1, Lg/fzg;->n:I

    sub-int/2addr v2, v0

    if-eqz v4, :cond_1e

    add-int/lit8 v2, v2, -0x1

    :cond_1e
    new-array v3, v2, [C

    add-int/2addr v2, v0

    const/4 v14, 0x0

    invoke-virtual {v6, v0, v2, v3, v14}, Ljava/lang/String;->getChars(II[CI)V

    if-nez v7, :cond_1f

    sget-object v0, Lg/cbj;->UseBigDecimal:Lg/cbj;

    iget v0, v0, Lg/cbj;->mask:I

    iget v2, v1, Lg/fzg;->w:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    if-ne v4, v10, :cond_20

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_11

    :cond_20
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_11
    new-instance v2, Lg/bfj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final bj()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lg/fzg;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fzg;->p:[C

    iget v1, p0, Lg/fzg;->x:I

    invoke-static {v0, v1}, Lg/fzg;->aa([CI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lg/fzg;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lg/fzg;->x:I

    invoke-virtual {p0, v0, v1}, Lg/fzg;->bc(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bk(I)C
    .locals 1

    iget v0, p0, Lg/fzg;->j:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    return p1

    :cond_0
    iget-object v0, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final bl(Lg/gqc;)Ljava/lang/String;
    .locals 6

    :goto_0
    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v2, 0x9

    if-eq v0, v2, :cond_8

    const/16 v2, 0xc

    if-eq v0, v2, :cond_8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, v2}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v2, "syntax error"

    iget v3, p0, Lg/fzg;->w:I

    const/16 v4, 0x27

    if-ne v0, v4, :cond_3

    sget-object v0, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    iget v0, v0, Lg/cbj;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v4}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lg/bfj;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v4, 0x7d

    const/4 v5, 0x0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lg/fzg;->ag()C

    iput v1, p0, Lg/fzg;->o:I

    return-object v5

    :cond_4
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lg/fzg;->ag()C

    const/16 p1, 0x10

    iput p1, p0, Lg/fzg;->o:I

    return-object v5

    :cond_5
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_6

    const/16 p1, 0x14

    iput p1, p0, Lg/fzg;->o:I

    return-object v5

    :cond_6
    sget-object v0, Lg/cbj;->AllowUnQuotedFieldNames:Lg/cbj;

    iget v0, v0, Lg/cbj;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lg/fzg;->at(Lg/gqc;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lg/bfj;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_0
.end method

.method public final bm()V
    .locals 12

    iget v0, p0, Lg/fzg;->n:I

    iput v0, p0, Lg/fzg;->h:I

    iget-char v1, p0, Lg/fzg;->l:C

    iget-object v2, p0, Lg/fzg;->k:Ljava/lang/String;

    const/16 v3, 0x1a

    iget v4, p0, Lg/fzg;->j:I

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v1, v6, :cond_1

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v5

    iput v1, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lg/fzg;->l:C

    :cond_1
    :goto_1
    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0x39

    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    if-gt v0, v1, :cond_3

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_2

    const/16 v0, 0x1a

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    iput-char v0, p0, Lg/fzg;->l:C

    goto :goto_1

    :cond_3
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_7

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_4

    const/16 v0, 0x1a

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lg/fzg;->l:C

    :goto_4
    iget-char v0, p0, Lg/fzg;->l:C

    if-lt v0, v7, :cond_6

    if-gt v0, v1, :cond_6

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_5

    const/16 v0, 0x1a

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lg/fzg;->l:C

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    iget-char v8, p0, Lg/fzg;->l:C

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_8

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v5

    iput v1, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_7

    :cond_8
    const/16 v9, 0x53

    if-ne v8, v9, :cond_9

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v5

    iput v1, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_7

    :cond_9
    const/16 v9, 0x42

    if-ne v8, v9, :cond_a

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v1, v5

    iput v1, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_7

    :cond_a
    const/16 v9, 0x46

    if-ne v8, v9, :cond_b

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto/16 :goto_d

    :cond_b
    const/16 v10, 0x44

    if-ne v8, v10, :cond_c

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_d

    :cond_c
    const/16 v11, 0x65

    if-eq v8, v11, :cond_e

    const/16 v11, 0x45

    if-ne v8, v11, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move v5, v0

    goto :goto_d

    :cond_e
    :goto_8
    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_f

    const/16 v0, 0x1a

    goto :goto_9

    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9
    iput-char v0, p0, Lg/fzg;->l:C

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_10

    if-ne v0, v6, :cond_12

    :cond_10
    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_11

    const/16 v0, 0x1a

    goto :goto_a

    :cond_11
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_a
    iput-char v0, p0, Lg/fzg;->l:C

    :cond_12
    :goto_b
    iget-char v0, p0, Lg/fzg;->l:C

    if-lt v0, v7, :cond_14

    if-gt v0, v1, :cond_14

    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    iget v0, p0, Lg/fzg;->n:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->n:I

    if-lt v0, v4, :cond_13

    const/16 v0, 0x1a

    goto :goto_c

    :cond_13
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_c
    iput-char v0, p0, Lg/fzg;->l:C

    goto :goto_b

    :cond_14
    if-eq v0, v10, :cond_15

    if-ne v0, v9, :cond_16

    :cond_15
    iget v0, p0, Lg/fzg;->x:I

    add-int/2addr v0, v5

    iput v0, p0, Lg/fzg;->x:I

    invoke-virtual {p0}, Lg/fzg;->ag()C

    :cond_16
    :goto_d
    if-eqz v5, :cond_17

    const/4 v0, 0x3

    iput v0, p0, Lg/fzg;->o:I

    return-void

    :cond_17
    const/4 v0, 0x2

    iput v0, p0, Lg/fzg;->o:I

    return-void
.end method

.method public final bn([C)I
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->r:I

    invoke-virtual {p0, p1}, Lg/fzg;->be([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lg/fzg;->r:I

    return v0

    :cond_0
    array-length p1, p1

    iget v1, p0, Lg/fzg;->n:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lg/fzg;->bk(I)C

    move-result v1

    const/16 v3, 0x22

    iget-object v4, p0, Lg/fzg;->k:Ljava/lang/String;

    iget v5, p0, Lg/fzg;->j:I

    const/16 v6, 0x1a

    const/4 v7, 0x1

    if-ne v1, v3, :cond_2

    iget v1, p0, Lg/fzg;->n:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr v1, v2

    if-lt v1, v5, :cond_1

    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    move v2, p1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v1, v8, :cond_13

    const/16 v10, 0x39

    if-gt v1, v10, :cond_13

    sub-int/2addr v1, v8

    :goto_2
    iget v11, p0, Lg/fzg;->n:I

    add-int/lit8 v12, v2, 0x1

    add-int/2addr v11, v2

    invoke-virtual {p0, v11}, Lg/fzg;->bk(I)C

    move-result v11

    if-lt v11, v8, :cond_3

    if-gt v11, v10, :cond_3

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v1, v11

    move v2, v12

    goto :goto_2

    :cond_3
    const/16 v8, 0x2e

    if-ne v11, v8, :cond_4

    iput v9, p0, Lg/fzg;->r:I

    return v0

    :cond_4
    if-ne v11, v3, :cond_7

    if-nez p1, :cond_5

    iput v9, p0, Lg/fzg;->r:I

    return v0

    :cond_5
    iget p1, p0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v12

    if-lt p1, v5, :cond_6

    const/16 v11, 0x1a

    goto :goto_3

    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v11, p1

    :goto_3
    move v12, v2

    :cond_7
    if-gez v1, :cond_8

    iput v9, p0, Lg/fzg;->r:I

    return v0

    :cond_8
    const/16 p1, 0x10

    const/16 v2, 0x2c

    if-ne v11, v2, :cond_a

    iget v0, p0, Lg/fzg;->n:I

    sub-int/2addr v12, v7

    add-int/2addr v12, v0

    add-int/2addr v12, v7

    iput v12, p0, Lg/fzg;->n:I

    if-lt v12, v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_4
    iput-char v6, p0, Lg/fzg;->l:C

    const/4 v0, 0x3

    iput v0, p0, Lg/fzg;->r:I

    iput p1, p0, Lg/fzg;->o:I

    return v1

    :cond_a
    const/16 v3, 0x7d

    if-ne v11, v3, :cond_12

    iget v8, p0, Lg/fzg;->n:I

    add-int/2addr v8, v12

    invoke-virtual {p0, v8}, Lg/fzg;->bk(I)C

    move-result v8

    if-ne v8, v2, :cond_c

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v12

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v5, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_5
    iput-char v6, p0, Lg/fzg;->l:C

    goto :goto_8

    :cond_c
    const/16 p1, 0x5d

    if-ne v8, p1, :cond_e

    const/16 p1, 0xf

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v12

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v5, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    iput-char v6, p0, Lg/fzg;->l:C

    goto :goto_8

    :cond_e
    if-ne v8, v3, :cond_10

    const/16 p1, 0xd

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v12

    add-int/2addr p1, v7

    iput p1, p0, Lg/fzg;->n:I

    if-lt p1, v5, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_7
    iput-char v6, p0, Lg/fzg;->l:C

    goto :goto_8

    :cond_10
    if-ne v8, v6, :cond_11

    const/16 p1, 0x14

    iput p1, p0, Lg/fzg;->o:I

    iget p1, p0, Lg/fzg;->n:I

    add-int/2addr p1, v12

    iput p1, p0, Lg/fzg;->n:I

    iput-char v6, p0, Lg/fzg;->l:C

    :goto_8
    const/4 p1, 0x4

    iput p1, p0, Lg/fzg;->r:I

    return v1

    :cond_11
    iput v9, p0, Lg/fzg;->r:I

    return v0

    :cond_12
    iput v9, p0, Lg/fzg;->r:I

    return v0

    :cond_13
    iput v9, p0, Lg/fzg;->r:I

    return v0
.end method

.method public final bo(Z)Ljava/lang/Number;
    .locals 2

    iget v0, p0, Lg/fzg;->h:I

    iget v1, p0, Lg/fzg;->x:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lg/fzg;->bk(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bp()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lg/fzg;->x:I

    :goto_0
    iget-char v0, p0, Lg/fzg;->l:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lg/fzg;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fzg;->n:I

    iget v1, p0, Lg/fzg;->j:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    iput-char v0, p0, Lg/fzg;->l:C

    invoke-virtual {p0}, Lg/fzg;->az()V

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match : - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lg/fzg;->l:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lg/fzg;->ag()C

    goto :goto_0
.end method
