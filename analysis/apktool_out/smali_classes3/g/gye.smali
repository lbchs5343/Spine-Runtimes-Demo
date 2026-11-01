.class public final enum Lg/gye;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DISK:Lg/gye;

.field public static final enum MEMORY:Lg/gye;

.field public static final enum NETWORK:Lg/gye;

.field public static final synthetic a:[Lg/gye;


# instance fields
.field final debugColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg/gye;

    const v1, -0xff0100

    const-string v2, "MEMORY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/gye;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/gye;->MEMORY:Lg/gye;

    new-instance v1, Lg/gye;

    const v2, -0xffff01

    const-string v4, "DISK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/gye;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/gye;->DISK:Lg/gye;

    new-instance v2, Lg/gye;

    const/high16 v4, -0x10000

    const-string v6, "NETWORK"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/gye;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lg/gye;->NETWORK:Lg/gye;

    const/4 v4, 0x3

    new-array v4, v4, [Lg/gye;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lg/gye;->a:[Lg/gye;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/gye;->debugColor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gye;
    .locals 1

    const-class v0, Lg/gye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gye;

    return-object p0
.end method

.method public static values()[Lg/gye;
    .locals 1

    sget-object v0, Lg/gye;->a:[Lg/gye;

    invoke-virtual {v0}, [Lg/gye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gye;

    return-object v0
.end method
