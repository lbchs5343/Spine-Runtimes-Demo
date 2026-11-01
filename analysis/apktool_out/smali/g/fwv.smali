.class public final enum Lg/fwv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum APPEND:Lg/fwv;

.field public static final enum CHOP:Lg/fwv;

.field public static final enum FULL:Lg/fwv;

.field public static final enum SAME_FRAME:Lg/fwv;

.field public static final enum SAME_FRAME_EXTENDED:Lg/fwv;

.field public static final enum SAME_LOCALS_1_STACK:Lg/fwv;

.field public static final enum SAME_LOCALS_1_STACK_EXTENDED:Lg/fwv;

.field public static final a:[Lg/fwv;

.field public static final synthetic b:[Lg/fwv;


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lg/fwv;

    const/16 v1, 0x3f

    const-string v2, "SAME_FRAME"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lg/fwv;->SAME_FRAME:Lg/fwv;

    new-instance v1, Lg/fwv;

    const/16 v2, 0x40

    const/16 v4, 0x7f

    const-string v5, "SAME_LOCALS_1_STACK"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v4}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lg/fwv;->SAME_LOCALS_1_STACK:Lg/fwv;

    new-instance v2, Lg/fwv;

    const/16 v4, 0xf7

    const-string v5, "SAME_LOCALS_1_STACK_EXTENDED"

    const/4 v7, 0x2

    invoke-direct {v2, v5, v7, v4, v4}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lg/fwv;->SAME_LOCALS_1_STACK_EXTENDED:Lg/fwv;

    new-instance v4, Lg/fwv;

    const/16 v5, 0xf8

    const/16 v8, 0xfa

    const-string v9, "CHOP"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v5, v8}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lg/fwv;->CHOP:Lg/fwv;

    new-instance v5, Lg/fwv;

    const/16 v8, 0xfb

    const-string v9, "SAME_FRAME_EXTENDED"

    const/4 v11, 0x4

    invoke-direct {v5, v9, v11, v8, v8}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lg/fwv;->SAME_FRAME_EXTENDED:Lg/fwv;

    new-instance v8, Lg/fwv;

    const/16 v9, 0xfc

    const/16 v12, 0xfe

    const-string v13, "APPEND"

    const/4 v14, 0x5

    invoke-direct {v8, v13, v14, v9, v12}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lg/fwv;->APPEND:Lg/fwv;

    new-instance v9, Lg/fwv;

    const/16 v12, 0xff

    const-string v13, "FULL"

    const/4 v15, 0x6

    invoke-direct {v9, v13, v15, v12, v12}, Lg/fwv;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lg/fwv;->FULL:Lg/fwv;

    const/4 v12, 0x7

    new-array v12, v12, [Lg/fwv;

    aput-object v0, v12, v3

    aput-object v1, v12, v6

    aput-object v2, v12, v7

    aput-object v4, v12, v10

    aput-object v5, v12, v11

    aput-object v8, v12, v14

    aput-object v9, v12, v15

    sput-object v12, Lg/fwv;->b:[Lg/fwv;

    const/16 v0, 0x100

    new-array v0, v0, [Lg/fwv;

    invoke-static {}, Lg/fwv;->values()[Lg/fwv;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lg/fwv;->start:I

    :goto_1
    iget v6, v4, Lg/fwv;->end:I

    if-gt v5, v6, :cond_0

    aput-object v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v0, Lg/fwv;->a:[Lg/fwv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/fwv;->start:I

    iput p4, p0, Lg/fwv;->end:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fwv;
    .locals 1

    const-class v0, Lg/fwv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fwv;

    return-object p0
.end method

.method public static values()[Lg/fwv;
    .locals 1

    sget-object v0, Lg/fwv;->b:[Lg/fwv;

    invoke-virtual {v0}, [Lg/fwv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fwv;

    return-object v0
.end method
