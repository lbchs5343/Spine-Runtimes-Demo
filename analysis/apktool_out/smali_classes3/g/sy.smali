.class public final enum Lg/sy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NO_CACHE:Lg/sy;

.field public static final enum NO_STORE:Lg/sy;

.field public static final enum OFFLINE:Lg/sy;

.field public static final synthetic a:[Lg/sy;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/sy;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/sy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/sy;->NO_CACHE:Lg/sy;

    new-instance v1, Lg/sy;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lg/sy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/sy;->NO_STORE:Lg/sy;

    new-instance v4, Lg/sy;

    const-string v6, "OFFLINE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lg/sy;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/sy;->OFFLINE:Lg/sy;

    const/4 v6, 0x3

    new-array v6, v6, [Lg/sy;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lg/sy;->a:[Lg/sy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/sy;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/sy;
    .locals 1

    const-class v0, Lg/sy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/sy;

    return-object p0
.end method

.method public static values()[Lg/sy;
    .locals 1

    sget-object v0, Lg/sy;->a:[Lg/sy;

    invoke-virtual {v0}, [Lg/sy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/sy;

    return-object v0
.end method
