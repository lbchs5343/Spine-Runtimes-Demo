.class public final enum Lg/byo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLUETOOTH:Lg/byo;

.field public static final enum DUMMY:Lg/byo;

.field public static final enum ETHERNET:Lg/byo;

.field public static final enum MOBILE:Lg/byo;

.field public static final enum MOBILE_CBS:Lg/byo;

.field public static final enum MOBILE_DUN:Lg/byo;

.field public static final enum MOBILE_EMERGENCY:Lg/byo;

.field public static final enum MOBILE_FOTA:Lg/byo;

.field public static final enum MOBILE_HIPRI:Lg/byo;

.field public static final enum MOBILE_IA:Lg/byo;

.field public static final enum MOBILE_IMS:Lg/byo;

.field public static final enum MOBILE_MMS:Lg/byo;

.field public static final enum MOBILE_SUPL:Lg/byo;

.field public static final enum NONE:Lg/byo;

.field public static final enum PROXY:Lg/byo;

.field public static final enum VPN:Lg/byo;

.field public static final enum WIFI:Lg/byo;

.field public static final enum WIFI_P2P:Lg/byo;

.field public static final enum WIMAX:Lg/byo;

.field public static final a:Landroid/util/SparseArray;

.field public static final synthetic b:[Lg/byo;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v0, Lg/byo;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/byo;->MOBILE:Lg/byo;

    new-instance v1, Lg/byo;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/byo;->WIFI:Lg/byo;

    new-instance v3, Lg/byo;

    const-string v5, "MOBILE_MMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/byo;->MOBILE_MMS:Lg/byo;

    new-instance v5, Lg/byo;

    const-string v7, "MOBILE_SUPL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/byo;->MOBILE_SUPL:Lg/byo;

    new-instance v7, Lg/byo;

    const-string v9, "MOBILE_DUN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/byo;->MOBILE_DUN:Lg/byo;

    new-instance v9, Lg/byo;

    const-string v11, "MOBILE_HIPRI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/byo;->MOBILE_HIPRI:Lg/byo;

    new-instance v11, Lg/byo;

    const-string v13, "WIMAX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lg/byo;->WIMAX:Lg/byo;

    new-instance v13, Lg/byo;

    const-string v15, "BLUETOOTH"

    const/16 v16, 0x6

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lg/byo;->BLUETOOTH:Lg/byo;

    new-instance v15, Lg/byo;

    const/16 v17, 0x7

    const-string v14, "DUMMY"

    const/16 v18, 0x5

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lg/byo;->DUMMY:Lg/byo;

    new-instance v14, Lg/byo;

    const/16 v19, 0x8

    const-string v12, "ETHERNET"

    const/16 v20, 0x4

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lg/byo;->ETHERNET:Lg/byo;

    new-instance v12, Lg/byo;

    const/16 v21, 0x9

    const-string v10, "MOBILE_FOTA"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lg/byo;->MOBILE_FOTA:Lg/byo;

    new-instance v10, Lg/byo;

    const/16 v23, 0xa

    const-string v8, "MOBILE_IMS"

    const/16 v24, 0x2

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lg/byo;->MOBILE_IMS:Lg/byo;

    new-instance v8, Lg/byo;

    const/16 v25, 0xb

    const-string v6, "MOBILE_CBS"

    const/16 v26, 0x1

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lg/byo;->MOBILE_CBS:Lg/byo;

    new-instance v6, Lg/byo;

    const/16 v27, 0xc

    const-string v4, "WIFI_P2P"

    const/16 v28, 0x0

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lg/byo;->WIFI_P2P:Lg/byo;

    new-instance v4, Lg/byo;

    const/16 v29, 0xd

    const-string v2, "MOBILE_IA"

    move-object/from16 v30, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/byo;->MOBILE_IA:Lg/byo;

    new-instance v2, Lg/byo;

    const/16 v31, 0xe

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v32, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lg/byo;->MOBILE_EMERGENCY:Lg/byo;

    new-instance v6, Lg/byo;

    const/16 v33, 0xf

    const-string v4, "PROXY"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lg/byo;->PROXY:Lg/byo;

    new-instance v4, Lg/byo;

    const/16 v35, 0x10

    const-string v2, "VPN"

    move-object/from16 v36, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/byo;->VPN:Lg/byo;

    new-instance v2, Lg/byo;

    const/16 v37, 0x11

    const-string v6, "NONE"

    move-object/from16 v38, v4

    const/16 v4, 0x12

    move-object/from16 v39, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Lg/byo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lg/byo;->NONE:Lg/byo;

    const/16 v6, 0x13

    new-array v6, v6, [Lg/byo;

    aput-object v0, v6, v28

    aput-object v1, v6, v26

    aput-object v3, v6, v24

    aput-object v5, v6, v22

    aput-object v7, v6, v20

    aput-object v9, v6, v18

    aput-object v11, v6, v16

    aput-object v13, v6, v17

    aput-object v15, v6, v19

    aput-object v14, v6, v21

    aput-object v12, v6, v23

    aput-object v10, v6, v25

    aput-object v39, v6, v27

    aput-object v30, v6, v29

    aput-object v32, v6, v31

    aput-object v34, v6, v33

    aput-object v36, v6, v35

    aput-object v38, v6, v37

    aput-object v2, v6, v4

    sput-object v6, Lg/byo;->b:[Lg/byo;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lg/byo;->a:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {v4, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {v4, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {v4, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    invoke-virtual {v4, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v39

    const/16 v1, 0xc

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v30

    const/16 v1, 0xd

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v32

    const/16 v1, 0xe

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v34

    const/16 v1, 0xf

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v36

    const/16 v1, 0x10

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v38

    const/16 v1, 0x11

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/byo;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/byo;
    .locals 1

    const-class v0, Lg/byo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/byo;

    return-object p0
.end method

.method public static values()[Lg/byo;
    .locals 1

    sget-object v0, Lg/byo;->b:[Lg/byo;

    invoke-virtual {v0}, [Lg/byo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/byo;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lg/byo;->value:I

    return v0
.end method
