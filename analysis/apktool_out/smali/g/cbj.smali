.class public final enum Lg/cbj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AllowArbitraryCommas:Lg/cbj;

.field public static final enum AllowComment:Lg/cbj;

.field public static final enum AllowISO8601DateFormat:Lg/cbj;

.field public static final enum AllowSingleQuotes:Lg/cbj;

.field public static final enum AllowUnQuotedFieldNames:Lg/cbj;

.field public static final enum AutoCloseSource:Lg/cbj;

.field public static final enum DisableASM:Lg/cbj;

.field public static final enum DisableCircularReferenceDetect:Lg/cbj;

.field public static final enum DisableSpecialKeyDetect:Lg/cbj;

.field public static final enum IgnoreNotMatch:Lg/cbj;

.field public static final enum InitStringFieldAsEmpty:Lg/cbj;

.field public static final enum InternFieldNames:Lg/cbj;

.field public static final enum OrderedField:Lg/cbj;

.field public static final enum SortFeidFastMatch:Lg/cbj;

.field public static final enum SupportArrayToBean:Lg/cbj;

.field public static final enum UseBigDecimal:Lg/cbj;

.field public static final synthetic a:[Lg/cbj;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Lg/cbj;

    const-string v1, "AutoCloseSource"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cbj;->AutoCloseSource:Lg/cbj;

    new-instance v1, Lg/cbj;

    const-string v3, "AllowComment"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cbj;->AllowComment:Lg/cbj;

    new-instance v3, Lg/cbj;

    const-string v5, "AllowUnQuotedFieldNames"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cbj;->AllowUnQuotedFieldNames:Lg/cbj;

    new-instance v5, Lg/cbj;

    const-string v7, "AllowSingleQuotes"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    new-instance v7, Lg/cbj;

    const-string v9, "InternFieldNames"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/cbj;->InternFieldNames:Lg/cbj;

    new-instance v9, Lg/cbj;

    const-string v11, "AllowISO8601DateFormat"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    new-instance v11, Lg/cbj;

    const-string v13, "AllowArbitraryCommas"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    new-instance v13, Lg/cbj;

    const-string v15, "UseBigDecimal"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/cbj;->UseBigDecimal:Lg/cbj;

    new-instance v15, Lg/cbj;

    const/16 v17, 0x7

    const-string v2, "IgnoreNotMatch"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/cbj;->IgnoreNotMatch:Lg/cbj;

    new-instance v2, Lg/cbj;

    const/16 v19, 0x8

    const-string v4, "SortFeidFastMatch"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/cbj;->SortFeidFastMatch:Lg/cbj;

    new-instance v4, Lg/cbj;

    const/16 v21, 0x9

    const-string v6, "DisableASM"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/cbj;->DisableASM:Lg/cbj;

    new-instance v6, Lg/cbj;

    const/16 v23, 0xa

    const-string v8, "DisableCircularReferenceDetect"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/cbj;->DisableCircularReferenceDetect:Lg/cbj;

    new-instance v8, Lg/cbj;

    const/16 v25, 0xb

    const-string v10, "InitStringFieldAsEmpty"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/cbj;->InitStringFieldAsEmpty:Lg/cbj;

    new-instance v10, Lg/cbj;

    const/16 v27, 0xc

    const-string v12, "SupportArrayToBean"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lg/cbj;->SupportArrayToBean:Lg/cbj;

    new-instance v12, Lg/cbj;

    const/16 v29, 0xd

    const-string v14, "OrderedField"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lg/cbj;->OrderedField:Lg/cbj;

    new-instance v14, Lg/cbj;

    const/16 v31, 0xe

    const-string v0, "DisableSpecialKeyDetect"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lg/cbj;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    const/16 v0, 0x10

    new-array v0, v0, [Lg/cbj;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v2, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v1

    sput-object v0, Lg/cbj;->a:[Lg/cbj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lg/cbj;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cbj;
    .locals 1

    const-class v0, Lg/cbj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cbj;

    return-object p0
.end method

.method public static values()[Lg/cbj;
    .locals 1

    sget-object v0, Lg/cbj;->a:[Lg/cbj;

    invoke-virtual {v0}, [Lg/cbj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cbj;

    return-object v0
.end method
