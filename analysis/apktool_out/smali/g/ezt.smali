.class public final enum Lg/ezt;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/ezt;

.field public static final enum d:Lg/ezt;

.field public static final enum dq:Lg/ezt;


# instance fields
.field private final ox:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/ezt;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/ezt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/ezt;->dq:Lg/ezt;

    new-instance v1, Lg/ezt;

    const-string v4, "POLYGON"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lg/ezt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/ezt;->d:Lg/ezt;

    new-array v4, v5, [Lg/ezt;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lg/ezt;->a:[Lg/ezt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/ezt;->ox:I

    return-void
.end method

.method public static b(I)Lg/ezt;
    .locals 5

    invoke-static {}, Lg/ezt;->values()[Lg/ezt;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lg/ezt;->ox:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ezt;
    .locals 1

    const-class v0, Lg/ezt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ezt;

    return-object p0
.end method

.method public static values()[Lg/ezt;
    .locals 1

    sget-object v0, Lg/ezt;->a:[Lg/ezt;

    invoke-virtual {v0}, [Lg/ezt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ezt;

    return-object v0
.end method
