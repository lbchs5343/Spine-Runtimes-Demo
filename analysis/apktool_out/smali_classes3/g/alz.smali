.class public final enum Lg/alz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NO_CACHE:Lg/alz;

.field public static final enum NO_STORE:Lg/alz;

.field public static final synthetic a:[Lg/alz;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/alz;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/alz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/alz;->NO_CACHE:Lg/alz;

    new-instance v1, Lg/alz;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lg/alz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/alz;->NO_STORE:Lg/alz;

    new-array v4, v5, [Lg/alz;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lg/alz;->a:[Lg/alz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/alz;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/alz;
    .locals 1

    const-class v0, Lg/alz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/alz;

    return-object p0
.end method

.method public static values()[Lg/alz;
    .locals 1

    sget-object v0, Lg/alz;->a:[Lg/alz;

    invoke-virtual {v0}, [Lg/alz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/alz;

    return-object v0
.end method
