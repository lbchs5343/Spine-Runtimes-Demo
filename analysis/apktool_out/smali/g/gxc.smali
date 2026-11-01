.class public final enum Lg/gxc;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/gxc;

.field public static final enum d:Lg/gxc;

.field public static final enum dq:Lg/gxc;

.field public static final enum ox:Lg/gxc;


# instance fields
.field final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/gxc;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/gxc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/gxc;->dq:Lg/gxc;

    new-instance v1, Lg/gxc;

    const-string v3, "GZIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/gxc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/gxc;->d:Lg/gxc;

    new-instance v3, Lg/gxc;

    const-string v5, "DEFLATER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/gxc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/gxc;->ox:Lg/gxc;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/gxc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/gxc;->a:[Lg/gxc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/gxc;->p:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gxc;
    .locals 1

    const-class v0, Lg/gxc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gxc;

    return-object p0
.end method

.method public static values()[Lg/gxc;
    .locals 1

    sget-object v0, Lg/gxc;->a:[Lg/gxc;

    invoke-virtual {v0}, [Lg/gxc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gxc;

    return-object v0
.end method
