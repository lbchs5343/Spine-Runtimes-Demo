.class public final enum Lg/gwo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CACHE_FULL:Lg/gwo;

.field public static final enum INVALID_PAYLOD:Lg/gwo;

.field public static final enum MAX_RETRIES_REACHED:Lg/gwo;

.field public static final enum MESSAGE_TOO_OLD:Lg/gwo;

.field public static final enum PAYLOAD_TOO_BIG:Lg/gwo;

.field public static final enum REASON_UNKNOWN:Lg/gwo;

.field public static final enum SERVER_ERROR:Lg/gwo;

.field public static final synthetic a:[Lg/gwo;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg/gwo;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/gwo;->REASON_UNKNOWN:Lg/gwo;

    new-instance v1, Lg/gwo;

    const-string v3, "MESSAGE_TOO_OLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/gwo;->MESSAGE_TOO_OLD:Lg/gwo;

    new-instance v3, Lg/gwo;

    const-string v5, "CACHE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/gwo;->CACHE_FULL:Lg/gwo;

    new-instance v5, Lg/gwo;

    const-string v7, "PAYLOAD_TOO_BIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/gwo;->PAYLOAD_TOO_BIG:Lg/gwo;

    new-instance v7, Lg/gwo;

    const-string v9, "MAX_RETRIES_REACHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/gwo;->MAX_RETRIES_REACHED:Lg/gwo;

    new-instance v9, Lg/gwo;

    const-string v11, "INVALID_PAYLOD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/gwo;->INVALID_PAYLOD:Lg/gwo;

    new-instance v11, Lg/gwo;

    const-string v13, "SERVER_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lg/gwo;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lg/gwo;->SERVER_ERROR:Lg/gwo;

    const/4 v13, 0x7

    new-array v13, v13, [Lg/gwo;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lg/gwo;->a:[Lg/gwo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/gwo;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gwo;
    .locals 1

    const-class v0, Lg/gwo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gwo;

    return-object p0
.end method

.method public static values()[Lg/gwo;
    .locals 1

    sget-object v0, Lg/gwo;->a:[Lg/gwo;

    invoke-virtual {v0}, [Lg/gwo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gwo;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg/gwo;->number_:I

    return v0
.end method
