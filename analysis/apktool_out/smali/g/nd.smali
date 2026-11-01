.class public final enum Lg/nd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum SECURE_XML_PARSER:Lg/nd;

.field public static final enum SECURE_ZIP_READER:Lg/nd;

.field public static final enum VERIFY_APP_PACKAGE:Lg/nd;

.field public static final synthetic a:[Lg/nd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/nd;

    const-string v1, "VERIFY_APP_PACKAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/nd;->VERIFY_APP_PACKAGE:Lg/nd;

    new-instance v1, Lg/nd;

    const-string v3, "SECURE_XML_PARSER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/nd;->SECURE_XML_PARSER:Lg/nd;

    new-instance v3, Lg/nd;

    const-string v5, "SECURE_ZIP_READER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/nd;->SECURE_ZIP_READER:Lg/nd;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/nd;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/nd;->a:[Lg/nd;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/nd;
    .locals 1

    const-class v0, Lg/nd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/nd;

    return-object p0
.end method

.method public static values()[Lg/nd;
    .locals 1

    sget-object v0, Lg/nd;->a:[Lg/nd;

    invoke-virtual {v0}, [Lg/nd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/nd;

    return-object v0
.end method
