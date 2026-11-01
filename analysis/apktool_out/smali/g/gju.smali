.class public final enum Lg/gju;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DECODED_DATA:Lg/gju;

.field public static final enum RES_LINK:Lg/gju;

.field public static final enum RES_TABLE:Lg/gju;

.field public static final enum TEXT:Lg/gju;

.field public static final synthetic a:[Lg/gju;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/gju;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gju;->TEXT:Lg/gju;

    new-instance v1, Lg/gju;

    const-string v3, "DECODED_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gju;->DECODED_DATA:Lg/gju;

    new-instance v3, Lg/gju;

    const-string v5, "RES_LINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gju;->RES_LINK:Lg/gju;

    new-instance v5, Lg/gju;

    const-string v7, "RES_TABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gju;->RES_TABLE:Lg/gju;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/gju;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/gju;->a:[Lg/gju;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gju;
    .locals 1

    const-class v0, Lg/gju;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gju;

    return-object p0
.end method

.method public static values()[Lg/gju;
    .locals 1

    sget-object v0, Lg/gju;->a:[Lg/gju;

    invoke-virtual {v0}, [Lg/gju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gju;

    return-object v0
.end method
