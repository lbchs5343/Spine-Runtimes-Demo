.class public final enum Lg/fha;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLASS:Lg/fha;

.field public static final enum DOUBLE:Lg/fha;

.field public static final enum DYNAMIC:Lg/fha;

.field public static final enum FIELD_REF:Lg/fha;

.field public static final enum FLOAT:Lg/fha;

.field public static final enum INTEGER:Lg/fha;

.field public static final enum INTERFACE_METHOD_REF:Lg/fha;

.field public static final enum INVOKE_DYNAMIC:Lg/fha;

.field public static final enum LONG:Lg/fha;

.field public static final enum METHOD_HANDLE:Lg/fha;

.field public static final enum METHOD_REF:Lg/fha;

.field public static final enum METHOD_TYPE:Lg/fha;

.field public static final enum MODULE:Lg/fha;

.field public static final enum NAME_AND_TYPE:Lg/fha;

.field public static final enum PACKAGE:Lg/fha;

.field public static final enum STRING:Lg/fha;

.field public static final enum UTF8:Lg/fha;

.field public static final a:[Lg/fha;

.field public static final synthetic b:[Lg/fha;


# instance fields
.field private final dataSize:I

.field private final tag:B


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, Lg/fha;

    const/4 v1, -0x1

    const-string v2, "UTF8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lg/fha;->UTF8:Lg/fha;

    new-instance v1, Lg/fha;

    const-string v2, "INTEGER"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v1, v2, v4, v5, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lg/fha;->INTEGER:Lg/fha;

    new-instance v2, Lg/fha;

    const-string v7, "FLOAT"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v6, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lg/fha;->FLOAT:Lg/fha;

    new-instance v7, Lg/fha;

    const-string v9, "LONG"

    const/4 v10, 0x5

    const/16 v11, 0x8

    invoke-direct {v7, v9, v5, v10, v11}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lg/fha;->LONG:Lg/fha;

    new-instance v9, Lg/fha;

    const-string v12, "DOUBLE"

    const/4 v13, 0x6

    invoke-direct {v9, v12, v6, v13, v11}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lg/fha;->DOUBLE:Lg/fha;

    new-instance v12, Lg/fha;

    const-string v14, "CLASS"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v10, v15, v8}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lg/fha;->CLASS:Lg/fha;

    new-instance v14, Lg/fha;

    const/16 v16, 0x1

    const-string v4, "STRING"

    invoke-direct {v14, v4, v13, v11, v8}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lg/fha;->STRING:Lg/fha;

    new-instance v4, Lg/fha;

    const/16 v17, 0x5

    const-string v10, "FIELD_REF"

    const/16 v18, 0x0

    const/16 v3, 0x9

    invoke-direct {v4, v10, v15, v3, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lg/fha;->FIELD_REF:Lg/fha;

    new-instance v10, Lg/fha;

    const/16 v19, 0x7

    const-string v15, "METHOD_REF"

    const/16 v20, 0x6

    const/16 v13, 0xa

    invoke-direct {v10, v15, v11, v13, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lg/fha;->METHOD_REF:Lg/fha;

    new-instance v15, Lg/fha;

    const/16 v21, 0x8

    const-string v11, "INTERFACE_METHOD_REF"

    const/16 v8, 0xb

    invoke-direct {v15, v11, v3, v8, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lg/fha;->INTERFACE_METHOD_REF:Lg/fha;

    new-instance v11, Lg/fha;

    const/16 v23, 0x9

    const-string v3, "NAME_AND_TYPE"

    const/16 v5, 0xc

    invoke-direct {v11, v3, v13, v5, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lg/fha;->NAME_AND_TYPE:Lg/fha;

    new-instance v3, Lg/fha;

    const/16 v25, 0xa

    const-string v13, "METHOD_HANDLE"

    const/16 v6, 0xf

    const/4 v5, 0x3

    invoke-direct {v3, v13, v8, v6, v5}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lg/fha;->METHOD_HANDLE:Lg/fha;

    new-instance v5, Lg/fha;

    const-string v13, "METHOD_TYPE"

    const/16 v28, 0xb

    const/16 v8, 0x10

    move-object/from16 v30, v0

    const/16 v0, 0xc

    const/4 v6, 0x2

    invoke-direct {v5, v13, v0, v8, v6}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lg/fha;->METHOD_TYPE:Lg/fha;

    new-instance v0, Lg/fha;

    const-string v6, "DYNAMIC"

    const/16 v13, 0xd

    const/16 v8, 0x11

    move-object/from16 v32, v1

    const/4 v1, 0x4

    invoke-direct {v0, v6, v13, v8, v1}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lg/fha;->DYNAMIC:Lg/fha;

    new-instance v6, Lg/fha;

    const/16 v33, 0xd

    const/16 v13, 0x12

    const-string v8, "INVOKE_DYNAMIC"

    move-object/from16 v34, v0

    const/16 v0, 0xe

    invoke-direct {v6, v8, v0, v13, v1}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lg/fha;->INVOKE_DYNAMIC:Lg/fha;

    new-instance v1, Lg/fha;

    const-string v8, "MODULE"

    const/16 v13, 0x13

    move-object/from16 v22, v2

    const/4 v0, 0x2

    const/16 v2, 0xf

    const/16 v35, 0xe

    invoke-direct {v1, v8, v2, v13, v0}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lg/fha;->MODULE:Lg/fha;

    new-instance v2, Lg/fha;

    const-string v8, "PACKAGE"

    const/16 v13, 0x14

    move-object/from16 v36, v1

    const/16 v1, 0x10

    invoke-direct {v2, v8, v1, v13, v0}, Lg/fha;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lg/fha;->PACKAGE:Lg/fha;

    const/16 v1, 0x11

    new-array v1, v1, [Lg/fha;

    aput-object v30, v1, v18

    aput-object v32, v1, v16

    aput-object v22, v1, v0

    const/16 v24, 0x3

    aput-object v7, v1, v24

    const/16 v26, 0x4

    aput-object v9, v1, v26

    aput-object v12, v1, v17

    aput-object v14, v1, v20

    aput-object v4, v1, v19

    aput-object v10, v1, v21

    aput-object v15, v1, v23

    aput-object v11, v1, v25

    aput-object v3, v1, v28

    const/16 v27, 0xc

    aput-object v5, v1, v27

    aput-object v34, v1, v33

    aput-object v6, v1, v35

    const/16 v29, 0xf

    aput-object v36, v1, v29

    const/16 v31, 0x10

    aput-object v2, v1, v31

    sput-object v1, Lg/fha;->b:[Lg/fha;

    invoke-static {}, Lg/fha;->values()[Lg/fha;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$a;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/dbm;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lg/dbm;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->max()Lj$/util/OptionalInt;

    move-result-object v1

    new-instance v2, Lg/cqk;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/cqk;-><init>(I)V

    invoke-virtual {v1, v2}, Lj$/util/OptionalInt;->orElseThrow(Ljava/util/function/Supplier;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lg/fha;

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-byte v5, v4, Lg/fha;->tag:B

    aput-object v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lg/fha;->a:[Lg/fha;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lg/fha;->tag:B

    iput p4, p0, Lg/fha;->dataSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fha;
    .locals 1

    const-class v0, Lg/fha;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fha;

    return-object p0
.end method

.method public static values()[Lg/fha;
    .locals 1

    sget-object v0, Lg/fha;->b:[Lg/fha;

    invoke-virtual {v0}, [Lg/fha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fha;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lg/fha;->dataSize:I

    return v0
.end method

.method public final d()B
    .locals 1

    iget-byte v0, p0, Lg/fha;->tag:B

    return v0
.end method
