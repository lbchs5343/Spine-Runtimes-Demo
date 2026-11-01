.class public abstract Lg/dyd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[I

.field public static final g:[I

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static m:Landroid/util/SparseArray; = null

.field public static n:I = -0x1

.field public static final o:[I

.field public static p:I = -0x1

.field public static final q:[Ljava/lang/String;

.field public static final r:Ljava/lang/Object;

.field public static final s:[I

.field public static final t:[I

.field public static final u:[I

.field public static final v:[Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static final x:[I

.field public static final y:[I

.field public static z:Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 34

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lg/dyd;->t:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lg/dyd;->x:[I

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lg/dyd;->j:[I

    const v1, 0x1010003

    const v2, 0x1010405

    const v3, 0x101051e

    filled-new-array {v1, v2, v3}, [I

    move-result-object v3

    sput-object v3, Lg/dyd;->l:[I

    const v3, 0x1010199

    filled-new-array {v3}, [I

    move-result-object v3

    sput-object v3, Lg/dyd;->o:[I

    const v3, 0x10101cd

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sput-object v1, Lg/dyd;->y:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lg/dyd;->f:[I

    const v0, 0x10102e2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lg/dyd;->s:[I

    const v0, 0x10102de

    const v1, 0x10102df

    const v3, 0x10102e0

    const v4, 0x10102e1

    filled-new-array {v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lg/dyd;->u:[I

    const v0, 0x1010024

    const v1, 0x10104d8

    const v5, 0x1010141

    filled-new-array {v0, v5, v3, v1}, [I

    move-result-object v0

    sput-object v0, Lg/dyd;->g:[I

    const v0, 0x1010474

    const v1, 0x1010475

    filled-new-array {v4, v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/dyd;->k:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dyd;->r:Ljava/lang/Object;

    const-string v32, "ga_extra_parameter"

    const-string v33, "firebase_campaign"

    const-string v1, "ad_activeview"

    const-string v2, "ad_click"

    const-string v3, "ad_exposure"

    const-string v4, "ad_query"

    const-string v5, "ad_reward"

    const-string v6, "adunit_exposure"

    const-string v7, "app_background"

    const-string v8, "app_clear_data"

    const-string v9, "app_exception"

    const-string v10, "app_remove"

    const-string v11, "app_store_refund"

    const-string v12, "app_store_subscription_cancel"

    const-string v13, "app_store_subscription_convert"

    const-string v14, "app_store_subscription_renew"

    const-string v15, "app_upgrade"

    const-string v16, "app_update"

    const-string v17, "ga_campaign"

    const-string v18, "error"

    const-string v19, "first_open"

    const-string v20, "first_visit"

    const-string v21, "in_app_purchase"

    const-string v22, "notification_dismiss"

    const-string v23, "notification_foreground"

    const-string v24, "notification_open"

    const-string v25, "notification_receive"

    const-string v26, "os_update"

    const-string v27, "session_start"

    const-string v28, "session_start_with_rollout"

    const-string v29, "user_engagement"

    const-string v30, "ad_impression"

    const-string v31, "screen_view"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dyd;->i:[Ljava/lang/String;

    const-string v0, "ad_impression"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dyd;->h:[Ljava/lang/String;

    const-string v32, "_ep"

    const-string v33, "_cmp"

    const-string v1, "_aa"

    const-string v2, "_ac"

    const-string v3, "_xa"

    const-string v4, "_aq"

    const-string v5, "_ar"

    const-string v6, "_xu"

    const-string v7, "_ab"

    const-string v8, "_cd"

    const-string v9, "_ae"

    const-string v10, "_ui"

    const-string v11, "app_store_refund"

    const-string v12, "app_store_subscription_cancel"

    const-string v13, "app_store_subscription_convert"

    const-string v14, "app_store_subscription_renew"

    const-string v15, "_ug"

    const-string v16, "_au"

    const-string v17, "_cmp"

    const-string v18, "_err"

    const-string v19, "_f"

    const-string v20, "_v"

    const-string v21, "_iap"

    const-string v22, "_nd"

    const-string v23, "_nf"

    const-string v24, "_no"

    const-string v25, "_nr"

    const-string v26, "_ou"

    const-string v27, "_s"

    const-string v28, "_ssr"

    const-string v29, "_e"

    const-string v30, "_ai"

    const-string v31, "_vs"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dyd;->q:[Ljava/lang/String;

    const-string v19, "select_content"

    const-string v20, "view_search_results"

    const-string v1, "purchase"

    const-string v2, "refund"

    const-string v3, "add_payment_info"

    const-string v4, "add_shipping_info"

    const-string v5, "add_to_cart"

    const-string v6, "add_to_wishlist"

    const-string v7, "begin_checkout"

    const-string v8, "remove_from_cart"

    const-string v9, "select_item"

    const-string v10, "select_promotion"

    const-string v11, "view_cart"

    const-string v12, "view_item"

    const-string v13, "view_item_list"

    const-string v14, "view_promotion"

    const-string v15, "ecommerce_purchase"

    const-string v16, "purchase_refund"

    const-string v17, "set_checkout_option"

    const-string v18, "checkout_progress"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dyd;->v:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
        0x101051e
    .end array-data

    :array_3
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public static aa()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static ad(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lg/dyd;->bm(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ae(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    shr-int/lit8 p0, p1, 0x10

    int-to-char p0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static af(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ag(Landroid/view/MotionEvent;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ah(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p0

    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\' expected ["

    const-string v1, "] but was ["

    const-string v2, "Invalid conditional user property field type. \'"

    invoke-static {v2, p1, v0, p2, v1}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-static {p1, p0, p2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static ai(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static varargs aj([Ljava/lang/String;)Lg/dvq;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    invoke-static {v4}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Headers cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0, v1}, Lg/ffb;->bf(III)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_1
    aget-object v1, p0, v2

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-static {v1}, Lg/dyd;->bn(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lg/dyd;->al(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    new-instance v0, Lg/dvq;

    invoke-direct {v0, p0}, Lg/dvq;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected alternating header names and values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ak(Landroid/util/JsonReader;Lg/cgf;)Lg/eld;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v4, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v10, 0x0

    if-ne v1, v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_10

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v9, 0x3

    const/16 v18, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "so"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v18, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "sk"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "sa"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v18, 0x7

    goto :goto_2

    :sswitch_3
    const-string v12, "rz"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v18, 0x6

    goto :goto_2

    :sswitch_4
    const-string v12, "eo"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/16 v18, 0x5

    goto :goto_2

    :sswitch_5
    const-string v12, "s"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v18, 0x4

    goto :goto_2

    :sswitch_6
    const-string v12, "r"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v18, 0x3

    goto :goto_2

    :sswitch_7
    const-string v12, "p"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/16 v18, 0x2

    goto :goto_2

    :sswitch_8
    const-string v12, "o"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    const/16 v18, 0x1

    goto :goto_2

    :sswitch_9
    const-string v12, "a"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    :cond_b
    const/16 v18, 0x0

    :goto_2
    packed-switch v18, :pswitch_data_0

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    goto/16 :goto_6

    :pswitch_0
    invoke-static {v0, v2, v10}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v22

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v0, v2, v10}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v0, v2, v10}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v5

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v2, v1}, Lg/cgf;->t(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    invoke-static {v0, v2, v10}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v23

    goto/16 :goto_1

    :pswitch_5
    new-instance v15, Lg/dlz;

    sget-object v6, Lg/acq;->i:Lg/acq;

    invoke-static {v0, v2, v7, v6, v10}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v15, v9, v6}, Lg/dlz;-><init>(ILjava/util/List;)V

    goto/16 :goto_1

    :goto_3
    :pswitch_6
    invoke-static {v0, v2, v10}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v9

    iget-object v1, v9, Lg/bgf;->z:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lg/flj;

    iget v6, v2, Lg/cgf;->f:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v5

    const/4 v5, 0x0

    move-object/from16 v18, v6

    const/4 v6, 0x0

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v27, v18

    move-object/from16 v26, v19

    invoke-direct/range {v1 .. v7}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/flj;

    iget-object v1, v1, Lg/flj;->p:Ljava/lang/Object;

    if-nez v1, :cond_d

    new-instance v1, Lg/flj;

    iget v4, v2, Lg/cgf;->f:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v1 .. v7}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v2, p1

    move-object v1, v9

    :goto_5
    move-object/from16 v4, v26

    move-object/from16 v5, v27

    goto/16 :goto_1

    :cond_d
    move-object v1, v9

    :goto_6
    move-object/from16 v2, p1

    goto :goto_5

    :pswitch_7
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-static/range {p0 .. p1}, Lg/ckd;->aa(Landroid/util/JsonReader;Lg/cgf;)Lg/eqn;

    move-result-object v14

    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-static/range {p0 .. p1}, Lg/bff;->av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v21

    goto :goto_7

    :pswitch_9
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "k"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :cond_e
    invoke-static/range {p0 .. p1}, Lg/ckd;->be(Landroid/util/JsonReader;Lg/cgf;)Lg/fc;

    move-result-object v13

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_6

    :cond_10
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    if-eqz v11, :cond_11

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    :cond_11
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lg/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v13, Lg/fc;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v8, v8}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    move-object/from16 v17, v13

    goto :goto_a

    :cond_13
    :goto_9
    const/16 v17, 0x0

    :goto_a
    if-eqz v14, :cond_15

    instance-of v0, v14, Lg/fph;

    if-nez v0, :cond_14

    invoke-interface {v14}, Lg/eqn;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v14}, Lg/eqn;->ox()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v8, v8}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    move-object/from16 v18, v14

    goto :goto_c

    :cond_15
    :goto_b
    const/16 v18, 0x0

    :goto_c
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_16

    goto :goto_d

    :cond_16
    move-object/from16 v20, v1

    goto :goto_e

    :cond_17
    :goto_d
    const/16 v20, 0x0

    :goto_e
    if-eqz v15, :cond_19

    invoke-virtual {v15}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Lg/aof;

    iget v1, v0, Lg/aof;->a:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_18

    iget v0, v0, Lg/aof;->b:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    move-object/from16 v19, v15

    :goto_f
    move-object/from16 v4, v26

    goto :goto_11

    :cond_19
    :goto_10
    const/16 v19, 0x0

    goto :goto_f

    :goto_11
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_1a

    goto :goto_13

    :cond_1a
    move-object/from16 v24, v4

    :goto_12
    move-object/from16 v6, v27

    goto :goto_14

    :cond_1b
    :goto_13
    const/16 v24, 0x0

    goto :goto_12

    :goto_14
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v0, v0, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_1c

    goto :goto_15

    :cond_1c
    move-object/from16 v25, v6

    goto :goto_16

    :cond_1d
    :goto_15
    const/16 v25, 0x0

    :goto_16
    new-instance v16, Lg/eld;

    invoke-direct/range {v16 .. v25}, Lg/eld;-><init>(Lg/fc;Lg/eqn;Lg/dlz;Lg/cnc;Lg/dlz;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;)V

    return-object v16

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_7
        0x72 -> :sswitch_6
        0x73 -> :sswitch_5
        0xcaa -> :sswitch_4
        0xe48 -> :sswitch_3
        0xe4e -> :sswitch_2
        0xe58 -> :sswitch_1
        0xe5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static al(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const-string v1, "Unexpected char %#04x at %d in %s value"

    invoke-static {v1, v4}, Lg/erq;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lg/erq;->v(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string p1, ": "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static am(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static ao(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, p0, Lcom/google/android/material/card/MaterialCardView;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lg/dyd;->ao(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static ap(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f04011d

    invoke-static {v0, p0}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, -0x101009e

    filled-new-array {v2}, [I

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/16 v5, 0x1f

    invoke-static {v0, v5}, Lg/afr;->c(II)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x101009c

    filled-new-array {v2}, [I

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/16 v5, 0x14

    invoke-static {v0, v5}, Lg/afr;->c(II)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v4, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public static aq()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ar(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static as(Ljava/util/ArrayList;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/ghr;

    iget-object v0, p0, Lg/ghr;->b:Lg/dnd;

    sget-object v1, Lg/dnd;->ENCODED_METHOD_HANDLE:Lg/dnd;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lg/ghr;->f:Ljava/lang/Object;

    check-cast p0, Lg/dpb;

    invoke-virtual {p0}, Lg/dpb;->e()Lg/ecx;

    move-result-object v0

    sget-object v1, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/dpb;->d()Lg/ful;

    move-result-object p0

    invoke-interface {p0}, Lg/ful;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/invoke/LambdaMetafactory;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lg/ful;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "metafactory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "altMetafactory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static at(Ljava/lang/CharSequence;IIZZ)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-static {p0}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lg/dyd;->z:Ljava/lang/String;

    sput p1, Lg/dyd;->p:I

    :cond_1
    return-void
.end method

.method public static au(Landroid/os/Parcel;I)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lg/dyd;->bm(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static av(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aw(Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ax(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static ay(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lg/dyd;->bm(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static az(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "channel_run_on_wind"

    const v2, 0x1092f

    invoke-static {p0, v2, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static ba(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/csj;

    const-string v1, "Overread allowed size end="

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lg/csj;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static bb(Ljava/util/AbstractList;Ljava/lang/String;I)Lg/faq;
    .locals 10

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/faq;

    invoke-interface {v1}, Lg/faq;->dq()Lg/axb;

    move-result-object v1

    sget-object v3, Lg/abo;->dq:Lg/abo;

    instance-of v1, v1, Lg/abo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x5

    const/4 v1, 0x5

    :goto_1
    const/4 v3, 0x1

    if-lez v1, :cond_5

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/faq;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/faq;

    invoke-interface {v6}, Lg/faq;->dq()Lg/axb;

    move-result-object v6

    sget-object v7, Lg/ekx;->dq:Lg/ekx;

    instance-of v6, v6, Lg/ekx;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/faq;

    invoke-interface {v6}, Lg/faq;->dq()Lg/axb;

    move-result-object v6

    check-cast v6, Lg/ekx;

    invoke-virtual {v6}, Lg/ekx;->e()I

    move-result v6

    if-ne v6, v1, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/faq;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/faq;

    invoke-interface {v7}, Lg/faq;->dq()Lg/axb;

    move-result-object v8

    instance-of v8, v8, Lg/ekx;

    if-nez v8, :cond_2

    invoke-interface {v5}, Lg/faq;->dq()Lg/axb;

    move-result-object v8

    instance-of v8, v8, Lg/ekx;

    if-nez v8, :cond_2

    sget-object v8, Lg/j;->a:[I

    invoke-interface {v6}, Lg/faq;->dq()Lg/axb;

    move-result-object v9

    check-cast v9, Lg/ekx;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v6}, Lg/faq;->dq()Lg/axb;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->p:Lg/ekx;

    const/16 v9, 0x8

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->ox:Lg/ekx;

    invoke-direct {v6, v8, v2}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_2
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->ia:Lg/ekx;

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_3
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->kk:Lg/ekx;

    const/16 v9, 0xb

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_4
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->mn:Lg/ekx;

    invoke-direct {v6, v8, p0}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_5
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->iw:Lg/ekx;

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_6
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->o:Lg/ekx;

    const/16 v9, 0xa

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_7
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->s:Lg/ekx;

    const/16 v9, 0x9

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_8
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->jy:Lg/ekx;

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_9
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->mp:Lg/ekx;

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_a
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->q:Lg/ekx;

    invoke-direct {v6, v8, v3}, Lg/bde;-><init>(Lg/ekx;I)V

    goto :goto_3

    :pswitch_b
    new-instance v6, Lg/dhk;

    sget-object v8, Lg/ekx;->no:Lg/ekx;

    invoke-direct {v6, v8}, Lg/cbt;-><init>(Lg/ekx;)V

    goto :goto_3

    :pswitch_c
    new-instance v6, Lg/bde;

    sget-object v8, Lg/ekx;->ig:Lg/ekx;

    const/4 v9, 0x7

    invoke-direct {v6, v8, v9}, Lg/bde;-><init>(Lg/ekx;I)V

    :goto_3
    iput-object v7, v6, Lg/cbt;->b:Lg/faq;

    iput-object v5, v6, Lg/cbt;->c:Lg/faq;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    move-object v0, v4

    goto/16 :goto_1

    :cond_5
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/faq;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/faq;

    invoke-interface {v0}, Lg/faq;->dq()Lg/axb;

    move-result-object v0

    sget-object v1, Lg/ekx;->d:Lg/ekx;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/faq;

    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/faq;

    invoke-interface {v1}, Lg/faq;->dq()Lg/axb;

    move-result-object v1

    sget-object v2, Lg/ekx;->dq:Lg/ekx;

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/faq;

    new-instance v2, Lg/ewx;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/ewx;->a:Lg/faq;

    iput-object v0, v2, Lg/ewx;->b:Lg/faq;

    iput-object p2, v2, Lg/ewx;->c:Lg/faq;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_7
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/faq;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static bc(Landroid/os/Parcel;II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/csj;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " got "

    const-string v3, " (0x"

    const-string v4, "Expected size "

    invoke-static {p2, p1, v4, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lg/csj;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static bd(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static be(Lg/hed;Lg/yu;ZLjava/util/ArrayList;)Lg/arl;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lg/hed;->am:Lg/cci;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ghr;

    iget-object v3, v3, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v3, Lg/dpb;

    invoke-virtual {v3}, Lg/dpb;->e()Lg/ecx;

    move-result-object v4

    invoke-virtual {v4}, Lg/ecx;->b()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v2, Lg/cci;->ab:Lg/dwg;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ghr;

    iget-object v5, v5, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v5, Lg/fw;

    iget-object v6, v2, Lg/cci;->ak:Lg/ve;

    const-string v7, ""

    invoke-static {v4, v6, v7, v5}, Lg/ayu;->l(Lg/dwg;Lg/ve;Ljava/lang/String;Lg/fw;)Lg/ayu;

    move-result-object v9

    invoke-virtual {v3}, Lg/dpb;->e()Lg/ecx;

    move-result-object v5

    new-instance v8, Lg/arl;

    const/4 v12, 0x0

    sget-object v11, Lg/eqp;->CUSTOM:Lg/eqp;

    move-object/from16 v10, p1

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lg/hdc;-><init>(Lg/ayu;Lg/yu;Lg/eqp;ZZ)V

    iput-object v5, v8, Lg/arl;->_bm:Lg/ecx;

    iget-object v6, v9, Lg/ayu;->g:Lg/cwx;

    invoke-static {v4, v6}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/ghr;

    iget-object v9, v9, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ghr;

    iget-object v10, v10, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v10, Lg/fw;

    invoke-static {v4, v6, v9, v10}, Lg/ayu;->l(Lg/dwg;Lg/ve;Ljava/lang/String;Lg/fw;)Lg/ayu;

    move-result-object v6

    iput-object v6, v8, Lg/arl;->a:Lg/ayu;

    invoke-virtual {v3}, Lg/dpb;->d()Lg/ful;

    move-result-object v3

    invoke-static {v4, v3}, Lg/ayu;->j(Lg/dwg;Lg/ful;)Lg/ayu;

    move-result-object v3

    invoke-static {v5}, Lg/eyt;->aa(Lg/ecx;)Lg/eqp;

    move-result-object v6

    iget-object v9, v3, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sget-object v11, Lg/eqp;->STATIC:Lg/eqp;

    if-eq v6, v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    :cond_1
    new-instance v13, Lg/hdc;

    invoke-direct {v13, v3, v6, v10}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    iget-object v6, v8, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    if-ge v12, v14, :cond_2

    invoke-virtual {v8, v12}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v15

    invoke-virtual {v15}, Lg/gsh;->b()Lg/gsh;

    move-result-object v15

    invoke-virtual {v13, v15}, Lg/eek;->_an(Lg/gsh;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-le v10, v14, :cond_5

    if-eqz v11, :cond_3

    add-int/lit8 v11, v14, -0x1

    goto :goto_2

    :cond_3
    move v11, v14

    :goto_2
    if-ge v14, v10, :cond_5

    if-gez v11, :cond_4

    iget-object v12, v3, Lg/ayu;->d:Lg/ve;

    iget-object v12, v12, Lg/ve;->d:Lg/cwx;

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/cwx;

    move/from16 v16, v12

    move-object v12, v11

    move/from16 v11, v16

    :goto_3
    new-instance v15, Lg/add;

    const-string v7, "v"

    invoke-static {v14, v7}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7, v12}, Lg/add;-><init>(Ljava/lang/String;Lg/cwx;)V

    invoke-virtual {v13, v15}, Lg/eek;->_an(Lg/gsh;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    sget-object v7, Lg/ecx;->INVOKE_CONSTRUCTOR:Lg/ecx;

    if-ne v5, v7, :cond_6

    new-instance v5, Lg/eew;

    iget-object v7, v13, Lg/hdc;->ad:Lg/ayu;

    invoke-direct {v5, v0, v13, v7}, Lg/eew;-><init>(Lg/hed;Lg/hdc;Lg/ayu;)V

    iput-object v5, v8, Lg/arl;->d:Lg/gif;

    goto :goto_4

    :cond_6
    iput-object v13, v8, Lg/arl;->d:Lg/gif;

    :goto_4
    invoke-virtual {v4, v3}, Lg/dwg;->x(Lg/ayu;)Lg/hed;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, v8, Lg/arl;->d:Lg/gif;

    invoke-virtual {v4, v3}, Lg/lh;->m(Lg/eue;)V

    iget-object v4, v3, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v4}, Lg/gqc;->bb()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v3, Lg/hed;->am:Lg/cci;

    invoke-virtual {v4, v2}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {v3, v2}, Lg/lh;->w(Lg/csv;)V

    const/4 v2, 0x1

    iput-boolean v2, v8, Lg/arl;->y:Z

    :cond_7
    iget-boolean v2, v8, Lg/arl;->y:Z

    if-nez v2, :cond_8

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ghr;

    iget-object v1, v1, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v1, Lg/fw;

    invoke-interface {v1}, Lg/fw;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-static {v1, v2}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v8, Lg/arl;->_bn:Z

    :cond_8
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gsh;

    sget-object v3, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    goto :goto_5

    :cond_9
    invoke-interface/range {p1 .. p1}, Lg/yu;->k()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    iget-object v0, v0, Lg/hed;->aw:Lg/cwx;

    sget-object v2, Lg/gsh;->ad:Lg/dba;

    new-instance v2, Lg/gks;

    invoke-direct {v2, v1, v0}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {v8, v2}, Lg/eek;->ax(Lg/gks;)V

    :cond_a
    return-object v8

    :cond_b
    new-instance v0, Lg/gck;

    const-string v1, "Not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bf(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 4

    instance-of v0, p0, Ljava/lang/Double;

    const-string v1, "value"

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bg(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static bh(I)Lg/asd;
    .locals 6

    sget-object v0, Lg/dyd;->m:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    const-class v0, Lg/dyd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dyd;->m:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lg/dyd;->m:Landroid/util/SparseArray;

    new-instance v2, Lg/asd;

    const-string v3, "17"

    const-string v4, "X"

    const/16 v5, 0x25

    invoke-direct {v2, v5, v3, v4}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "16"

    const-string v3, "W"

    const/16 v4, 0x24

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "15"

    const-string v3, "V"

    const/16 v4, 0x23

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "14"

    const-string v3, "U"

    const/16 v4, 0x22

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "13"

    const-string v3, "T"

    const/16 v4, 0x21

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "12L"

    const-string v3, "S"

    const/16 v4, 0x20

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "12"

    const-string v3, "S"

    const/16 v4, 0x1f

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "11"

    const-string v3, "R"

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "10"

    const-string v3, "Q"

    const/16 v4, 0x1d

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "9"

    const-string v3, "Pie"

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "8.1.0"

    const-string v3, "Oreo"

    const/16 v4, 0x1b

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "8.0.0"

    const-string v3, "Oreo"

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "7.1"

    const-string v3, "Nougat"

    const/16 v4, 0x19

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "7.0"

    const-string v3, "Nougat"

    const/16 v4, 0x18

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "6.0"

    const-string v3, "Marshmallow"

    const/16 v4, 0x17

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "5.1"

    const-string v3, "Lollipop MR1"

    const/16 v4, 0x16

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "5.0"

    const-string v3, "Lollipop"

    const/16 v4, 0x15

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.4W"

    const-string v3, "KitKat for watches"

    const/16 v4, 0x14

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.4"

    const-string v3, "KitKat"

    const/16 v4, 0x13

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.3"

    const-string v3, "Jelly Bean MR2"

    const/16 v4, 0x12

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.2"

    const-string v3, "Jelly Bean MR1"

    const/16 v4, 0x11

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.1"

    const-string v3, "Jelly Bean"

    const/16 v4, 0x10

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.0"

    const-string v3, "Ice Cream Sandwich MR1"

    const/16 v4, 0xf

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "4.0"

    const-string v3, "Ice Cream Sandwich"

    const/16 v4, 0xe

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "3.2"

    const-string v3, "Honeycomb MR2"

    const/16 v4, 0xd

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "3.1"

    const-string v3, "Honeycomb MR1"

    const/16 v4, 0xc

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "3.0"

    const-string v3, "Honeycomb"

    const/16 v4, 0xb

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.3"

    const-string v3, "Gingerbread MR1"

    const/16 v4, 0xa

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.3"

    const-string v3, "Gingerbread"

    const/16 v4, 0x9

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.2"

    const-string v3, "Froyo"

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.1"

    const-string v3, "Eclair MR1"

    const/4 v4, 0x7

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.0.1"

    const-string v3, "Eclair"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "2.0"

    const-string v3, "Eclair"

    const/4 v4, 0x5

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "1.6"

    const-string v3, "Donut"

    const/4 v4, 0x4

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "1.5"

    const-string v3, "Cupcake"

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "1.1"

    const-string v3, "Beta"

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lg/asd;

    const-string v2, "1.0"

    const-string v3, "Alpha"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lg/asd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lg/dyd;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/asd;

    return-object p0
.end method

.method public static bi(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bj()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static bk(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result p2

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lg/ern;->k(Landroid/graphics/Rect;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bl(Landroid/os/Parcel;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v1

    int-to-char v2, v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    const/16 v4, 0x4f45

    if-ne v2, v4, :cond_1

    add-int/2addr v1, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lg/csj;

    const-string v2, "Size read is invalid start="

    const-string v4, " end="

    invoke-static {v3, v1, v2, v4}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lg/csj;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Lg/csj;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected object header. Got 0x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lg/csj;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public static bm(Landroid/os/Parcel;II)V
    .locals 5

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/csj;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " got "

    const-string v3, " (0x"

    const-string v4, "Expected size "

    invoke-static {p2, p1, v4, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lg/csj;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static bn(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p0, v3}, Lg/erq;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bo(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static bp(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bq(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static br(Landroid/os/Parcel;I)[B
    .locals 2

    invoke-static {p0, p1}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static bs(Lg/fpa;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/ghr;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lg/ghr;->b:Lg/dnd;

    sget-object v0, Lg/dnd;->ENCODED_ARRAY:Lg/dnd;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lg/ghr;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public abstract bt()J
.end method
