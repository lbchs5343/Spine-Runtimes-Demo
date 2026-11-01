.class public final enum Lg/gar;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BeanToArray:Lg/gar;

.field public static final enum BrowserCompatible:Lg/gar;

.field public static final enum DisableCheckSpecialChar:Lg/gar;

.field public static final enum DisableCircularReferenceDetect:Lg/gar;

.field public static final EMPTY:[Lg/gar;

.field public static final enum NotWriteDefaultValue:Lg/gar;

.field public static final enum NotWriteRootClassName:Lg/gar;

.field public static final enum PrettyFormat:Lg/gar;

.field public static final enum QuoteFieldNames:Lg/gar;

.field public static final enum SkipTransientField:Lg/gar;

.field public static final enum SortField:Lg/gar;

.field public static final enum UseISO8601DateFormat:Lg/gar;

.field public static final enum UseSingleQuotes:Lg/gar;

.field public static final enum WriteClassName:Lg/gar;

.field public static final enum WriteDateUseDateFormat:Lg/gar;

.field public static final enum WriteEnumUsingToString:Lg/gar;

.field public static final enum WriteMapNullValue:Lg/gar;

.field public static final enum WriteNonStringKeyAsString:Lg/gar;

.field public static final enum WriteNullBooleanAsFalse:Lg/gar;

.field public static final enum WriteNullListAsEmpty:Lg/gar;

.field public static final enum WriteNullNumberAsZero:Lg/gar;

.field public static final enum WriteNullStringAsEmpty:Lg/gar;

.field public static final enum WriteSlashAsSpecial:Lg/gar;

.field public static final enum WriteTabAsSpecial:Lg/gar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final synthetic a:[Lg/gar;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 47

    new-instance v0, Lg/gar;

    const-string v1, "QuoteFieldNames"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gar;->QuoteFieldNames:Lg/gar;

    new-instance v1, Lg/gar;

    const-string v3, "UseSingleQuotes"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gar;->UseSingleQuotes:Lg/gar;

    new-instance v3, Lg/gar;

    const-string v5, "WriteMapNullValue"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gar;->WriteMapNullValue:Lg/gar;

    new-instance v5, Lg/gar;

    const-string v7, "WriteEnumUsingToString"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gar;->WriteEnumUsingToString:Lg/gar;

    new-instance v7, Lg/gar;

    const-string v9, "UseISO8601DateFormat"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/gar;->UseISO8601DateFormat:Lg/gar;

    new-instance v9, Lg/gar;

    const-string v11, "WriteNullListAsEmpty"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    new-instance v11, Lg/gar;

    const-string v13, "WriteNullStringAsEmpty"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/gar;->WriteNullStringAsEmpty:Lg/gar;

    new-instance v13, Lg/gar;

    const-string v15, "WriteNullNumberAsZero"

    const/16 v16, 0x1

    const/4 v4, 0x7

    invoke-direct {v13, v15, v4}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/gar;->WriteNullNumberAsZero:Lg/gar;

    new-instance v15, Lg/gar;

    const/16 v17, 0x7

    const-string v4, "WriteNullBooleanAsFalse"

    const/16 v18, 0x2

    const/16 v6, 0x8

    invoke-direct {v15, v4, v6}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/gar;->WriteNullBooleanAsFalse:Lg/gar;

    new-instance v4, Lg/gar;

    const/16 v19, 0x8

    const-string v6, "SkipTransientField"

    const/16 v20, 0x3

    const/16 v8, 0x9

    invoke-direct {v4, v6, v8}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/gar;->SkipTransientField:Lg/gar;

    new-instance v6, Lg/gar;

    const/16 v21, 0x9

    const-string v8, "SortField"

    const/16 v22, 0x4

    const/16 v10, 0xa

    invoke-direct {v6, v8, v10}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/gar;->SortField:Lg/gar;

    new-instance v8, Lg/gar;

    const/16 v23, 0xa

    const-string v10, "WriteTabAsSpecial"

    const/16 v24, 0x5

    const/16 v12, 0xb

    invoke-direct {v8, v10, v12}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/gar;->WriteTabAsSpecial:Lg/gar;

    new-instance v10, Lg/gar;

    const/16 v25, 0xb

    const-string v12, "PrettyFormat"

    const/16 v26, 0x6

    const/16 v14, 0xc

    invoke-direct {v10, v12, v14}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lg/gar;->PrettyFormat:Lg/gar;

    new-instance v12, Lg/gar;

    const/16 v27, 0xc

    const-string v14, "WriteClassName"

    const/16 v28, 0x0

    const/16 v2, 0xd

    invoke-direct {v12, v14, v2}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lg/gar;->WriteClassName:Lg/gar;

    new-instance v14, Lg/gar;

    const/16 v29, 0xd

    const-string v2, "DisableCircularReferenceDetect"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v14, v2, v0}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    new-instance v2, Lg/gar;

    const/16 v31, 0xe

    const-string v0, "WriteSlashAsSpecial"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v2, v0, v1}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/gar;->WriteSlashAsSpecial:Lg/gar;

    new-instance v0, Lg/gar;

    const/16 v33, 0xf

    const-string v1, "BrowserCompatible"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gar;->BrowserCompatible:Lg/gar;

    new-instance v1, Lg/gar;

    const/16 v35, 0x10

    const-string v2, "WriteDateUseDateFormat"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gar;->WriteDateUseDateFormat:Lg/gar;

    new-instance v2, Lg/gar;

    const/16 v37, 0x11

    const-string v0, "NotWriteRootClassName"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/gar;->NotWriteRootClassName:Lg/gar;

    new-instance v0, Lg/gar;

    const/16 v39, 0x12

    const-string v1, "DisableCheckSpecialChar"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gar;->DisableCheckSpecialChar:Lg/gar;

    new-instance v1, Lg/gar;

    const/16 v41, 0x13

    const-string v2, "BeanToArray"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gar;->BeanToArray:Lg/gar;

    new-instance v2, Lg/gar;

    const/16 v43, 0x14

    const-string v0, "WriteNonStringKeyAsString"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/gar;->WriteNonStringKeyAsString:Lg/gar;

    new-instance v0, Lg/gar;

    const/16 v45, 0x15

    const-string v1, "NotWriteDefaultValue"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lg/gar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gar;->NotWriteDefaultValue:Lg/gar;

    const/16 v1, 0x17

    new-array v1, v1, [Lg/gar;

    aput-object v30, v1, v28

    aput-object v32, v1, v16

    aput-object v3, v1, v18

    aput-object v5, v1, v20

    aput-object v7, v1, v22

    aput-object v9, v1, v24

    aput-object v11, v1, v26

    aput-object v13, v1, v17

    aput-object v15, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v23

    aput-object v8, v1, v25

    aput-object v10, v1, v27

    aput-object v12, v1, v29

    aput-object v14, v1, v31

    aput-object v34, v1, v33

    aput-object v36, v1, v35

    aput-object v38, v1, v37

    aput-object v40, v1, v39

    aput-object v42, v1, v41

    aput-object v44, v1, v43

    aput-object v46, v1, v45

    aput-object v0, v1, v2

    sput-object v1, Lg/gar;->a:[Lg/gar;

    const/4 v0, 0x0

    new-array v0, v0, [Lg/gar;

    sput-object v0, Lg/gar;->EMPTY:[Lg/gar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lg/gar;->mask:I

    return-void
.end method

.method public static b([Lg/gar;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    iget v3, v3, Lg/gar;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gar;
    .locals 1

    const-class v0, Lg/gar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gar;

    return-object p0
.end method

.method public static values()[Lg/gar;
    .locals 1

    sget-object v0, Lg/gar;->a:[Lg/gar;

    invoke-virtual {v0}, [Lg/gar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gar;

    return-object v0
.end method
