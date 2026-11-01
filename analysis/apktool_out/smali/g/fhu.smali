.class public final enum Lg/fhu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AGGREGATION_COUNT:Lg/fhu;

.field public static final enum CLASSES:Lg/fhu;

.field public static final enum DEX_FILES:Lg/fhu;

.field public static final enum EXTRA_DESCRIPTORS:Lg/fhu;

.field public static final enum METHODS:Lg/fhu;

.field public static final synthetic a:[Lg/fhu;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/fhu;

    const-wide/16 v1, 0x0

    const-string v3, "DEX_FILES"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lg/fhu;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lg/fhu;->DEX_FILES:Lg/fhu;

    new-instance v1, Lg/fhu;

    const-wide/16 v2, 0x1

    const-string v5, "EXTRA_DESCRIPTORS"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lg/fhu;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lg/fhu;->EXTRA_DESCRIPTORS:Lg/fhu;

    new-instance v2, Lg/fhu;

    const-wide/16 v7, 0x2

    const-string v3, "CLASSES"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v7, v8}, Lg/fhu;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lg/fhu;->CLASSES:Lg/fhu;

    new-instance v3, Lg/fhu;

    const-wide/16 v7, 0x3

    const-string v9, "METHODS"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v7, v8}, Lg/fhu;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lg/fhu;->METHODS:Lg/fhu;

    new-instance v7, Lg/fhu;

    const-wide/16 v8, 0x4

    const-string v11, "AGGREGATION_COUNT"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v8, v9}, Lg/fhu;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lg/fhu;->AGGREGATION_COUNT:Lg/fhu;

    const/4 v8, 0x5

    new-array v8, v8, [Lg/fhu;

    aput-object v0, v8, v4

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    aput-object v3, v8, v10

    aput-object v7, v8, v12

    sput-object v8, Lg/fhu;->a:[Lg/fhu;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lg/fhu;->mValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fhu;
    .locals 1

    const-class v0, Lg/fhu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fhu;

    return-object p0
.end method

.method public static values()[Lg/fhu;
    .locals 1

    sget-object v0, Lg/fhu;->a:[Lg/fhu;

    invoke-virtual {v0}, [Lg/fhu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fhu;

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lg/fhu;->mValue:J

    return-wide v0
.end method
