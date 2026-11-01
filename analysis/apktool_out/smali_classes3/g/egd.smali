.class public final enum Lg/egd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEFAULT:Lg/egd;

.field public static final enum FAST_IF_RADIO_AWAKE:Lg/egd;

.field public static final enum NEVER:Lg/egd;

.field public static final enum UNMETERED_ONLY:Lg/egd;

.field public static final enum UNMETERED_OR_DAILY:Lg/egd;

.field public static final enum UNRECOGNIZED:Lg/egd;

.field public static final synthetic a:[Lg/egd;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg/egd;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/egd;->DEFAULT:Lg/egd;

    new-instance v1, Lg/egd;

    const-string v3, "UNMETERED_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/egd;->UNMETERED_ONLY:Lg/egd;

    new-instance v3, Lg/egd;

    const-string v5, "UNMETERED_OR_DAILY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/egd;->UNMETERED_OR_DAILY:Lg/egd;

    new-instance v5, Lg/egd;

    const-string v7, "FAST_IF_RADIO_AWAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/egd;->FAST_IF_RADIO_AWAKE:Lg/egd;

    new-instance v7, Lg/egd;

    const-string v9, "NEVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/egd;->NEVER:Lg/egd;

    new-instance v9, Lg/egd;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lg/egd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/egd;->UNRECOGNIZED:Lg/egd;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/egd;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/egd;->a:[Lg/egd;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v11, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/egd;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/egd;
    .locals 1

    const-class v0, Lg/egd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/egd;

    return-object p0
.end method

.method public static values()[Lg/egd;
    .locals 1

    sget-object v0, Lg/egd;->a:[Lg/egd;

    invoke-virtual {v0}, [Lg/egd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/egd;

    return-object v0
.end method
